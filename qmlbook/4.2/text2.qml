import QtQuick 2.5

Item {
	Text {
		width: 40
		height: 120
		text: "a very long text"
		elide: Text.ElideMiddle

		style: Text.Sunken
		styleColor: '#FF4444'
		verticalAlignment: Text.AlignBottom
	}
}
