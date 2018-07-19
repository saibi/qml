#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTime>

int main(int argc, char *argv[])
{
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

	QGuiApplication app(argc, argv);

	QTime t;
	t.start();

	qDebug("DBG before qml engine %d", t.elapsed());
	QQmlApplicationEngine engine;
	qDebug("DBG before load %d", t.elapsed());
	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
	qDebug("DBG after load %d", t.elapsed());

	if (engine.rootObjects().isEmpty())
		return -1;

	qDebug("DBG before app.exec %d", t.elapsed());

	return app.exec();
}
