import QtQuick 2.0
import QtQuick.Scene3D 2.0


Rectangle {
	width: 640
	height: 480
	Scene3D {
		id: scene 
		anchors.fill: parent
		focus: true

		World { }
	}
}
