import QtQuick 2.5

Image {
	id: root
	source: "../book_example/ch01/src/Showcase/images/background.png"
	onWidthChanged: print(width)

	Image {
		id: pole
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		source: "../book_example/ch01/src/Showcase/images/pole.png"
	}

	Image {
		id: wheel 
		anchors.centerIn: parent
		source: "../book_example/ch01/src/Showcase/images/pinwheel.png"
	}

	MouseArea {
		anchors.fill: parent
		onClicked: wheel.rotation += 90
	}
}

