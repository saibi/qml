import QtQuick 2.6
import QtQuick.Window 2.2

import MyShapes 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Chart {
        anchors.fill: parent

        bars: [
            Bar { color: "#a00000"; value: -1 },
            Bar { color: "#00a000"; value: 50 },
            Bar { color: "#0000a0"; value: 51 }
        ]
    }
}
