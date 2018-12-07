import QtQuick 2.5

Image {
	id: root
	source: "book_example/ch01/src/Showcase/images/background.png"

	Image {
		id: pole
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		source: "book_example/ch01/src/Showcase/images/pole.png"
	}

	Image {
		id: wheel
		anchors.centerIn: parent
		anchors.horizontalCenterOffset: 0
		anchors.verticalCenterOffset: 0
		source: "book_example/ch01/src/Showcase/images/pinwheel.png"

		Behavior on rotation {
			NumberAnimation {
				duration: 500 
			}
		}

	}

	MouseArea {
		anchors.fill: parent
		onClicked: wheel.rotation += 360
	}
}
