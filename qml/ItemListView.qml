import QtQuick 2.2
import "calaos.js" as Calaos;

ListView {
    anchors.fill: parent

    spacing: 10

    delegate: BorderImage {
        source: "qrc:/img/back_items_home.png"
        border.left: 5; border.top: 5
        border.right: 5; border.bottom: 5

        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 10
        height: 40

        Image {
            id: itemIcon
            fillMode: Image.PreserveAspectFit
            anchors {
                left: parent.left; leftMargin: 8
                top: parent.top; topMargin: 8
                bottom: parent.bottom; bottomMargin: 8
            }
        }

        Text {
            color: "#3ab4d7"
            font { bold: false; pointSize: 12 }
            text: name
            clip: true
            elide: Text.ElideRight
            anchors {
                left: itemIcon.right; leftMargin: 8
                right: parent.right; rightMargin: 8
                verticalCenter: parent.verticalCenter
            }
        }
    }

}