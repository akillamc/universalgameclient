import QtQuick 2.0

Rectangle {

    width: parent.width / 3
    height: parent.height - topMenu.height
    anchors.top: topMenu.bottom
    anchors.left: parent.left
    color: "grey"
}
