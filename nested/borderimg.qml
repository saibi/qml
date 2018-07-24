import QtQuick 2.4

BorderImage {
	source: "vertical_gradient.png"
	width: 400; height: 400

	border { 
		left: 30; top: 30; right: 30; bottom:30; 
	}

	horizontalTileMode: BorderImage.Stretch
	verticalTileMode: BorderImage.Repeat
}
