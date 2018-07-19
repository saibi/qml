import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Grid {
        width: 100; height: 100
        columns: 2

        Rectangle {
            id: topLeft
            width: 50; height: 50
            color: focus ? "red" : "lightgray"
            focus: true

            KeyNavigation.right: topRight
            KeyNavigation.down: bottomLeft
            KeyNavigation.tab: topRight
        }

        Rectangle {
            id: topRight
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.left: topLeft
            KeyNavigation.down: bottomRight
        }

        Rectangle {
            id: bottomLeft
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.right: bottomRight
            KeyNavigation.up: topLeft
        }

        Rectangle {
            id: bottomRight
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.left: bottomLeft
            KeyNavigation.up: topRight
        }
    }


//    ListView {
//        width: 240; height: 320
//        model: 3
//        delegate: Rectangle {
//            width: 100; height: 30
//            color: ListView.isCurrentItem ? "red" : "yellow"
//        }
//    }
}


//Rectangle {
//    width: 400;
//    height: 400
//    color: "lightblue"

//    Text {
//        text: "Hello world"
//        height: 50
//    }
//}


//Text {
//    id: label
//    text: "Hello world"
//    height: 100
//    font {
//            family: "Helvetica"
//            pixelSize: 40
//    }
//    //font.pixelSize: 10
//}

//Column {
//    TextInput {
//        id: hello
//        text: "Hello"
//        KeyNavigation.tab: hello
//        KeyNavigation.down: world
//    }

//    TextInput {
//        id: world
//        text: "World"
//        KeyNavigation.tab: world
//    }
//}
