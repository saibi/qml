import QtQuick 2.5

Image {
	id: root
	source: "../book_example/ch05/src/animation/assets/background.png"

	MouseArea {
		anchors.fill: parent
		onClicked: {
			greenBox.y = root.height - greenBox.height
			blueBox.y = root.height - blueBox.height
			redBox.y = root.height - redBox.height
		}
	}

	ClickableImageV2 {
		id: greenBox
		x: 40; y: root.height - height
		source: "../book_example/ch05/src/animation/assets/box_green.png"
		text: "animation on property"
		NumberAnimation on y {
			to: 40; duration: 4000
		}
	}

	ClickableImageV2 {
		id: blueBox 
		x: (root.width - width) / 2; 
		y: root.height - height
		source: "../book_example/ch05/src/animation/assets/box_blue.png"
		text: "animation on property"
		Behavior on y {
			NumberAnimation  { duration: 1000 }
		}
		//onClicked: y = 40
		onClicked: y = 40 + Math.random() * (205-40)
	}

	ClickableImageV2 {
		id: redBox

		x: root.width-width - 40
		y: root.height - height
		source: "../book_example/ch05/src/animation/assets/box_red.png"
		onClicked: anim.start()

		text: "standalone animation"

		NumberAnimation {
			id: anim
			target: redBox
			properties: "y"

			to: 40
			duration: 2000
		}
	}
}
