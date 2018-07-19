import QtQuick 2.4

Rectangle {
	id: root
	width: 400
	height: 400
	color: "grey"

	Rectangle {
		id: top
		x: 10
		y: 10
		width: parent.width - 20
		height: parent.height/2 - 10
		color: "lightblue"
		Rectangle {
			color: "white"
			x: 10
			y: 10
			width: 10
			height: 10
		}

	}

	Rectangle {
		id: bottom
		x: 50
		y: top.y + top.height - 50
		width: top.width
		height: top.height
		color: "green"
		Rectangle {
			color: "blue"
            x: 100
			y: 10
            width: 100
            height: 100

            opacity: mousearea.containsMouse ? 0 : 1

            Behavior on opacity {
                NumberAnimation { duration: 1000 }
            }

            MouseArea {
                id: mousearea
                anchors.fill: parent
                hoverEnabled: true
            }
			
		}
	}
}
