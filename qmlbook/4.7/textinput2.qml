import QtQuick 2.5

Rectangle {
	width: 200
	height: 80
	color: "linen"

	TLineEditV2 {
		id: input1
		x : 8; y: 8
		width: 96; height:20
		focus: true
		text: "input 1"
		KeyNavigation.tab: input2
	}

	TLineEditV2 {
		id: input2
		x : 8; y: 36
		width: 96; height:20
		text: "input 2"
		KeyNavigation.tab: input1
	}
}
