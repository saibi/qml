import QtQuick 2.0

Rectangle {
	id: window
	width: 400; height:400; color: "lightblue"

	Image {
		id: rocket
		x: 200; y: 200
		source: "../img/rocket.png"
	}

	PathAnimation {
		id: pathani 
		duration: 2000
		easing.type: Easing.InOutQuad
		target: rocket
		orientation: PathAnimation.RightFirst
		anchorPoint: Qt.point(rocket.width/2, rocket.height/2)
		path: Path {
			startX: rocket.width/2; startY: rocket.height/2
			PathCubic {
				x: window.width - rocket.width/2
				y: window.height - rocket.height/2
				control1X: x;
				control1Y: rocket.height/2
				control2X: rocket.width/2
				control2Y: y
			}
		}
		running: true
	}
}
