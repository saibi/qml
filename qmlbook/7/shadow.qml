import QtQuick 2.5

Canvas {
	id: root

	width: 400
	height: 200
	onPaint: {
		var ctx = getContext("2d");

		ctx.strokeStyle = "#333";
		ctx.fillRect(0, 0, root.width, root.height);

		ctx.shadowColor = "#2ed5fa";
		ctx.shadowOffsetX = 1;
		ctx.shadowOffsetY = 1;
		ctx.shadowBlur = 10;

		ctx.font = 'bold 80px Ubuntu';
		ctx.fillStyle = "#24d12e";
		ctx.fillText("Canvas!", 40, 100);

	}
}
