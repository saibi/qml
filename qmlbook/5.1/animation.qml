import QtQuick 2.5

Image {
	id: root
	source: "../book_example/ch05/src/animation/assets/background.png"

	property int padding: 40
	property int duration: 400
	property bool running: false

	Image {
		id: box

		x: root.padding;
		y: (root.height - height) /2
		
		source: "../book_example/ch05/src/animation/assets/box_green.png"

		NumberAnimation on x {
			to: root.width - box.width - root.padding
			duration: root.duration
			running: root.running
		}

		RotationAnimation on rotation {
			to: 360
			duration: root.duration
			running: root.running
		}
	}

	MouseArea {
		anchors.fill: parent
		onClicked: {
			root.running = true
		}
	}
}
