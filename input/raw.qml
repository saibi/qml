import QtQuick 2.4

Rectangle {
	width: 400; height: 400; color: "black"
	Image {
		id: rocket
		x: 150; y:150
		source: "../img/rocket.png"
		transformOrigin: Item.Center
	}

	Keys.onLeftPressed: rocket.rotation = (rocket.rotation - 10) % 360
	Keys.onRightPressed: rocket.rotation = (rocket.rotation + 10) % 360
	Keys.onUpPressed: rocket.y = rocket.y - 5
	Keys.onDownPressed: rocket.y = rocket.y + 5
	focus: true

	Keys.onPressed: {
		if ( event.key == Qt.Key_Comma) 
			rocket.x = rocket.x - 5
		else if ( event.key == Qt.Key_Period ) 
			rocket.x = rocket.x + 5
	}

}

