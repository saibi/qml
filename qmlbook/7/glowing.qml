import QtQuick 2.5

Canvas {
	id: canvas
	width: 800
	height: 450

	property bool requestLine: false
	property bool requestBlank: false

	property real hue: 0
	property real lastX: width * Math.random()
	property real lastY: height * Math.random()

	onPaint: {
		var context = getContext('2d');

		if ( requestLine ) {
			line(context);
			requestLine = false;
		}

		if ( requestBlank ) {
			blank(context);
			requestBlank = false;
		}
	}

	// closure function to draw
	// a random bezier curve with random color with a glow effect
	function line(context) {

	    context.save();

	    // scale with factor 0.9 around the center of canvas
	    context.translate(canvas.width/2, canvas.height/2);
	    context.scale(0.9, 0.9);
	    context.translate(-canvas.width/2, -canvas.height/2);

	    context.beginPath();
	    context.lineWidth = 5 + Math.random() * 10;

	    // our start position
	    context.moveTo(lastX, lastY);

	    // our new end position
	    lastX = canvas.width * Math.random();
	    lastY = canvas.height * Math.random();

	    // random bezier curve, which ends on lastX, lastY
	    context.bezierCurveTo(context.canvas.width * Math.random(),
		    canvas.height * Math.random(),
		    canvas.width * Math.random(),
		    canvas.height * Math.random(), 
		    lastX, lastY);

	    // glow effect
	    hue += Math.random() * 0.1;
	    if ( hue > 1.0 ) {
		    hue -= 1;
	    }

	    context.strokeStyle = Qt.hsla(hue, 0.5, 0.5, 1.0);
	    // stroke the curve
	    context.stroke();
	    context.restore();
	}


	function blank(context) {
	    // makes the background 10% darker on each call
	    context.fillStyle = Qt.rgba(0,0,0,0.1);
	    context.fillRect(0, 0, canvas.width, canvas.height);
	}

	Timer {
		id: lineTimer
		interval: 40

		repeat: true
		triggeredOnStart: true
		onTriggered: {
			canvas.requestLine = true;
			canvas.requestPaint();
		}
	}

	Timer {
		id: blankTimer
		interval: 3000

		repeat: true
		triggeredOnStart: true
		onTriggered: {
			canvas.requestBlank = true;
			canvas.requestPaint();
		}
	}

	Component.onCompleted: {
		lineTimer.start();
		blankTimer.start();
	}
}

