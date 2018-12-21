import QtQuick 2.5
import "../common"

Background {

	width: 80
	height: 300

	ListView {
		anchors.fill: parent
		anchors.margins: 20

		clip: true

		model: 50

		delegate: numberDelegate

		spacing: 5
		boundsBehavior: Flickable.DragOverBounds // Flickable.DragAndOvershootBounds // Flickable.StopAtBounds 
		snapMode: ListView.NoSnap //ListView.SnapOneItem //ListView.SnapToItem
		orientation: ListView.Vertical // ListView.Horizontal
	}

	Component {
		id: numberDelegate
		GreenBox {
			width: 40
			height: 40
			text: "(" + index + ")"
		}
	}
}

