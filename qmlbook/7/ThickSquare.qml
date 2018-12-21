import QtQuick 2.5

Rectangle {
	id: root

	width: 48
	height: 48
	color: "grey"
	signal clicked

	property bool active: false
	property real thick: 1.5

	border.color: active ? "#222222" : "#f0f0f0"
	border.width: 2
	Text {
		anchors.fill: parent
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
		font.pointSize: 10
		text: "(" + thick + ")"
	}

	MouseArea {
		id: area
		anchors.fill: parent
		onClicked: {
			root.clicked()
		}
	}
}
