import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480

    Rectangle {
        width: 640
        height: 480
        color: mPalette.window
        SystemPalette {
            id: myPalette
            colorGroup: SystemPalette.Active
        }
        Text {
            id: myText
            anchors.fill: parent
            text: "Hello!"
            font.pixelSize: 32
            color: myPalette.windowText
        }
    }
}
