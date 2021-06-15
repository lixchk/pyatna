import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    id: w
    visible: true
    width: 640
    height: 480
    title: qsTr("Pyatnashki!!!")

    GameBoard {
        id: gb
        anchors.fill: parent
        anchors.margins: 10
    }
}
