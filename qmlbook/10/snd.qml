import QtQuick 2.5
import QtMultimedia 5.6

Item {
	id: window
	width: 1024
	height: 600

	MouseArea {
		anchors.fill: parent
		onClicked: {
			if ( window.state === "upsidedown" ) {
				window.state = "";
			} else {
				window.state = "upsidedown";
			}
		}
	}

	SoundEffect {
		id: beep
		source: 'beep.wav'
	}

	Rectangle {
		id: button
		anchors.centerIn: parent

		width: 200
		height: 100

		color: "red"

		MouseArea {
			anchors.fill: parent
			onClicked: beep.play()
		}
	}

	states: [
		State {
			name: "upsidedown"
			PropertyChanges { target: button; rotation: 180; }
		}
	]

	SoundEffect {
		id: swosh
		source: 'swosh.wav'
	}

	transitions: [
		Transition {
			ParallelAnimation {
				ScriptAction { script: swosh.play(); }
				PropertyAnimation { properties: "rotation"; duration: 200; }
			}
		}
	]
}
