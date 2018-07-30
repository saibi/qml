import QtQuick 2.0

Rectangle {

	width: 400; height: 400; color: "yellow"



	Rectangle {
		anchors.centerIn: parent
		width: 80; height: 200; color: "white"


		ListModel {
			id: nameModel
			ListElement { name: "Alice" }
			ListElement { name: "Bob" }
			ListElement { name: "Jane" }
			ListElement { name: "Victor" }
			ListElement { name: "Wendy" }
		}

		Component {
			id: nameDelegate
			Text {
				text: name
				font.pixelSize: 32
			}
		}


		ListView {
			id: listView
			anchors.fill: parent
			model: nameModel 
			delegate: nameDelegate
			clip: false
			focus: true

			header: Rectangle {
				width: parent.width; height: 10; color: "pink"
			}
			footer: Rectangle {
				width: parent.width; height: 10; color: "lightblue"
			}
			highlight: Rectangle {
				width: parent.width; height: 10; color: "lightgray"
			}
		}
	}
	Text {
		id: label
		anchors.bottom: parent.bottom
		anchors.horizontalCenter: parent.horizontalCenter 
		text: "<b>" + listView.currentItem.text + "</b> is current"
		font.pixelSize: 16
	}
}
