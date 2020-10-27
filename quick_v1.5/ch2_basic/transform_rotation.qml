import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 1000
    height: 220

    Row {
        x: 10; y:10; spacing: 20
        Image {
            source: "/images/qtlogo.png"
        }

        Image {
            source: "/images/qtlogo.png"
            transform: Rotation {
                origin.x: 30; origin.y: 30
                axis {
                    x: 0
                    y: 1
                    z: 0
                }
                angle: 18

            }
        }

        Image {
            source: "/images/qtlogo.png"
            transform: Rotation {
                origin.x: 30; origin.y: 30
                axis { x: 0; y: 1; z: 0 }
                angle: 36
            }
        }

        Image {
            source: "/images/qtlogo.png"
            transform: Rotation {
                origin.x: 30; origin.y: 30
                axis { x: 0; y: 1; z: 0 }
                angle: 54
            }
        }
    }
}

