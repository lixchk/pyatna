import QtQuick 2.0

Rectangle {
    id: rectg
    property alias internalText: valueText
    color: "lightblue"
    border.color: "grey"
    border.width: 5
    radius: 15

    Text {
        id: valueText
        text: "1"

        font.bold: true
        font.pointSize: rectg.height * 0.33

        anchors.centerIn: rectg
    }
}
