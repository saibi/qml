#include "intervalsettings.h"

IntervalSettings::IntervalSettings(QObject *parent) : QObject(parent), m_duration(1000), m_unit(MilliSeconds)
{

}

int IntervalSettings::duration() const
{
	return m_duration;
}

void IntervalSettings::setDuration(int duration)
{
	if (m_duration != duration )
	{
		m_duration = duration;
		emit durationChanged();
	}
}

IntervalSettings::Unit IntervalSettings::unit() const
{
	return m_unit;
}

void IntervalSettings::setUnit(IntervalSettings::Unit unit)
{
	if ( m_unit != unit )
	{
		m_unit = unit;
		emit unitChanged();
	}
}

int IntervalSettings::timeoutInMilliSeconds() const
{
	if ( m_unit == MilliSeconds)
	{
		return m_duration;
	}
	else if ( m_unit == Seconds )
	{
		return 1000 * m_duration;
	}
	else
		return 60 * 1000 * m_duration;

}
