import QtQuick 2.0

Rectangle {

	width: 300; height: 240; color: "yellow"


	ListModel{
		id: nameModel
		ListElement { file: "../img/rocket.svg"; name: "rocket" }
		ListElement { file: "../img/clear.svg"; name: "clear" }
		ListElement { file: "../img/arrow.svg"; name: "arrow" }
		ListElement { file: "../img/book.svg"; name: "book" }
	}

	Component {
		id: nameDelegate
		Column {
			Image {
				id: delegateImage
				anchors.horizontalCenter: delegateText.horizontalCenter 
				source: file
				width: 64; height: 64 
				smooth: true
				fillMode: Image.PreserveAspectFit
			}
			Text {
				id: delegateText
				text: name 
				font.pixelSize: 24
			}
		}
	}

	GridView {
		anchors.fill: parent
		model: nameModel
		delegate: nameDelegate
		clip: false

		header: Rectangle {
			width: parent.width
			height: 10
			color: "pink"
		}

		footer: Rectangle {
			width: parent.width
			height: 10
			color: "lightblue"
		}

		highlight: Rectangle {
			width: parent.width
			color: "lightgray"
		}

		focus: true
	}
}

