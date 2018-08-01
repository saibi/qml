#include "dialog.h"
#include "ui_dialog.h"

Dialog::Dialog(QWidget *parent) :
	QDialog(parent),
	ui(new Ui::Dialog)
{
	ui->setupUi(this);

	m_view.setSource(QUrl("qrc:///main.qml"));
	m_view.setResizeMode(QQuickView::SizeRootObjectToView);
	m_view.setFlags(Qt::FramelessWindowHint);

}

Dialog::~Dialog()
{
	delete ui;
}

void Dialog::on_pushButton_exit_clicked()
{
	qDebug("[UI] [Dialog::on_pushButton_exit_clicked]");

	QApplication::quit();
}

void Dialog::on_pushButton_view_clicked()
{
	qDebug("[UI] [Dialog::on_pushButton_exit_clicked]");
	if ( m_view.isVisible() )
		m_view.hide();
	else
	{
		m_view.setPosition( mapToGlobal(QPoint(50, 50)));
		m_view.show();
	}
}
