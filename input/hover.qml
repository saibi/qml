import QtQuick 2.4

Rectangle {
	width: 400; height: 200; color: "lightblue"

	Rectangle {
		x: 150; y: 50; width: 100; height: 100

		MouseArea {
			id: mouseArea
			anchors.fill: parent
			hoverEnabled: true

			//hoverEnabled: false
			//acceptedButtons: Qt.RightButton
		}

		color: mouseArea.containsMouse ? "green" : "white"
	}
}

