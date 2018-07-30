import QtQuick 2.0

Rectangle {
	width: 400; height:400; color: "lightblue"

	Image {
		id: rocket
		x: 200; y: 200
		source: "../img/rocket.png"
	}

	ParallelAnimation {
		NumberAnimation {
			target: rocket
			properties: "scale"
			from: 1.0; to: 0.5
			duration: 1000
		}

		NumberAnimation {
			target: rocket
			properties: "opacity"
			from: 1.0; to: 0.0
			duration: 1000
		}
		running: true
	}
}
