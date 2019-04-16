import QtQuick 2.5

Item {
	function runJS() {
		var v = 1.1;
		console.log("your JS code");
		console.log("floor " + Math.floor(v));
		console.log("ceil " + Math.ceil(v));
		console.log("round " + Math.round(v));
		console.log("random " + Math.random() * 100);
	}

	Component.onCompleted: {
		runJS();
	}
}
