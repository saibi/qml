import QtQuick 2.0

Rectangle {
	width: 400; height: 400; color: "lightblue"
	Rectangle {
		id: rect 
		x: 0; y: 150; 
		width: 100; height: 100

		Behavior on x {
			SpringAnimation { spring: 5; damping: 0.1 }
		}

		Behavior on y {
			SpringAnimation { spring: 5; damping: 0.1 }
		}
	}

	MouseArea {
		anchors.fill: parent
		onClicked: {
			rect.x = mouse.x - rect.width/2
			rect.y = mouse.y - rect.height/2
		}
	}
}
