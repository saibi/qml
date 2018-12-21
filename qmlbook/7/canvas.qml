import QtQuick 2.5

Canvas {
	id: root

	width: 400
	height: 200
	onPaint: {
		var ctx = getContext("2d")

		ctx.lineWidth = 4
		ctx.strokeStyle = "blue"
		ctx.fillStyle = "steelblue"
		ctx.beginPath()
		ctx.moveTo(50, 50)
		ctx.lineTo(50, 150)
		ctx.lineTo(150, 150)
		ctx.lineTo(150, 50)
		ctx.closePath()
		ctx.fill()
		ctx.stroke()


		ctx.strokeStyle = "red"
		ctx.beginPath()
		ctx.moveTo(200, 50)
		ctx.lineTo(250, 50)

		ctx.stroke()

	}
}
