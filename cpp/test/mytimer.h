#ifndef MYTIMER_H
#define MYTIMER_H

#include <QObject>
#include <QTimer>

class MyTimer : public QObject
{
	Q_OBJECT
public:
	explicit MyTimer(QObject *parent = 0);
	~MyTimer();

	Q_PROPERTY(int interval READ interval WRITE setInterval NOTIFY intervalChanged)
	Q_PROPERTY(bool active READ active NOTIFY activeChanged)

	Q_INVOKABLE int randomInterval(int min, int max) const;

	void setInterval(int msec);
	int interval();
	bool active();

signals:
	void intervalChanged();
	void timeout();
	void activeChanged();

public slots:
	void start();
	void stop();

private:
	QTimer* m_timer;
};

#endif // MYTIMER_H
