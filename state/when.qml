import QtQuick 2.4

Rectangle {
	width: 400; height: 100
	color: "lightblue"

	TextInput {
		id: textfield
		width: 400
		text: "Enter text..."
		font.pixelSize: 32
	}

	Image {
		width: 24; height: 24
		id: clearbtn
		source: "../img/x.svg"

		anchors.right: textfield.right

		MouseArea {
			anchors.fill: parent
			onClicked: textfield.text = ""
		}
	}

	states: [
		State {
			name: "with text"
			when: textfield.text != ""
			PropertyChanges {
				target: clearbtn
				opacity: 1.0
			}
		},
		State {
			name: "without text"
			when: textfield.text == ""
			PropertyChanges {
				target: clearbtn
				opacity: 0.25
			}
		}
	]

}


