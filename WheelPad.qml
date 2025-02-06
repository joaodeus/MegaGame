import QtQuick //2.3

Item {
    id: root
    width: 20*mm //22*mm
    height: width

    //dont set explicit x,y
    //set centerX, centerY
    property real centerX
    property real centerY
    property bool arrowVisible: false

    property string imageDefault: "qrc:/images/wheelCommand.png"
    property string imagePressed: "qrc:/images/wheelArrowWhite.png"
    property alias mirrorImage: img.mirror


    x: centerX-width*0.5
    y: centerY-height*0.5

    clip: true

    //bigger rectangle
    Image  {
        id: img
        anchors.fill: parent
        //source: arrowVisible ? "qrc:/images/wheelArrowBlack.png" : "qrc:/images/wheelCommand.png"
        //source: arrowVisible ? "qrc:/images/wheelArrowWhite.png" : "qrc:/images/wheelCommand.png"
        source: arrowVisible ? imagePressed : imageDefault
        mipmap: true
    }
}
