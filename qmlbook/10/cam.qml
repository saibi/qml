import QtQuick 2.5
import QtMultimedia 5.6

Item {
	width: 1024
	height: 600

	VideoOutput {
		anchors.fill: parent
		source: camera
	}

	Camera {
		id: camera
	}
}
