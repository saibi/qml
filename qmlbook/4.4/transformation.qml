import QtQuick 2.5

Item {
	width: bg.width
	height: bg.height

	Image {
		id: bg
		source: "../book_example/ch04/src/transformation/assets/background.png"
	}

	MouseArea {
		id: backgroundClicker
		anchors.fill: parent
		onClicked: {
			circle.x = 84
			box.rotation = 0
			triangle.rotation = 0
			triangle.scale = 1.0
		}
	}


	ClickableImage {
		id: circle
		x: 84; y: 68
		source: "../book_example/ch04/src/transformation/assets/circle_blue.png"
		antialiasing: true
		onClicked: {
			x += 20;
		}
	}

	ClickableImage {
		id: box
		x: 164; y: 68 
		source: "../book_example/ch04/src/transformation/assets/box_green@2x.png"
		antialiasing: true
		onClicked: {
			rotation += 10;
		}
	}

	ClickableImage {
		id: triangle
		x: 248; y: 68
		source: "../book_example/ch04/src/transformation/assets/triangle_red.png"
		antialiasing: true
		onClicked: {
			rotation += 20;
			scale += 0.05;
		}
	}


	function _test_transformed() {
		circle.x += 20;
		box.rotation = 15;
		triangle.scale = 1.2
		triangle.rotation = -15
	}

	function _test_overlap() {
		circle.x += 40
		box.rotation = 15
		triangle.scale = 2.0
		triangle.rotation = 45
	}



}
