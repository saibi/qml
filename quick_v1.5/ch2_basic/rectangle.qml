import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 400
    height: 400

    Rectangle {
        width: parent.width
        height: parent.height
        color: "gray"

        Rectangle {
            x: 50
            y: 50
            width: 300
            height: 150
            color: "lightblue"

            Rectangle {
                x: 50
                y: 50
                width: 50
                height: 50
                color: "white"
            }
        }
    }

    Rectangle {
        x: 50
        y: 200
        width: 300
        height: 150
        color: "green"

        Rectangle {
            x: 100
            y: 50
            width: 150
            height: 50
            color: "blue"
        }
    }
}

