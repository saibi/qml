import QtQuick 2.5
import "../common"

Background {
	width: 240
	height: 300

	ListView {
		id: view
		anchors.fill: parent 
		anchors.margins: 20

		clip: true

		model: 50

		delegate: numberDelegate
		spacing: 5

		highlight: highlightComponent 
		focus: true

		highlightRangeMode: ListView.NoHighlightRange //ListView.ApplyRange //ListView.StrictlyEnforceRange 
	}

	Component {
		id: highlightComponent

		GreenBox {
			width: ListView.view.width
		}

	}

	Component {
		id: numberDelegate 
		Item {
			width: ListView.view.width
			height: 40

			Text {
				anchors.centerIn: parent
				font.pixelSize: 10 

				text: '**   ' + index + '   **'
			}
		}

	}

}
