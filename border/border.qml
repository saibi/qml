import QtQuick 2.1

Rectangle {
	width: 500; height:600

	Image {
		source: "../img/borderframe.png"
	}


	BorderImage {
		y:200

		width: 180; height: 180
		border { left:30; top: 30; right: 30; bottom: 30 }
		horizontalTileMode: BorderImage.Stretch
		verticalTileMode: BorderImage.Stretch
		source: "../img/borderframe.png"
	}

	BorderImage {
		y:400

		width: 180; height: 180
		border { left:30; top: 30; right: 30; bottom: 30 }
		horizontalTileMode: BorderImage.Repeat
		verticalTileMode: BorderImage.Repeat
		source: "../img/borderframe.png"
	}
}
			

