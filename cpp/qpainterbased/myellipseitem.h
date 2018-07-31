#ifndef MYELLIPSEITEM_H
#define MYELLIPSEITEM_H

#include <QQuickPaintedItem>

class MyEllipseItem : public QQuickPaintedItem
{
	Q_OBJECT

public:
	explicit MyEllipseItem(QQuickItem *parent = 0);

	void paint(QPainter *painter);
};

#endif // MYELLIPSEITEM_H
