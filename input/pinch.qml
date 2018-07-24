import QtQuick 2.4

Image {
	source: "../img/qt.png"

	PinchArea {
		anchors.fill: parent
		pinch {
			target: parent
			minimumScale: 0.5
			maximumScale: 2.0
			minimumRotation: -3600
			maximumRotation: 3600
			dragAxis: Pinch.XAxis
		}
	}
}


