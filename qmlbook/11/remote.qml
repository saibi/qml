import QtQuick 2.5

Loader {
	id: root

	source: 'http://localhost:8888/main.qml'
	//source: 'https://gist.github.com/jryannel/7983492/raw'

	onLoaded: {
		root.width = item.width
		root.height = item.height
	}
}
