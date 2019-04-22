import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Background {
        id: background
        anchors.fill: parent
        target: sender

        Sender {
            id: sender
            y: 190
            buttonColor: "#0000ff"
            displayText: "Sender"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 50
            target: receiver
        }

        Receiver {
            id: receiver
            x: 377
            y: 190
            buttonColor: "#ff0000"
            displayText: "Receiver"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 50

            width: sender.width
        }
    }
}



/*##^## Designer {
    D{i:2;anchors_x:186}
}
 ##^##*/
