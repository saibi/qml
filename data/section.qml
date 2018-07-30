import QtQuick 2.0

Rectangle {
	width: 400; height: 400; color: "lightblue"


	ListModel {
		id: nameModel
		ListElement { name: "Alice"; team: "Crypto" }
		ListElement { name: "Bob"; team: "Crypto" }
		ListElement { name: "Jane"; team: "QA" }
		ListElement { name: "Victor"; team: "QA" }
		ListElement { name: "Wendy"; team: "Graphics" }
	}

	Component {
		id: nameDelegate
		Text {
			text: name
			font.pixelSize: 32
		}
	}

	Component {
		id: sectionDelegate

		Rectangle {
			color: "#b0dfb0"
			width: parent.width
			height: childrenRect.height + 4
			Text {
				anchors.horizontalCenter: parent.horizontalCenter
				font.pixelSize: 16
				font.bold: true
				text: section
			}
		}
	}


	ListView {
		model: nameModel
		delegate:nameDelegate
		clip: false
		anchors.fill: parent
		section.property: "team"
		section.criteria: ViewSection.FullString
		section.delegate: sectionDelegate
	}
}

