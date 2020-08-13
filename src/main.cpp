#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtWebEngine>

#include "mouseeventspy.h"
#include "myqwebenginepage.h"

int main(int argc, char* argv[])
{
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

	QGuiApplication app(argc, argv);
	QtWebEngine::initialize();

	int id         = QFontDatabase::addApplicationFont(":/Roboto/Roboto-Bold.ttf");
	QString family = QFontDatabase::applicationFontFamilies(id).at(0);
    QFont monospace(family);

    QQmlApplicationEngine engine;

    qmlRegisterSingletonType<MouseEventSpy>("MouseEventSpy", 1, 0, "MouseEventSpy", MouseEventSpy::singletonProvider);
    qmlRegisterType<MyQWebEngineView>("MyQWebEngineView", 1, 0, "MyQWebEngineView");

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(
        &engine, &QQmlApplicationEngine::objectCreated, &app,
        [url](QObject* obj, const QUrl& objUrl) {
            if (!obj && url == objUrl) QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
