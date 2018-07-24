import QtQuick 2.4

Rectangle {
	width: 400; height: 400
	color: "lightblue"
	id: rect1

	Text {
		text: "Centered text"
		color: "green"
		font.family: "Helvetica"
		font.pixelSize: 32
		//anchors.centerIn: rect1
		//anchors.centerIn: parent
		anchors.right: parent.right
	}
}

