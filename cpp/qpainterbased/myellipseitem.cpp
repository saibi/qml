#include "myellipseitem.h"
#include <QPainter>

MyEllipseItem::MyEllipseItem(QQuickItem * parent) : QQuickPaintedItem(parent)
{

}

void MyEllipseItem::paint(QPainter *painter)
{
	const qreal halfPenWidth = qMax(painter->pen().width() / 2.0, 1.0);

	QRectF rect = boundingRect();
	rect.adjust(halfPenWidth, halfPenWidth, -halfPenWidth, -halfPenWidth);

	painter->drawEllipse(rect);
}
