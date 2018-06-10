import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Hello World")

    property int marginValue: 7


    TopMenu {
        id: topMenu
        z: 2
    }

    SideBar {
        id: sideBar
    }

    OverviewPage {
        id: overviewPage
    }

    DetailsPage {
        id: detailsPage
        z: 1
    }
}


