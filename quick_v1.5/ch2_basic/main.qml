import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    id: root
    width: 512
    height: 320
    color: "#D8D8D8"
    title: qsTr("qml basic")

    property int rotationStep: 45
    BorderImage {
        source: "images/background.png"
    }

    Image {
        id: pole
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        source: "images/stick.png"
    }

    Image {
        id: wheel
        anchors.centerIn: parent
        source: "images/wheel.png"
        Behavior on rotation {
            NumberAnimation {
                duration: 250
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onPressed: {
            wheel.rotation += 90
        }
    }

    Item {
        anchors.fill: parent
        focus: true
        Keys.onLeftPressed: {
            console.log("move left")
            wheel.rotation -= root.rotationStep
        }
        Keys.onRightPressed: {
            console.log("move right")
            wheel.rotation += root.rotationStep
        }
    }
}
