import QtQuick 2.4

Item {
    width: 100
    height: 100
    property alias buttonColor: button.color
    property alias displayText: display.text

    Rectangle {
        id: button
        color: "#bd1818"
        radius: width * 0.5
        anchors.fill: parent

        Text {
            id: display
            x: 38
            y: 44
            color: "#ffffff"
            text: qsTr("Text")
            font.pixelSize: 20
            font.italic: false
            font.bold: false
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
