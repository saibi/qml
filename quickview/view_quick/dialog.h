#ifndef DIALOG_H
#define DIALOG_H

#include <QDialog>
#include <QQuickView>

namespace Ui {
class Dialog;
}

class Dialog : public QDialog
{
	Q_OBJECT

public:
	explicit Dialog(QWidget *parent = 0);
	~Dialog();

private slots:
	void on_pushButton_exit_clicked();

	void on_pushButton_view_clicked();

private:
	Ui::Dialog *ui;

	QQuickView m_view;
};

#endif // DIALOG_H
