import QtQuick 2.0

Flickable {
	width: 150; height: 150
	contentWidth: 300; contentHeight: 300

	rebound: Transition {
		NumberAnimation {
			properties: "x,y"
			duration: 1000
			easing.type: Easing.OutBounce
		}
	}

	Rectangle {
		width: 300; height: 300
		gradient: Gradient {
			GradientStop { position: 0.0; color: "lightsteelblue" }
			GradientStop { position: 1.0; color: "blue" }
		}
	}
}


