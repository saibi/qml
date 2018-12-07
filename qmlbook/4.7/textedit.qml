import QtQuick 2.5

Rectangle {
	width: 136
	height: 120

	color: "linen"

	TTextEdit {
		id: input
		x: 8; y: 8
		width: 120; height: 104
		focus: true

		text: "text edit"

	}
}
