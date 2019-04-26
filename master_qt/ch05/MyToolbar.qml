import QtQuick 2.5

Rectangle {
	property color iconColor: "purple"
	property alias title: label.text

	color: "gray"
	height: 50

	Rectangle {
		id: purpleRectangle
		width: 50; height: parent.height
		color: iconColor
		radius: 10
	}

	Text {
		id: label
		anchors.left: purpleRectangle.right
		anchors.right: parent.right
		text: "Dominate the Mobile UI"
		font.pointSize: 30
	}
}
