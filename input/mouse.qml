import QtQuick 2.4

Rectangle {
	width: 400; height: 200; color: "lightblue"

	Text {
		id: textarea
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "Press me"
		font.pixelSize: 48
		color: mousearea.containsMouse ? "black" : "grey"  // works before click

		MouseArea {
			id: mousearea
			anchors.fill: parent
			onPressed: parent.color = "green"
			onReleased: parent.color = "grey"
			hoverEnabled: true
		}
	}

	Rectangle {
		width: 50
		height: 50
		y: textarea.height 
		color: "yellow"

		MouseArea {
			anchors.fill: parent
			onPressAndHold: parent.color = "red"
			onReleased: parent.color = "yellow"
		}
	}
}
