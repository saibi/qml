#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTime>

int main(int argc, char *argv[])
{
	QTime t;
	t.start();

	qDebug("DBG before qcoreapplication %d", t.elapsed());

	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

	qDebug("DBG before qguiapplication %d", t.elapsed());

	QGuiApplication app(argc, argv);

	qDebug("DBG before qmlapplicationengine %d", t.elapsed());
	QQmlApplicationEngine engine;
	qDebug("DBG before engine.load %d", t.elapsed());
	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
	qDebug("DBG after engine.load %d", t.elapsed());

	if (engine.rootObjects().isEmpty())
		return -1;

	qDebug("DBG before app.exec %d", t.elapsed());

	return app.exec();
}
