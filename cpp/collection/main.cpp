#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "chartitem.h"
#include "baritem.h"

int main(int argc, char *argv[])
{
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

	QGuiApplication app(argc, argv);

	qmlRegisterType<ChartItem>("MyShapes", 1, 0, "Chart");
	qmlRegisterType<BarItem>("MyShapes", 1, 0, "Bar");

	QQmlApplicationEngine engine;
	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
	if (engine.rootObjects().isEmpty())
		return -1;

	return app.exec();
}
