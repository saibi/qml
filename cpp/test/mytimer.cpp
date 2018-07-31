#include "mytimer.h"
#include <QDebug>

MyTimer::MyTimer(QObject *parent) : QObject(parent), m_timer( new QTimer(this)), m_settings( new IntervalSettings)
{
	connect(m_timer, SIGNAL(timeout()), this, SIGNAL(timeout()));
	qDebug("MyTimer %p created", m_timer);
}

MyTimer::~MyTimer()
{
	qDebug("MyTimer %p deleted", m_timer);
	delete m_timer;
}

void MyTimer::setInterval(IntervalSettings *settings)
{
	if ( m_settings != settings )
	{
		delete m_settings;
		m_settings = settings;
		emit intervalChanged();
	}
}

IntervalSettings * MyTimer::interval() const
{
	return m_settings;
}

//void MyTimer::setInterval(int msec)
//{
//	if ( m_timer->interval() == msec )
//		return;

//	m_timer->stop();
//	m_timer->setInterval(msec);
//	m_timer->start();
//	Q_EMIT intervalChanged();
//}

//int MyTimer::interval()
//{
//	return m_timer->interval();
//}

bool MyTimer::active()
{
	return m_timer->isActive();
}

void MyTimer::start()
{
	m_timer->setInterval(m_settings->timeoutInMilliSeconds());
	if ( m_timer->isActive() )
		return;

	m_timer->start();
	Q_EMIT activeChanged();

	qDebug("MyTimer start");
}

void MyTimer::stop()
{
	if ( !m_timer->isActive() )
		return;

	m_timer->stop();
	Q_EMIT activeChanged();

	qDebug("MyTimer stop");
}

int MyTimer::randomInterval(int min, int max) const
{
	int range = max - min;
	int msec = min + qrand() % range;

	qDebug() << "Random interval =" << msec << "msecs";
	return msec;
}
