import QtQuick 2.0

Rectangle {
	width: 400; height:400; color: "lightblue"

	Image {
		id: ball
		source: "../img/ball.png"
		anchors.centerIn: parent
		smooth: true

		RotationAnimation on rotation {
			from: 45; to: 315
			direction: RotationAnimation.Shortest
			duration: 1000
		}
	}
}
