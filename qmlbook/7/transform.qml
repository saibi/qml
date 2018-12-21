import QtQuick 2.5

Canvas {
	id: root

	width: 240
	height: 120
	onPaint: {
		var ctx = getContext("2d");

		ctx.lineWidth = 4;
		ctx.strokeStyle = "blue";

		ctx.translate(root.width/2, root.height/2);

		ctx.beginPath();
		ctx.rect(-20, -20, 40, 40);
		ctx.stroke();


		ctx.rotate(Math.PI/4);

		ctx.strokeStyle = "green";
		ctx.beginPath();
		ctx.rect(-20, -20, 40, 40);
		ctx.stroke();

		ctx.scale(2.0, 2.0);

		ctx.rotate(Math.PI/4);
		ctx.strokeStyle = "red";
		ctx.beginPath();
		ctx.rect(-20, -20, 40, 40);
		ctx.stroke();

		ctx.resetTransform();

		ctx.lineWidth = 1;
		ctx.strokeStyle = "black";
		ctx.beginPath();
		ctx.rect(-20, -20, 40, 40);
		ctx.stroke();

	}

}
