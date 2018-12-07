import QtQuick 2.5

DarkSquare {
	id: root

	width: 300; height: 300

	property variant colorArray: ["#00bde3", "#67c111", "#ea7025"]

	Grid {
		anchors.fill: parent
		anchors.margins: 8
		spacing: 4
		columns: 5

		Repeater {
			model: 25

			Rectangle {
				width: 56; height: 56 
				property int colorIndex: Math.floor(Math.random() * 3 )
				color: root.colorArray[colorIndex]
				border.color: Qt.lighter(color) 

				Text {
					anchors.centerIn: parent
					color: "#f0f0f0"
					text: "Cell " + index
				}
			}
		}
	}
}

