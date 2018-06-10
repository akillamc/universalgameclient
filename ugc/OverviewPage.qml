import QtQuick 2.0

Rectangle {
    id: overviewPage
    width: parent.width - sideBar.width
    height: parent.height - topMenu.height

    anchors.top: topMenu.bottom
    anchors.left: sideBar.right
    anchors.right: topMenu.right

    color: "Red"

    Rectangle {
        id: btnTest
        height: 25
        width: btnText.width + marginValue
        anchors.top: parent.top
        anchors.left: parent.left

        anchors.topMargin: marginValue
        anchors.leftMargin: marginValue

        Text {
            id: btnText
            text: "Animate details!"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Test clicked!")
                detailsPage.width = overviewPage.width * 0.9
            }
        }
    }
}
