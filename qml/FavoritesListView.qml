import QtQuick 2.0

Item {
    Image {
        source: calaosApp.getPictureSized(isLandscape?
                                              "background_landscape":
                                              "background")
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

    ItemListView {
        id: listViewFav
        //model: favoriteModel

        y: header.height
        width: parent.width
        height: parent.height - header.height
    }

    ScrollBar { listObject: listViewFav }

    ViewHeader {
        id: header
        headerLabel: qsTr("Favorites")
        iconSource: calaosApp.getPictureSized("fav")
    }
}
