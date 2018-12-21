import QtQuick 2.5

Canvas {
	id: root

	width: 400
	height: 200
	onPaint: {
		var ctx = getContext("2d");

		ctx.drawImage('../images/soccer_ball.png', 10, 10);

		ctx.save();
		ctx.strokeStyle = '#ff2a68';

		ctx.beginPath();
		ctx.moveTo(210, 10);
		ctx.lineTo(255, 10);
		ctx.lineTo(235, 55);
		ctx.closePath();

		ctx.clip();

		ctx.drawImage('../images/soccer_ball.png', 200, 10);

		ctx.stroke();

		ctx.restore();
	}

	Component.onCompleted: {
		loadImage("../images/soccer_ball.png");
	}
}
