import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 400
    height: 400

    Rectangle {
        width: 400
        height: 400
        gradient: Gradient {
            GradientStop { position: 0.0; color: "red" }
            GradientStop { position: 0.33; color: "yellow" }
            GradientStop { position: 1.0; color: "green" }
        }
    }
}
