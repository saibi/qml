import QtQuick 2.5
import QtGraphicalEffects 1.0

Rectangle {
	width: 480; height: 240
	color: '#1e1e1e'

	Row {
		anchors.centerIn: parent
		spacing: 16

		Image {
			id: sourceImage
			source: "../images/tulips.jpg"
			width: 200; height: width
			sourceSize: Qt.size(parent.width, parent.height)
			smooth: true
		}

		FastBlur {
			width: 200; height: width
			source: sourceImage
			radius: blurred?32:0
			property bool blurred: false

			Behavior on radius {
				NumberAnimation { duration: 1000 }
			}

			MouseArea {
				id: area
				anchors.fill: parent
				onClicked: parent.blurred = !parent.blurred
			}
		}
	}
}
