import QtQuick 2.10
import "../common"

Background {
	width: 240
	height: 300

	ListView {
		anchors.fill: parent
		anchors.margins: 20

		clip: true

		model: 50

		delegate: numberDelegate
		spacing: 2

		header: headerComponent
		footer: footerComponent

		highlight: highlight
		//focus: true
		//highlightFollowCurrentItem: false

	}

	Component {
		id: headerComponent

		YellowBox {
			width: ListView.view.width
			height: 20
			text: 'Header'
		}
	}

	Component {
		id: footerComponent

		YellowBox {
			width: ListView.view.width
			height: 20

			text: 'Footer'
		}
	}

	Component {
		id: numberDelegate

		GreenBox {
			width: ListView.view.width
			height: 40

			text: 'Item #' + index
		}
	}

	Component {
		id: highlight
		Rectangle {
			width: ListView.view.width + 2
			height: 45
			color: "lightsteelblue"
			radius: 5
			y: ListView.view.currentItem.y

		}
	}
}
