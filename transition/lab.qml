import QtQuick 2.4

Rectangle {
	width: 400; height: 400


	Rectangle {
		id: btnbg
		anchors.left: parent.left
		anchors.right: parent.horizontalCenter
		anchors.top: parent.top
		anchors.bottom: parent.bottom

		color: "lightgrey"


		Rectangle {

			color: "darkgrey"

			anchors.fill: parent
			anchors.margins: 5


			Rectangle {
				id: btn
				color: "lightgrey"
				x: 5; y: 5
				width: parent.width - 10
				height: 100
			}

		}
	}

	Rectangle {
		anchors.left: parent.horizontalCenter
		anchors.right: parent.right
		anchors.top: parent.top
		anchors.bottom: parent.bottom

		Rectangle {
			id: light

			x: 40
			y: parent.height/2 - 20 

			width: 40
			height: 40
			radius: 5
		}

	}

	states: [
		State {
			name: "off"
			PropertyChanges {
				target: light; color: "black"
			}
			PropertyChanges {
				target: btn; y: 5
			}
		},
		State {
			name: "on"
			PropertyChanges {
				target: light; color: "red"
			}
			PropertyChanges {
				target: btn; y: btnbg.height - btn.height - 15
			}
		}
	]

	state: "off"

	MouseArea {
		anchors.fill: parent

		onClicked: parent.state == "off" ? parent.state = "on" : parent.state = "off"
	}

	transitions: [
		Transition {
			from: "off"; to: "on"
			reversible: true

			PropertyAnimation {
				target: btn; property: "y"; duration: 1000
			}
			PropertyAnimation {
				target: light; property: "color"; duration: 1000
			}
		}
	]
}

