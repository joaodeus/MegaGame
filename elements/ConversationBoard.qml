import QtQuick 2.3

//Note: ConversationBoard2 need to have some conversations set else it wont be visible even you set it explicitly
//because signal endDialog() will be called inital and hide the dialog if no messages are set

Rectangle {
    id: root
    width: mainRoot.width / 2
    height: mainRoot.height / 2
    //color: "blue"//"purple"
    //radius: 5*mm

    color: "lightyellow"//"blue"
    border.color: "lightblue"
    border.width: mm
    //opacity: 0.75
    radius: 4*mm//width*0.1

    signal endDialog()

    //property alias text: tex.label
    property var conversationArray: [] //new Array() // message to be displayed
    property var imageNameArray: [] //new Array() //file image name
    property var imagePostionArray: []//new Array() // set the image at left or right, left=1, right=2
    property var mirrorImageArray: [] // new Array() // normal image= false, mirror image=true
    property var imageBottomArray: [] //new Array() // file name for imageBottom

    property int index: 0//-1
    property real imgSize: 20*mm
    property string imageLeft: ""
    property string imageRight: ""
    property string imageBottom: (index < 0 || index >= imageBottomArray.length) ? "" : imageBottomArray[index]
    property real imageBottomWidth: 20*mm
    property real imageBottomHeight: 20*mm
    property alias mirrorImageLeft: imgLeft.mirror
    property alias mirrorImageRight: imgRight.mirror
    property alias verticalAlignment: tex.verticalAlignment

    //property alias btnNext: btnNext
    //property alias flick: flick

    onEndDialog: {
        root.visible = false
    }

    Image {
        id: imgLeft
        width: visible ? imgSize : 0//imageName === "" ? 0 : 20*mm
        //width: imageLeft === "" ? 1 : imgSize
        height: width
        mipmap: true
        //anchors.centerIn: parent
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: defaultMargins
        fillMode: Image.PreserveAspectFit
        source: visible  && (index >= 0) && (index < imageNameArray.length) && (imageNameArray[index] !== "") ? "qrc:/images/"+imageNameArray[index] : ""
        //source: visible ? "qrc:/images/"+imageNameArray[index] : "" //imageLeft === "" ? "" : "qrc:/images/"+imageLeft
        visible: imagePostionArray[index] === 1 ? true : false
        mirror: (index < 0 || index >= mirrorImageArray.length) ? false : mirrorImageArray[index]
    }

    Image {
        id: imgRight
        width: visible ? imgSize : 0
        //width: imageRight === "" ? 1 : imgSize
        height: width
        mipmap: true
        //anchors.centerIn: parent
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.margins: defaultMargins
        fillMode: Image.PreserveAspectFit
        source: visible  && (index >= 0) && (index < imageNameArray.length) && (imageNameArray[index] !== "") ? "qrc:/images/"+imageNameArray[index] : "" //imageRight === "" ? "" : "qrc:/images/"+imageRight
        visible: imagePostionArray[index] === 2 ? true : false
        mirror: (index < 0 || index >= mirrorImageArray.length) ? false : mirrorImageArray[index]
    }

    Flickable {
        id: flick
        clip: true
        anchors.top: parent.top
        anchors.topMargin: defaultMargins//imgLeft.visible || imgRight.visible ? imgSize : defaultMargins

        anchors.left: imgLeft.right //parent.left
        anchors.leftMargin: defaultMargins
        anchors.right: imgRight.left //parent.right
        anchors.rightMargin: defaultMargins

        flickableDirection: Flickable.VerticalFlick

        height: btnNext.height > imgAtBottom.height ? parent.height - btnNext.height - defaultMargins*3 :
                                               parent.height - imgAtBottom.height - defaultMargins*3
        //height: parent.height - btnNext.height - imgAtBottom.height - defaultMargins*3

        contentHeight: tex.height + defaultMargins*2

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
            //textColor: "black"
            //label: dialogueArray.length === 0 ? "" : dialogueArray[index]
            label: (index < 0 || index >= conversationArray.length) ? "" : conversationArray[index]
        }
    }//Flickable


    Image {
        id: imgAtBottom
        width: imageBottom === "" ? 0 : imageBottomWidth
        height: imageBottom === "" ? 0 : imageBottomHeight

        //width: imageBottom === "" ? 0 : imageBottomWidth === -1 ? parent.width : imageBottomWidth
        //height: imageBottom === "" ? 0 : imageBottomHeight === -1 ? parent.height - flick.height - defaultMargins : imageBottomHeight

        mipmap: true
      //  anchors.top: flick.bottom
        anchors.bottom: parent.bottom//btnNext.top
        anchors.margins: defaultMargins
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        //source: "qrc:/images/" + imageBottom
        source: visible  && (index >= 0) && (index < imageBottomArray.length) && (imageBottomArray[index] !== "") ?
                    "qrc:/images/"+imageBottomArray[index] : ""
        visible: imageBottom === "" ? false : true
    }

    MyButton {
        id: btnNext
        anchors.bottom: parent.bottom
        anchors.bottomMargin: defaultMargins
        anchors.right: parent.right
        anchors.rightMargin: defaultMargins
        //anchors.horizontalCenter: parent.horizontalCenter
        //backGrdColor: "yellow"
        text: ">>"
        onBtnClick: _nextMessage()
    }

    MyButton {
        id: btnPrevious
        anchors.bottom: parent.bottom
        anchors.bottomMargin: defaultMargins
        anchors.left: parent.left
        anchors.leftMargin: defaultMargins
        //anchors.horizontalCenter: parent.horizontalCenter
        //backGrdColor: "yellow"
        text: "<<"
        visible: index > 0
        onBtnClick: _previousMessage()

    }

    function clear() {
        conversationArray = []
        imageNameArray = []
        imagePostionArray = []
        mirrorImageArray = []
        imageBottomArray = []
        index = 0
    }

    function show() {
        root.visible = true
        index = -1
        _nextMessage()
    }

    function showDelay(duration) {
        delayDuration = duration
        delayShowTimer.start()
    }

    function _nextMessage() {
        index++
        console.log("_nextMessage index: "+index)

        if (index >= conversationArray.length) {
            endDialog()
        }
    }

    function _previousMessage() {
        if (index <= 0)
            return;
        index--
    }



    //function addMessage5(conversation, imageName, imagePosition, mirror, imageBottom) - 5 argument function
    //conersation: message to display
    //imageName: image file name from one of the speakers
    //imagePosition: imagePosition == 1 => image at left, imagePosition == 2 => image at right, imagePosition == 0 => no image
    //mirror: show image has is = false, show image horizontally inverted (mirrored) = true
    //imageBottom: displays a image at the end of the conversation

    function addMessage5(conversation, imageName, imagePosition, mirror, imageBottom) {
        conversationArray.push(conversation)
        imageNameArray.push(imageName)
        imagePostionArray.push(imagePosition)
        mirrorImageArray.push(mirror)
        imageBottomArray.push(imageBottom)

        console.log("addMessage5 index: "+index)
        console.log("addMessage5 lenght: "+conversationArray.length)
    }

    function addMessage4(conversation, imageName, imagePosition, mirror) {
        conversationArray.push(conversation)
        imageNameArray.push(imageName)
        imagePostionArray.push(imagePosition)
        mirrorImageArray.push(mirror)
        imageBottomArray.push("") // default

        console.log("addMessage4 index: "+index)
        console.log("addMessage4 lenght: "+conversationArray.length)
    }

    function addMessage2(conversation, imageName) {
        conversationArray.push(conversation)
        imageNameArray.push(imageName)
        //add default images position left and right in default sequence left(1), right(2), left(1), right(2), ....
        imagePostionArray.push( (imagePostionArray.length % 2) ? 1 : 2) // refactor this to 0, but first make sure we dont break anything
        mirrorImageArray.push(false) // default
        imageBottomArray.push("") // default
        console.log("addMessage2 index: "+index)
        console.log("addMessage2 lenght: "+conversationArray.length)
    }

    function addMessage(conversation) {
        conversationArray.push(conversation)
        //add default images names in imageLeft and imageRight in default sequence imageRight, imageRight, imageRight, imageRight, ...
        imageNameArray.push( (imageNameArray.length % 2) ? imageLeft : imageRight)
        //add default images position left and right in default sequence left(1), right(2), left(1), right(2), .... <-- remove this
        imagePostionArray.push( (imagePostionArray.length % 2) ? 1 : 2) // refactor this to 0, but first make sure we dont break anything
        mirrorImageArray.push(false) // default
        imageBottomArray.push("") // default
    }

    property real delayDuration: 2000
    Timer {
        id: delayShowTimer
        running: false
        repeat: false
        interval: delayDuration
        onTriggered: {
            show()
        }
    }

}
