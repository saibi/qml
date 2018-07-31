#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qqml.h>
#include "mytimer.h"
#include "intervalsettings.h"

int main(int argc, char *argv[])
{
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

	QGuiApplication app(argc, argv);

	qmlRegisterType<MyTimer>("MyComponents", 1, 0, "MyTimer");
	qmlRegisterType<IntervalSettings>("MyComponents", 1, 0, "IntervalSettings");

	QQmlApplicationEngine engine;
	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
	if (engine.rootObjects().isEmpty())
		return -1;

	return app.exec();
}
