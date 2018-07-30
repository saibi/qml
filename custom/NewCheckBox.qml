import QtQuick 2.0

Item {

	Image {
		id: checkImage
		anchors.left: parent.left
		anchors.verticalCenter: parent.verticalCenter
	}

	Text {
		id: textItem
		anchors.left: checkImage.right
		anchors.leftMargin: 4
		anchors.verticalCenter: checkImage.verticalCenter
		text: "Option"
		font.pixelSize: checkImage.height -4
	}

	states: [
		State {
			name: "checked"
			PropertyChanges { target: checkImage; source: "../img/checked.svg" }
		},
		State {
			name: "unchecked"
			PropertyChanges { target: checkImage; source: "../img/unchecked.svg" }
		}
	]

	state: "unchecked"

	width: textItem.width + checkImage.width

	MouseArea {
		anchors.fill: checkImage
		onClicked: if (parent.state == "checked" ) {
			parent.state = "unchecked";
			parent.checked(false);
		} else {
			parent.state = "checked";
			parent.checked(true);
		}
	}

	signal checked(bool checkValue)
}
