import QtQuick 2.0

Rectangle {
	width: 400; height: 400
	color: "lightblue"

	Image {
		x: 220 
		source: "../img/backbutton.png"
		NumberAnimation on y {
			from: 360; to: 150
			duration: 500
		}
	}
}
