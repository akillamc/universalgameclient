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
}
