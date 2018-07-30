import QtQuick 2.0
import QtQuick.XmlListModel 2.0

Rectangle {
	width: 400; height: 400; color: "white"

	XmlListModel {
		id: xmlModel
		source: "./items.xml"
		query: "//item"

		XmlRole { name: "title"; query: "string()" }
		XmlRole { name: "link"; query: "@link/string()" }
	}

	TitleDelegate {
		id: xmlDelegate
	}
	ListView {
		anchors.fill: parent
		anchors.margins: 4
		model: xmlModel
		delegate: xmlDelegate
	}

}

