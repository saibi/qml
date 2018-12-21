import QtQuick 2.5
import "../common"

Column {
	spacing: 2

	Repeater {
		model: 10

		delegate: BlueBox {
			width: 100
			height: 32
			text: '# ' + index 
		}
	}
}
