import QtQuick 6.2
import QtQuick.Controls 6.2

import Test_3

Item{
    visible: true
    width: 480
    height: 500
    // title: "Main Application Window"

    Rectangle {
        width: 480
        height: 500


        AnimatedImage {
            id:animatedImage
            source: "qrc:/ZZ6.gif"
            anchors.centerIn: parent
            width: 480
            height: 500
            opacity: 0

            Behavior on opacity {
                NumberAnimation { from: 0; to: 1; duration: 1000 }
            }
        }

        Timer {
            interval: 4000
            running: true
            repeat: false
            onTriggered: {
                parent.visible = false
                stackView.push(mainPageComponent.createObject())
            }
        }
    }
    Component.onCompleted: {
              animatedImage.opacity = 1
          }

    StackView {
        id: stackView
        anchors.fill: parent

        Component {
            id: mainPageComponent

            Rectangle {
                id: rectangle
                width: 480
                height: 500
                color: "#cac6b3"

                TextField {
                    id: usernameField
                    x: 74
                    y: 140
                    width: 341
                    height: 56
                    focus: true
                    placeholderText: qsTr("Username")
                    KeyNavigation.down: passwordField
                }

                TextField {
                    id: passwordField
                    x: 74
                    y: 233
                    width: 341
                    height: 56
                    echoMode: "Password"
                    placeholderText: qsTr("Password")
                    KeyNavigation.down: button
                }

                Label {
                    id: label
                    x: 195
                    y: 35
                    width: 91
                    height: 61
                    text: qsTr("Login")
                    font.family: "Times New Roman"
                    font.pointSize: 27
                }

                Button {
                    id: button
                    x: 142
                    y: 321
                    width: 196
                    height: 52
                    text: qsTr("Login")
                    onClicked: loginManager.managerFields(usernameField.text , passwordField.text);
                }

                Label {
                    id: label1
                    x: 195
                    y: 379
                    width: 91
                    height: 22
                    color: "#4c5c5c"
                    text: qsTr("Power by ZZ6")
                    font.pointSize: 11
                }

                Popup {
                    id: popup
                    anchors.centerIn: parent
                    width: 250
                    height: 200
                    modal: true
                    focus: true
                    clip: true
                    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

                    Text {
                        id: checkLogin
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: ""
                        font.family: "Verdana"
                        font.bold: true
                        font.pointSize: 10
                    }

                    Image {
                        id: name
                        source: checkLogin.text === "Login :)" ? "qrc:/a.png" : "qrc:/b.png"
                        x: 83
                        y: 40
                        width: 60
                        height: 60
                    }

                    Button {
                        id: btn_Close
                        text: "Ok"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 10
                        onClicked: popup.close()
                        focus: true
                    }
                }

                Connections {
                    target: loginManager

                    onLoginSignalChanged: {
                        checkLogin.text = result
                        popup.open()
                    }
                }
            }


        }
    }
}

