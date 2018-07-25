import QtQuick 2.4
import QtQuick.Controls 2.0

Rectangle {
	width: 500; height: 500

	SwipeView {
		id: view

		currentIndex: 0
		anchors.fill: parent

		Item {
			id: firstPage
		}

		Item {
			id: secondPage
		}

		Item {
			id: thirdPage
		}

	}

	PageIndicator {
		id: indicator

		count: view.count
		currentIndex: view.currentIndex

		anchors.bottom: view.bottom
		anchors.horizontalCenter: parent.horizontalCenter
	}
}

