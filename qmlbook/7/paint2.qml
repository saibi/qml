import QtQuick 2.5

Rectangle {
	width: 600
	height: 400

	Row {
		id: toolbar
		anchors {
			horizontalCenter: parent.horizontalCenter
			top: parent.top
			topMargin: 8
		}

		Row {
			id: colorTools
			property color paintColor: "#33b5e5"
			spacing: 4
			Repeater {
				model: ["#33b5e5", "#99cc00", "#ffbb33", "#ff4444", "black"]

				ColorSquare {
					id: red
					color: modelData
					active: parent.paintColor == color
					onClicked: {
						parent.paintColor = color
					}
				}
			}
		}

		Row {
			id: thickTools
			property real thickVal: 1.5
			spacing: 2
			Repeater {
				model: [ 1.0, 1.5, 2.0, 2.5, 3.0 ]

				ThickSquare {
					thick: modelData
					active: parent.thickVal == thick
					onClicked: {
						parent.thickVal = thick
					}
				}
			}
		}
	}

	Rectangle {
		anchors.fill: canvas
		border.color: "#666666"
		border.width: 4
	}

	Canvas {
		id: canvas

		anchors {
			left: parent.left
			right: parent.right
			top: toolbar.bottom
			bottom: parent.bottom
			margins: 8
		}

		property real lastX
		property real lastY
		property color color: colorTools.paintColor 
		property real thickness: thickTools.thickVal

		onPaint: {
			var ctx = getContext("2d");

			ctx.lineWidth = canvas.thickness
			//ctx.lineWidth = thickTools.thickVal
			ctx.strokeStyle = canvas.color

			ctx.beginPath();
			ctx.moveTo(lastX, lastY);
			lastX = area.mouseX
			lastY = area.mouseY
			ctx.lineTo(lastX, lastY);
			ctx.stroke();
			ctx.fill();
		}
		MouseArea {
			id: area
			anchors.fill: parent
			onPressed: {
				canvas.lastX = mouseX
				canvas.lastY = mouseY
			}
			onPositionChanged: {
				canvas.requestPaint()
			}
		}
	}
}
