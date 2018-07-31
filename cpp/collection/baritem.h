#ifndef BARITEM_H
#define BARITEM_H

#include <QObject>
#include <QColor>

class BarItem : public QObject
{
	Q_OBJECT
	Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
	Q_PROPERTY(qreal value READ value WRITE setValue NOTIFY valueChanged)

public:
	explicit BarItem(QObject *parent = nullptr);

	QColor color() const;
	void setColor(const QColor &newColor);

	qreal value() const;
	void setValue(qreal newValue);

signals:
	void colorChanged();
	void valueChanged();

public slots:

private:
	QColor m_color;
	qreal m_value;
};

#endif // BARITEM_H
