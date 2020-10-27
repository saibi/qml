import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 200
    height: 150

    Rectangle {
        width: 100
        height: 100
        color: "white"
        Image {
            x: 10
            y: 10
            source: "./images/qtlogo.png"
        }
    }
}

