import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: Screen.width / 2
    height: Screen.height /2

    Rectangle {
        FontLoader {
            id: fixedFont;
            name: "Courier"
        }
        FontLoader {
            id: webFont
            source: ""
        }

        Text {
            text: "Fixed-size font"
            font.family: fixedFont.name
        }
    }
}

