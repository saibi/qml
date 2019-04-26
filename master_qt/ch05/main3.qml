import QtQuick 2.5
import QtQuick.Window 2.2

Window {
	visible: true
	width: 640
	height: 480

	Rectangle {
		width: 200; height: 200
		color: "red"
	}

	Rectangle {
		width: 200; height: 200
		color: "green"
		x: 100; y: 100

		Rectangle {
			width: 50; height: 50
			color: "blue"
			x: 100; y: 100
		}
	}

	MyToolbar {
		width: parent.width
	}
}

