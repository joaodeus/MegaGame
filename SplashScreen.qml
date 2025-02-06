import QtQuick

Image {
    id: splashScreenRoot
    //color: "black"

    source: "qrc:/images/skybox/galaxy5.png"

    property real textSize: width > height ? parent.height * 0.06 : parent.width * 0.04
    Image {
        id: img
        //width: parent.width * 0.6
        height: parent.height * 0.6
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        //source: "qrc:/images/splashScreen.png"
        source: "qrc:/images/spaceshipAlpha.png"
        fillMode: Image.PreserveAspectFit
        horizontalAlignment: Image.AlignHCenter
        mipmap: true
    }

    Text {
        id: name
        anchors.fill: parent
        color: "yellow"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: textSize
        text: qsTr("Mega Epic Galactic Adventures\nFly through the space\nexplore planets and \nhave lots of fun!!!")
    }

    signal exit()
    MouseArea {
        anchors.fill: parent
        onClicked: exit()
    }
}
