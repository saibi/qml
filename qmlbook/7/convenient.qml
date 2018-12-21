import QtQuick 2.5

Canvas {
	id: root

	width: 400
	height: 200
	onPaint: {
		var ctx = getContext("2d")

		ctx.lineWidth = 4
		ctx.fillStyle = "green"
		ctx.strokeStyle = "blue"

		ctx.fillRect(20, 20, 80, 80)
		ctx.clearRect(30, 30, 60, 60)
		ctx.strokeRect( 20, 20, 40, 40)

	}
}
