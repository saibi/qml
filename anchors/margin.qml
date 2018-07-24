import QtQuick 2.4

Rectangle {
	width: 400; height: 400
	color: "lightblue"
	id: rect1

	Image {
		id: book
		source: "../nested/qt.png"
		anchors.left: parent.left
		anchors.leftMargin: parent.width / 16
		anchors.verticalCenter: parent.verticalCenter
	}


	Text {
		text: "Writing"
		font.pixelSize: 32
		color: "green"
		anchors.left: book.right
		anchors.leftMargin: 32
		anchors.baseline: book.verticalCenter
	}
}

