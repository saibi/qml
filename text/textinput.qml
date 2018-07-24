import QtQuick 2.4

Rectangle {
	width: 500; height: 500
	color: "yellow"

	TextInput {
		x: 50; y: 50; width: 300
		text: "Editable text"
		font.family: "Helvetica"
		font.pixelSize: 32
	}
}
