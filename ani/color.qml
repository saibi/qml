import QtQuick 2.0

Rectangle {
	width: 400; height:400; color: "lightblue"

	Rectangle {
		id: rect 
		width: 50; height: 50
	}

	ColorAnimation {

		target: rect
		properties: "color"
		from: Qt.rgba(0, 0.5, 0, 1)
		to: Qt.rgba(1, 1, 1, 1)
		duration: 1000
		running: true
	}
}
