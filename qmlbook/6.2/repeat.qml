import QtQuick 2.5
import "../common"

Column {
	spacing: 2

	Repeater {
		model: 20
		BlueBox {
			width: 120
			height: 32
			text: index
		}
	}
}
