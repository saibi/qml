import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Action {
        id: actionNew
        text: qsTr("&New")
        shortcut: StandardKey.New
        icon.name : "document-new"
        onTriggered: area.placeholderText = "new";

    }
    Action {
        id: actionSave
        text: qsTr("&Save")
        shortcut: StandardKey.Save
        icon.name : "document-save"
        onTriggered: area.placeholderText = "save";

    }

    menuBar: MenuBar {
        Menu {
            title: "&File"
            MenuItem { action: actionNew }
            MenuItem { action: actionSave }

        }
    }

    header: ToolBar {
        RowLayout {
           ToolButton { action: actionNew }
           ToolButton { action: actionSave }

        }
    }

    TextArea {
        id: area
        anchors.fill: parent
    }
}
