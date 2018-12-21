import QtQuick 2.5

Canvas {
	id: root

	width: 400
	height: 200
	onPaint: {
		var ctx = getContext("2d")

		var gradient = ctx.createLinearGradient(50, 0, 100, 200)

		gradient.addColorStop(0, "blue")
		gradient.addColorStop(1.0, "lightsteelblue")
		ctx.fillStyle = gradient
		ctx.fillRect(0, 0, 400, 200)

	}
}
