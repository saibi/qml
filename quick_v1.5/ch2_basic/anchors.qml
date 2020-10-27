import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 300
    height: 300

    Rectangle {
        id: rect1
        width: 300;
        height: 300
        color: "lightblue"

        Rectangle {
            id: subRect
            width: 300
            height: 100
            color: "yellow"
        }

        Text {
            text: "Centered text"
            color: "green"
            font.family: "Helvetica"
            font.pixelSize: 32
            anchors.top : subRect.bottom
            anchors.centerIn: rect1
        }
    }
}

