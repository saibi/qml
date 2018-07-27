import QtQuick 2.0

Rectangle {
	width: 400; height: 400; color: "lightblue"

	Image {
		id: image
		x: 100; y: 100
		source: "../img/thumbnails.png" 
	}

	PropertyAnimation {
		target: image
		properties: "width,height"
		from: 0; to: 200;
		duration: 1000
		running: true
	}
}

