import QtQuick 2.3

Rectangle {
    id: root
    width: mainRoot.width / 2
    height: mainRoot.height / 2
    color: "lightyellow"//"blue"
    border.color: "lightblue"
    border.width: mm
    //opacity: 0.75
    radius: 4*mm//width*0.1

    property alias text: tex.label
    property alias horizontalAlignment: tex.horizontalAlignment
    property alias verticalAlignment: tex.verticalAlignment
    property alias textPixelSize: tex.pixelSize
    property string image: ""
    property alias imageWidth: img.width
    property alias imageHeight: img.height
    property alias showCancelBtn: btnCancel.visible
    property alias showOkBtn: btnOk.visible
    property alias bntCancelText: btnCancel.text
    property alias bntOkText: btnOk.text

    signal ok()
    signal cancel()

    Image {
        id: img
        width: parent.width
        height: image !== "" ? parent.height*0.5 : 0
        anchors.top: parent.top
        anchors.topMargin: defaultMargins*2
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        source: image === "" ? "" : "qrc:/images/"+image
        mipmap: true
    }

    /*TextTemplate {
        id: txt
        width: parent.width
        height: parent.height - img.height - btnOk.height // todo: minus margins
        anchors.top: img.bottom
        anchors.bottom: btnOk.top
        anchors.left: parent.left
        anchors.right: parent.right
        //anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: defaultMargins
        color: "orange"
        label: "" //qsTr("You've found a Star Key!!!")
    }*/

    Flickable {
        id: flick
        clip: true
        anchors.top: img.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: btnOk.top
        anchors.margins: defaultMargins

        flickableDirection: Flickable.VerticalFlick

        height: parent.height - img.height -btnOk.height - defaultMargins*4

        contentHeight: tex.height + 2*defaultMargins


        TextTemplate {
            id: tex
            anchors.top: parent.top
            anchors.topMargin: defaultMargins//imgLeft.visible || imgRight.visible ? imgSize : defaultMargins

            //anchors.bottom: btnNext.top
            //anchors.bottomMargin: defaultMargins

            anchors.left: parent.left
            anchors.leftMargin: defaultMargins
            anchors.right: parent.right
            anchors.rightMargin: defaultMargins

            verticalAlignment: Text.AlignTop
            horizontalAlignment: Text.AlignJustify
            //width: parent.width
            //label: "Olá..........."//dialogueArray[0]
            //pointSize: 16
            textColor: "black"
            label: ""

        }
    }

    MyButton {
        id: btnCancel
        //width: 10*mm
        //height: 8*mm
        //backGrdColor: "red"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: defaultMargins
        //anchors.horizontalCenter: parent.horizontalCenter
        anchors.right: btnOk.left
        anchors.rightMargin: defaultMargins
        text: qsTr("Cancel")
        //image: "btnMenu.png"
        onBtnClick: cancel()
        visible: false
    }

    MyButton {
        id: btnOk
        //backGrdColor: "red"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: defaultMargins
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Ok")
        //image: "btnMenu.png"
        onBtnClick: ok()
    }
}

