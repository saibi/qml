import QtQuick 2.0

Rectangle {
	width: 400; height: 400; color: "lightblue"


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


	Column {
		anchors.fill: parent
		Repeater {
			model: nameModel
			delegate: nameDelegate
		}
	}
}

