import QtQuick 2.4


Rectangle {
	width: 500; height: 500; color: "black"

	MultiPointTouchArea {
		anchors.fill: parent
		touchPoints: [
			TouchPoint { id: point1 },
			TouchPoint { id: point2 },
			TouchPoint { id: point3 }
		]
	}

	Rectangle {
		width: 20; height: 20
		color: "red"

		x: point1.x
		y: point1.y
	}

	Rectangle {
		width: 30; height: 30
		color: "yellow"

		x: point2.x
		y: point2.y
	}

	Rectangle {
		width: 40; height: 40
		color: "green"

		x: point3.x
		y: point3.y
	}
}


