import QtQuick 2.4

Rectangle {
	width: 400
	height: 200

	color: "#000000"

	Rectangle {
		id: leftRect
		x: 25; y: 25; width: 150; height: 150
		color: focus ? "red" : "darkred"
		KeyNavigation.right: rightRect
		focus: true
	}

	Rectangle {
		id: rightRect
		x: 225; y: 25; width: 150; height: 150
		color: focus ? "#00ff00" : "green"
		KeyNavigation.right: leftRect
	}
}


