import QtQuick 2.3
import QtQuick.Controls

Item {
    id: root
    width: btnSize
    height: btnSize //+ extraSize
    //property real extraSize: (tex.text === "") ? 0 : tex.height
    property alias source: img.source
    property alias text: tex.text
    Image {
        id: img
        anchors.fill: parent
        source: ""//"qrc:/images/buttons/btn_help.png"
        mipmap: true
    }
    Text {
        id: tex
        text: ""
        color: "white"
        anchors.top: img.bottom
    }
    MouseArea{
        id: ma
        anchors.fill: parent
        hoverEnabled: true
        //onContainsMouseChanged: ma.containsMouse ? root.opacity = 0.5 : root.opacity = 1
        onClicked: root.click()


    }
    //onEnabledChanged: enabled ? root.opacity = 1 : root.opacity = 0.5
    opacity: ma.containsMouse || !root.enabled ? 0.5 : 1

    signal click()
}
