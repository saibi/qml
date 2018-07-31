#ifndef MYTRIANGLEITEM_H
#define MYTRIANGLEITEM_H

#include <QQuickItem>
#include <QSGGeometry>
#include <QSGFlatColorMaterial>

class MyTriangleItem : public QQuickItem
{
	Q_OBJECT
public:
	MyTriangleItem(QQuickItem *parent = 0);

protected:
	QSGNode * updatePaintNode(QSGNode *n, UpdatePaintNodeData *d);

signals:

public slots:

private:
	QSGGeometry m_geometry;
	QSGFlatColorMaterial m_material;

};

#endif // MYTRIANGLEITEM_H
