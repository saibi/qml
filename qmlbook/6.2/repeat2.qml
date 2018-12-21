import QtQuick 2.5
import "../common/"

Column {
	spacing: 2

	Repeater {
		model: ["Enterprise", "Columbia", "Challenger", "Discovery", "Endeavour", "Atlantis" ]

		BlueBox {
			width: 200
			height: 32
			radius: 3
			color: "yellow"

			text: modelData + ' (' + index + ')'
		}
	}
}
