import QtQuick 2.5

Item {

	Button {
		id: button

		x: 12; y: 12

		text: "Start"
		onClicked: {
			status.text = "Button clicked!"
		}
	}

	Text {
		id: status
		x: 12; y: 76
		width: 116; height: 26
		text: "waiting ..."
		horizontalAlignment: Text.AlignHCenter
	}

	Button2 {
		id: btn2

		x: 150; y: 20

		text: "test2"
		onPressed: {
			btn2.text = "pressed!!!";
		}

		onReleased: {
			btn2.text = "released";
		}
	}
}
