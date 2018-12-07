import QtQuick 2.5

Rectangle {
	id:root

	width:120; height: 240

	color: "#4A4A4A"

	Image {
		id: triangle

		x: (parent.width - width) /2
		y: (parent.height - height) / 2 - height/3

		source: "../book_example/ch04/src/concepts/assets/triangle_red.png"
	}

	Text {
		y: triangle.y + triangle.height + 20
		width: root.width
		color: 'white'
		horizontalAlignment: Text.AlignHCenter
		text: 'Triangle'
	}
}
