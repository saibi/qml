#include "widget.h"
#include <QApplication>

#include "customwidget.h"

int main(int argc, char *argv[])
{
//	QApplication a(argc, argv);
//	Widget w;
//	w.show();
//	return a.exec();

	QApplication app(argc, argv);

	QScopedPointer<QWidget> widget(new CustomWidget());
	widget->resize(240, 120);
	widget->show();
	return app.exec();
}
