import QtQuick.XmlListModel 2.0

XmlListModel {
	source: "http://localhost:8888/colors.xml"
	query: "/colors"

	XmlRole { name: 'color'; query: 'name/string()' }
	XmlRole { name: 'value'; query: 'value/string()' }
}
