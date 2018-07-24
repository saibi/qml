import QtQuick 2.4

Rectangle {
	width: 400; height: 400; color: "lightblue"

	TextInput {
		id: field1
		anchors.left: parent.left
		y: 16
		anchors.right: parent.right
		text: "Field 1"
		font.pixelSize: 32
		color: focus ? "black" : "gray"
		focus: true

		KeyNavigation.tab: field2
	}

	TextInput {
		id: field2
		anchors.left: parent.left
		y: 64
		anchors.right: parent.right
		text: "Field 2"
		font.pixelSize: 32
		color: focus ? "blue" : "yellow"
		KeyNavigation.tab: field1
	}
}

