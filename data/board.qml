import QtQuick 2.0

Rectangle {
	width: 445; height: 445; color: "brown"

	Grid {
		x: 5; y: 5
		columns: 8; rows: 8; spacing: 5

		Repeater {
			model: parent.rows * parent.columns

			Rectangle {
				width: 50; height: 50; 
				color: {
					var r = Math.floor(index / 8);
					var c = index % 8;
					if ( (r + c) % 2 == 1)
						"black";
					else
						"white";
				}
				Text {
					text: index
					font.pointSize: 10
					anchors.centerIn: parent
				}

				MouseArea {
					anchors.fill: parent

					onClicked: {
						var r = Math.floor(index / 8);
						var c = index % 8;

						if ( ( Math.abs(c - knight.cx) == 1 && Math.abs(r - knight.cy) == 2) ||
						(Math.abs(c - knight.cx) == 2 && Math.abs(r - knight.cy) ==1)) {

							knight.cx = c
							knight.cy = r
						}
					}
				}
			}
		}
	}

	Image {
		id: knight
		source: "../img/knight.png"

		property int cx
		property int cy

		x: 5 + 55 * cx
		y: 5 + 55 * cy

	}

}
