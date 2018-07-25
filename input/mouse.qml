import QtQuick 2.4

Rectangle {
	width: 400; height: 200; color: "lightblue"

	Text {
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
}
