#include "baritem.h"

BarItem::BarItem(QObject *parent) : QObject(parent)
{

}


QColor BarItem::color() const
{
	return m_color;
}

void BarItem::setColor(const QColor &newColor)
{
	if ( m_color != newColor )
	{
		m_color = newColor;
		emit colorChanged();
	}
}

qreal BarItem::value() const
{
	return m_value;
}

void BarItem::setValue(qreal newValue)
{
	if ( m_value != newValue )
	{
		m_value = newValue;

		emit valueChanged();
	}
}
