import QtQuick 2.0

Rectangle {
	width: 600; height: 300
	gradient: Gradient {
		GradientStop { position: 0.0; color: "#637DFA" }
		GradientStop { position: 0.79; color: "#1F4C7A" }
		GradientStop { position: 0.8; color: "#4F834F" }
		GradientStop { position: 1.0; color: "#A9DCA9" }
	}


	Image {
		id: ball
		source: "../img/ball.png"
		y: 200

		SequentialAnimation {
			PauseAnimation { duration: 1000 }

			ParallelAnimation {
				NumberAnimation {
					target: ball
					properties: "x"
					from: 20; to: 500
					easing.type: "OutQuad"
					duration: 1250
				}

				SequentialAnimation  {
					NumberAnimation {
						target: ball
						properties: "y"
						from: 200; to: 20
						easing.type: "OutQuad"
						duration: 250
					}
					NumberAnimation {
						target: ball
						properties: "y"
						from: 20; to: 200
						easing.type: "OutBounce"
						duration: 1000
					}
				}
				RotationAnimation {
					target: ball
					properties: "rotation"
					from: 0; to: 720
					direction: RotationAnimation.Clockwise
					duration: 1250
				}
			}
			running: true
		}
	}
}
