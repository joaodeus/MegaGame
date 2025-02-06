import QtQuick //2.12
import "../elements"

Image {
    id: root
    anchors.fill: parent

    source: "qrc:/images/skybox/galaxy5.png"

    signal exit()
    MouseArea {
        anchors.fill: parent
        onClicked: {
        }
    }

    ConversationBoard {
        id: conversationB
        //width: 90*mm
        //height: 45*mm
        width: parent.width * 0.8
        height: parent.height * 0.8
        imageBottomWidth: parent.width * 0.4
        imageBottomHeight: parent.height * 0.4

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        visible: false
        onEndDialog: {
            exit()
        }
    }

    onVisibleChanged: {
        if (visible) {
            createDialogueIntro()
            conversationB.show()
        }
    }

    //visible ? {conversationB.show()}  :""

    function createDialogueIntro() {

        conversationB.clear()

        conversationB.imageLeft = "heroHead.png"
        conversationB.imageRight = "pandoraHead.png"

        conversationB.addMessage5(qsTr("You are Captain David from the intergalatic squad. ")
                                       ,"", 0, false, "heroHead.png")

        conversationB.addMessage5(qsTr("Your first mission is to fly to a small planet in the Milky Way. "
                                       +"Search for this planet in the galaxy.")
                                       ,"", 0, false, "milkyWayPlanet.png")

        conversationB.addMessage5(qsTr("Press and slide anywhere in the right side of the screen, "
                                       + "a rotation wheel will appear, to rotate your spaceship move right, left, up, down. "
                                       + "If you are using a keyboard, use the arrows keys Up, Down, Left, Right, Q , E."
                                       +" To accelerate the spaceship, press the screen upper left blue arrows or the R key."),
                                  "", 0, true, "/conversationBoardImages/spaceshipRotate.png")

        conversationB.addMessage5(qsTr("Press and slide anywhere in the left side of the screen, "
                                       + "a slide wheel will appear, to slide your spaceship move right, left, up, down. "
                                       + "If you are using a keyboard, use the arrows keys W, A, S, D and Q, E"),
                                  "", 0, true, "/conversationBoardImages/spaceshipSlide.png")

        conversationB.addMessage5(qsTr("Click anywhere in the screen to fire, or use the key Space."
                                       +" If you are rotating / sliding with one finger, use other finger to click to fire."),
                                  "", 0, true, "/conversationBoardImages/spaceshipFire.png")


        conversationB.addMessage5(qsTr("Your mission is about to start, go now brave warrior.")
                                       ,"", 0, false, "heroHead.png")

    }

}
