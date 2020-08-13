#include "myqwebenginepage.h"

MyQWebEnginePage::MyQWebEnginePage()
{
}

bool MyQWebEnginePage::acceptNavigationRequest(const QUrl& url, QWebEnginePage::NavigationType type, bool)
{
	if (type == QWebEnginePage::NavigationTypeLinkClicked) {
		// retrieve the url here
		return false;
	}
	return true;
}

//MyQWebEngineView* MyQWebEngineView::instance()
//{
//	static MyQWebEngineView* inst;

//	if (inst == nullptr) {
//		inst = new MyQWebEngineView();
//		inst->setPage(new MyQWebEnginePage);
//	}

//	return inst;
//}

//QObject* MyQWebEngineView::singletonProvider(QQmlEngine* engine, QJSEngine* scriptEngine)
//{
//	return MyQWebEngineView::instance();
//}

MyQWebEngineView::MyQWebEngineView(QWidget* parent)
    : QWebEngineView(parent)
{
}
