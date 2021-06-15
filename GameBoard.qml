import QtQuick 2.0
import Game 1.0

GridView {
    id: gv

    cellHeight: height / gv.model.dimension
    cellWidth: width / gv.model.dimension

    interactive: false

    delegate: Item {
        id: bckgr
        width: gv.cellWidth
        height: gv.cellHeight

        visible: gv.model.hiddenElementValue !== display

        Tile {
            anchors.fill: bckgr
            anchors.margins: 5

            internalText.text: display.toString()

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    gv.model.move(index)
                }
            }
        }
    }

    GameController{
        id: cntrl
    }

    Component.onCompleted: {
        gv.model =  cntrl.getModel();
    }
}
