import QtQuick 2.5

Item {
	Image {
		id: img1
		x: 12; y: 12
		source: "../book_example/ch04/src/concepts/assets/triangle_red.png"
	}

	Image {
		id: img2
		x: 12 + 64 + 12; y: 12
		height: 72/2
		source: "../book_example/ch04/src/concepts/assets/triangle_red.png"
		fillMode: Image.PreserveAspectCrop
		clip: true
	}
}
