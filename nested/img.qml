import QtQuick 2.4

Rectangle {
	width: 400; height: 400
	color: "black"
	Image {
		x:100; y: 100
		source: "./qt.png"
		width: 200; height: 200
		rotation: -45.0
		transformOrigin: Item.Top
	}
}

