import QtQuick 2.12

Rectangle {
    id: button

    property alias text : buttonText.text

    Accessible.name: text
    Accessible.description: "This button does " + text
    Accessible.role: Accessible.Button
    Accessible.onPressAction: {
        button.clicked()

    }

    signal clicked

    width: buttonText.width + 20
    height: 50

    gradient: Gradient {
        GradientStop { position: 0.0; color: "lightsteelblue" }
        GradientStop { position: 1.0; color: button.focus ? "red" : "blue" }
    }

    radius: 5
    antialiasing: true

    Text {
        id: buttonText
        text: parent.description
        anchors.centerIn: parent
        font.pixelSize: parent.height * .5
        color: "white"
        styleColor: "black"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: parent.clicked()
    }
}
