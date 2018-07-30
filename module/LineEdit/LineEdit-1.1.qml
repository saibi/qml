import QtQuick 2.0

Rectangle {
	border.color: "green"
	color: "yellow"
	radius: 10
	smooth: true
	TextInput {
		id: textInput
		anchors.fill: parent
		anchors.margins: 2
		text: "Enter ..."
		color: focus ? "black" : "gray"
		font.pixelSize: parent.height -4
	}
	//property string text: textInput.text
	property alias text: textInput.text
}
