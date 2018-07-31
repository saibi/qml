import QtQuick 2.6
import QtQuick.Window 2.2
import MyShapes 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item {
        anchors.fill: parent

        MyEllepse {
            x: 50; y: 50
            width: 200; height: 100
        }
    }
}
