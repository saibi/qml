import QtQuick 2.5

BrightSquare {
	id: root
	width: 160
	height: 160

	Grid {
		id: grid 
		rows: 2
		anchors.centerIn: parent
		spacing: 8

		RedSquare { }
		BlueSquare {  }
		RedSquare { }
		BlueSquare {  }
		RedSquare { }
		BlueSquare {  }

	}

}
