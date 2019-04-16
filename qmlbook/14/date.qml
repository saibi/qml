import QtQuick 2.5

Item {
	Timer {
		id: timerUpdater

		interval: 1000

		running: true

		repeat: true

		onTriggered: {
			var d = new Date();

			console.log(d);
		}
	}
}
