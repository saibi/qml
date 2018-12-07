import QtQuick 2.5

Rectangle {
	id: root

	property alias text: label.text
	signal pressed
	signal released

	width: 116
	height: 26
	color: "yellow"
	border.color: "black"

	Text {
		id: label
		anchors.centerIn: parent
		text: "Start"
	}

	MouseArea {
		anchors.fill: parent
		onPressed: {
			root.pressed();
		}
		onReleased: {
			root.released();
		}
	}
}
