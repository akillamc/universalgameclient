import QtQuick 2.0

Rectangle {

    id: detailsPage
    width: 0
    height: parent.height - topMenu.height

    anchors.top: topMenu.bottom
    anchors.right: topMenu.right

    color: "Blue"

    Behavior on width {
        NumberAnimation {
            duration: 600
            easing {
                type: Easing.OutExpo
            }
        }
    }

    Rectangle {
        width: 25
        height: 25
        anchors.top: parent.top
        anchors.left: parent.left

        anchors.topMargin: marginValue
        anchors.leftMargin: marginValue

        Text {
            anchors.centerIn: parent
            text: "X"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: { detailsPage.width = 0 }
        }
    }
}

