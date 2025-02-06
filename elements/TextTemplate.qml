import QtQuick 2.0

Item {
    id: container
    width: mainRoot.width - 2 * defaultMargins
    height: template.paintedHeight

    property int wrap: Text.WordWrap
    property alias label: template.text
    //property color textColor: colors.textDefault
    property alias horizontalAlignment: template.horizontalAlignment
    property alias verticalAlignment: template.verticalAlignment
    property alias bold: template.font.bold
    property alias italic: template.font.italic
    property alias font: template.font.family
    property alias pixelSize: template.font.pixelSize
    property alias pointSize: template.font.pointSize
    property alias textColor: template.color
    property string urlText: "https://superepicmegahero.carrd.co/"

    Text {
        id: template
        width: parent.width
        //height: parent.height
        anchors.centerIn: parent
        elide: Text.ElideMiddle
        //color: textColor
        font.pixelSize: textSize
        //font.family: "Purisa"
        font.bold: false
        wrapMode: wrap
        //horizontalAlignment: Text.AlignJustify //Text.AlignHCenter
        //verticalAlignment: Text.AlignVCenter
        onLinkActivated: Qt.openUrlExternally(urlText)
    }

}
