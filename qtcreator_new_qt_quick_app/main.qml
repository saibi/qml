import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Window {
    visible: true
    width: 600
    height: 500
    title: qsTr("Hello Touch World")


    SwipeView {
        id: view

        currentIndex: 0
        anchors.fill: parent

        onCurrentIndexChanged: {
            if ( currentIndex == 0 )
                ani.start();
        }

        Item {
            id: secondPage
            Rectangle {
                color: "yellow"
                anchors.fill: parent;


                Rectangle {
                    id: textarea
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    width: 200
                    height: 80
                    color: "yellow"

                    Text {
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        text: "Press me"
                        font.pixelSize: 48
                        font.bold: true

                        MouseArea {
                            anchors.fill: parent
                            onPressed: {
                                parent.color = "green";
                                textarea.color = "yellow";
                                parent.verticalAlignment = Text.AlignBottom;
                            }
                            onReleased: {
                                parent.color = "black";
                                textarea.color = "yellow";
                                parent.verticalAlignment = Text.AlignVCenter;
                            }
                            onPressAndHold: {
                                parent.color = "blue";
                                textarea.color = "white";
                            }
                        }
                    }
                }
            }
        }

        Item {
            id: firstPage
            Rectangle {
                color: "lightblue"
                anchors.fill: parent;

                Image {
                    x: 50
                    source: "backbutton.png"
                    scale: 2.5

                    NumberAnimation on y {
                        id: ani
                        from: 0; to: 350
                        duration: 2000
                        easing.type: "OutExpo"
                    }

                    PinchArea {
                        anchors.fill: parent
                        pinch {
                            target: parent
                            minimumScale: 0.5
                            maximumScale: 4.0
                            minimumRotation: -3600
                            maximumRotation: 3600
                            dragAxis: Pinch.XAndYAxis
                        }
                    }
                }

            }
        }

        Item {
            id: thirdPage
            Rectangle {
                color: "green"
                anchors.fill: parent;

                MultiPointTouchArea {
                    anchors.fill: parent
                    touchPoints: [
                        TouchPoint { id: pt1 },
                        TouchPoint { id: pt2 },
                        TouchPoint { id: pt3 }
                    ]
                }

                Rectangle {
                    width: 50; height: 50
                    color: "red"

                    x: pt1.x - width/2
                    y: pt1.y - height/2
                }

                Rectangle {
                    width: 60; height: 60
                    color: "white"

                    x: pt2.x - width/2
                    y: pt2.y - height/2
                }

                Rectangle {
                    width: 40; height: 40
                    color: "black"

                    x: pt3.x - width/2
                    y: pt3.y - height/2
                }

            }
        }

        Item {
            id: fourthPage

            Rectangle {
                color: "pink"
                anchors.fill: parent

                Rectangle {
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.right: parent.right

                    height: 100

                    color: "#123456"
                }

                Rectangle {
                    x: 200; y: 200
                    width: 200; height: 200
                    color: "yellow"
                    radius: 10.0

                    PinchArea {
                        anchors.fill: parent
                        pinch {
                            target: parent
                            minimumScale: 0.5
                            maximumScale: 4.0
                            minimumRotation: -3600
                            maximumRotation: 3600
                            minimumX: 50
                            minimumY: 50

                            dragAxis: Pinch.XAndYAxis
                        }
                    }
                }
            }
        }

    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
