import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 320
    height: 200
    title: qsTr("Hello World")

    Rectangle {
        x: parent.width/10; y: 50; width: height * 2; height: 100
        color: "lightblue"
    }
}
