import QtQuick 2.4

Item {
	width: 300; height: 100

	Rectangle {
		x: 0; y: 0; width:100; height: 100; color: "#ff0000"
	}
	Rectangle {
		x: 100; y: 0; width:100; height: 100; color: Qt.rgba(0, 1, 0, 1)
	}
	Rectangle {
		x: 200; y: 0; width:100; height: 100; color: "blue"
	}
}

