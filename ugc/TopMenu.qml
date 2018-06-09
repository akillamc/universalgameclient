import QtQuick 2.2
import QtQuick.Window 2.2


Rectangle {

    id:topMenu
    width: parent.width
    height: 30
    color: "black"

    Rectangle {
        id: btnFile
        width: 50
        height: parent.height
        anchors.top: parent.top
        anchors.left: parent.left

        Text {
            text: "File"
            anchors.centerIn: parent
            anchors.margins: marginValue
        }

        MouseArea {
            anchors.fill: parent
            onClicked: { console.log("File clicked!") }
        }
    }

    Rectangle {
        id: btnUser
        width: 50
        height: parent.height
        anchors.top: parent.top
        anchors.left: btnFile.right

        Text {
            text: "User"
            anchors.centerIn: parent
            anchors.margins: marginValue
        }

        MouseArea {
            anchors.fill: parent
            onClicked: { console.log("User clicked!") }
        }
    }

    Rectangle {
        id: btnAbout
        width: 50
        height: parent.height
        anchors.top: parent.top
        anchors.left: btnUser.right

        Text {
            text: "About"
            anchors.centerIn: parent
            anchors.margins: marginValue
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("About clicked!")
                //subAbout.visible = !subAbout.visible
            }

        }

        Rectangle {
            visible: false
            id:subAbout
            width: 200
            height: 500
            anchors.left: parent.left
            anchors.top: parent.bottom
            color: "black"
        }
    }
}
