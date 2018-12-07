import QtQuick 2.5

Rectangle {
	id:root

	width:240; height: 240


	Text {
		id: label

		x: 24; y: 24

		property int spacePresses: 0
		text: "Space pressed: " + spacePresses + " times"

		onTextChanged: console.log("text changed to:", text)

		focus: true 

		Keys.onSpacePressed: {
			increment()
		}

		Keys.onEscapePressed: {
			label.text = ''
		}

		function increment() {
			spacePresses = spacePresses + 1
		}
	}
}
