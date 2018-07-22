import QtQuick 2.0

Rectangle {
    anchors.top: parent.top
    anchors.left: parent.left

    color: "transparent"

    property string launcherName: "Default"
    property string launcherIconSource: "qrc:/Images/defaultLauncher.png"
    property string availableGames: "0"

    Image {
        id: imgLauncherIcon
        source: launcherIconSource
        width: 50
        height: 50
        fillMode: Image.PreserveAspectFit
        sourceSize.width: 92
        sourceSize.height: 92

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
    }

    Rectangle {
        id: textHolder

        anchors.left: imgLauncherIcon.right
        anchors.verticalCenter: imgLauncherIcon.verticalCenter

        width: parent.width - imgLauncherIcon.width
        height: txtLauncherTitle.height + txtAvailableGames.height
        color: "transparent"

        Text {
            id: txtLauncherTitle
            text: launcherName
            anchors.top: parent.top
            anchors.left: parent.left
            font.pixelSize: 15
        }

        Text {
            id: txtAvailableGames
            text: availableGames + " Available"
            anchors.top: txtLauncherTitle.bottom
            anchors.left: txtLauncherTitle.left
        }
    }
}
