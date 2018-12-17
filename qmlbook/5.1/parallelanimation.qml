import QtQuick 2.5

BrightSquare {
	id: root
	width: 600
	height: 400

	property int duration: 1000
	property Item ufo: ufo 

	Image {
		anchors.fill: parent
		source: "../book_example/ch05/src/animation/assets/ufo_background.png"
	}

	ClickableImageV3 {
		id: ufo 
		x: 20; y: root.height - height
		text: 'ufo'
		source: "../book_example/ch05/src/animation/assets/ufo.png"
		onClicked: anim.restart()
	}

	//SequentialAnimation 
	ParallelAnimation {
		id: anim

		NumberAnimation {
			target: ufo
			properties: "y"
			to: 20
			duration: root.duration
		}

		NumberAnimation {
			target: ufo
			properties: "x"
			to: 160
			duration: root.duration
		}
	}

}
