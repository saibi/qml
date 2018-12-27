import QtQuick 2.5

Rectangle {
	id: root
	width: 480
	height: 240
	color: '#1e1e1e'

	GenieEffect {
		source: Image { source: '../images/lighthouse.jpg' }
		MouseArea {
			anchors.fill: parent
			onClicked: parent.minimized = !parent.minimized 
		}
	}
}
