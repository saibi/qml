import QtQuick 2.0

Rectangle {
	width: 600; height: 300

	Image {
		source: "../img/ball.png"
		//anchors.horizontalCenter: parent.horizontalCenter

	
		NumberAnimation on x {
			from: 20; to: 500
			duration: 1250
		}

		SequentialAnimation on y {
			NumberAnimation {
				from: 200; to: 20
				easing.type: "OutQuad"
				duration: 250
			}
			NumberAnimation {
				from: 20; to: 200
				easing.type: "OutBounce"
				duration: 1000
			}
		}

		RotationAnimation on rotation {
			from: 0; to: 360
			direction: RotationAnimation.Clockwise
			duration: 1000
		}
	}
}
