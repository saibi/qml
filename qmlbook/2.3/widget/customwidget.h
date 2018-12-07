#ifndef CUSTOMWIDGET_H
#define CUSTOMWIDGET_H

#include <QtWidgets>
#include <QWidget>

class CustomWidget : public QWidget
{
	Q_OBJECT
public:
	explicit CustomWidget(QWidget *parent = nullptr);

	void paintEvent(QPaintEvent * event);
	void mousePressEvent(QMouseEvent * event);
	void mouseMoveEvent(QMouseEvent * event);

signals:

public slots:

private:
	QPoint m_lastPos;
};

#endif // CUSTOMWIDGET_H
