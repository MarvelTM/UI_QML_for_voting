#ifndef MYQWEBENGINEPAGE_H
#define MYQWEBENGINEPAGE_H

#include <QWebEnginePage>
#include <QQmlEngine>
#include <QJSEngine>

#include <QWebEngineView>

class MyQWebEnginePage : public QWebEnginePage {

public:
	MyQWebEnginePage();
	bool acceptNavigationRequest(const QUrl& url, QWebEnginePage::NavigationType type, bool);
};

class MyQWebEngineView : public QWebEngineView {
	Q_OBJECT
public:
	MyQWebEngineView(QWidget* parent = Q_NULLPTR);
	//static QObject* singletonProvider(QQmlEngine* engine, QJSEngine* scriptEngine);
	//static MyQWebEngineView* instance();
};

#endif // MYQWEBENGINEPAGE_H
