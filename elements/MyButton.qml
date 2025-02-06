import QtQuick 2.3

Rectangle {
    id: root
    width: btnSize2
    height: btnSize
    radius: width*0.4
    border.width: 0.8*mm
    border.color: "black"
    color: backGrdColor

    property color backGrdColor: "white"
    property color pressedColor: "darkgrey"
    //property alias borderColor: root.border.color
    property alias text: btnText.text
    property string image: ""

    signal btnClick()


    Text {
        id: btnText
        anchors.fill: parent
        anchors.margins: defaultMargins
        //anchors.centerIn: parent
        wrapMode: Text.WordWrap
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        fontSizeMode: Text.Fit
        minimumPointSize: 2
        font.bold: false
        //font.family: "Purisa"
        font.pixelSize: 12*mm
        color: "black"
        text: ""
    }

    Image {
        id: img
        width: parent.width * 0.7
        height: parent.height
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
        source: image === "" ? "" : "qrc:/images/"+image
        mipmap: true
    }

    MouseArea {
        id:mouseArea
        anchors.fill: parent
        onPressed: color = pressedColor
        onReleased: color = backGrdColor
        onClicked: btnClick()
    }

}
