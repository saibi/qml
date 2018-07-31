#ifndef CHARTITEM_H
#define CHARTITEM_H

#include <QQuickPaintedItem>
#include "baritem.h"
#include <QQmlListProperty>

class ChartItem : public QQuickPaintedItem
{
	Q_OBJECT

	Q_PROPERTY( QQmlListProperty<BarItem> bars READ bars NOTIFY barsChanged)


public:
	ChartItem(QQuickItem *parent = 0);

	void paint(QPainter *painter);

	QQmlListProperty<BarItem> bars();

signals:
	void barsChanged();

private:
	static void append_var(QQmlListProperty<BarItem> *list, BarItem *bar);
	QList<BarItem*> m_bars;
};

#endif // CHARTITEM_H
