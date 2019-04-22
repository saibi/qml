import QtQuick 2.4

Item {
    width: 400
    height: 400

    Rectangle {
        id: rectangle
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ffffff"
            }

            GradientStop {
                position: 1
                color: "#26a1f0"
            }
        }
        anchors.fill: parent
    }
}
