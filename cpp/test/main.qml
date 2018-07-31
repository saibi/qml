import QtQuick 2.0
import QtQuick.Window 2.2
import MyComponents 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        anchors.fill: parent
        MyTimer {
            id: timer
//            interval: timer.randomInterval(500, 1500)
            interval: IntervalSettings {
                duration: 2
                unit: IntervalSettings.Seconds
            }

            onTimeout: {
                console.log("Timer fired!");
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if ( timer.active == false ) {
                    timer.start();
                } else {
                    timer.stop();
                }
            }
        }
    }
}
