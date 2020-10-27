import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: animation.width
    height: animation.height + 8

    AnimatedImage {
        id: animation
        source: "images/ani.gif"
    }

    Rectangle {
        property int frames: animation.frameCount
        width: 4
        height: 8
        x: (animation.width - width) * animation.currentFrame / frames
        y: animation.height
        color: "red"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if ( animation.paused == true ) {
                animation.paused = false
                console.log("resume")
            } else {
                animation.paused = true
                console.log("pause")
            }
        }
    }
}

