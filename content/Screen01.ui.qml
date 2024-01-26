

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import Test_3

Rectangle {
    id: rectangle
    width: 480
    height: 600

    TextField {
        id: usernameField
        x: 108
        y: 152
        width: 271
        height: 56
        focus: true
        placeholderText: qsTr("Username")
    }

    TextField {
        id: passwordField
        x: 108
        y: 261
        width: 271
        height: 56
        echoMode: "Password"
        placeholderText: qsTr("Password")
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
        x: 146
        y: 369
        width: 196
        height: 52
        text: qsTr("Login")
        onClicked: loginManager.managerFields(usernameField.text , passwordField.text);
    }

    Label {
        id: label1
        x: 199
        y: 427
        width: 91
        height: 22
        color: "#4c5c5c"
        text: qsTr("Power by ZZ6")
        font.pointSize: 11
    }

    Label{
        id:checkLogin
        text: ""
    }

    Connections{
        target: loginManager

        onLoginSignalChanged:{
            checkLogin.text = result
        }
    }
}
