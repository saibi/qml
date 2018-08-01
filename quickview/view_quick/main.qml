import QtQuick 2.0

Rectangle {
    width: 200; height: 50; color: "lightblue"

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        text: "Hello Qt Quick"
        font.pixelSize: 18
    }
}
