#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qqml.h>
#include "myellipseitem.h"
#include "mytriangleitem.h"

int main(int argc, char *argv[])
{
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

	QGuiApplication app(argc, argv);

	qmlRegisterType<MyEllipseItem>("MyShapes", 1, 0, "MyEllepse");
	qmlRegisterType<MyTriangleItem>("MyShapes", 1, 0, "MyTriangle");

	QQmlApplicationEngine engine;
	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
	if (engine.rootObjects().isEmpty())
		return -1;

	return app.exec();
}
