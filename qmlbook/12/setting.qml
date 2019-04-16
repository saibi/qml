import QtQuick 2.5
import Qt.labs.settings 1.0

Rectangle {
	id: root

	width: 320; height: 240

	color: '#000000'
	Settings {
		id: settings
		property alias color: root.color
	}

	MouseArea {
		anchors.fill: parent
		onClicked: root.color = Qt.hsla(Math.random(), 0.5, 0.5, 1.0);
	}
}

