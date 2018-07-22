import QtQuick 2.0

Rectangle {

    width: 250
    height: parent.height - topMenu.height
    anchors.top: topMenu.bottom
    anchors.left: parent.left
    color: "grey"

    LauncherCat {
        id: defaultLauncher
        launcherName: "All launchers"

        width: parent.width
        height: 40

        anchors.top: parent.top
        anchors.left: parent.left

        anchors.topMargin: marginValue
        anchors.leftMargin: 5
    }
}
