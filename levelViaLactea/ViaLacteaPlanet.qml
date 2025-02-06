import QtQuick //2.15
import QtQuick3D
import "../"
import "../libraries"
import "../elements"
import "../assetsmodels/cow"
import "../assetsmodels/cowPerson"

import "../assetsmodels/Building1_Large"
import "../assetsmodels/Houses_FirstAge_2_Level2"

import "../spaceship"

import "../assetsmodels/tree2"
import "../assetsmodels/Mountain_Group_2"
import "../assetsmodels/Resource_PineTree_Group"

TemplatePlanet {
    id: root

    onVisibleChanged: visible ? startLevel() : endLevel()

    function startLevel() {
        createInstancedPineTrees()
        currentGame.triggerCreateEnemiesSpaceShips = true
        currentGame.triggerSpace180Rotation = true
    }

    function endLevel() {
        deleteInstancedPineTrees()
    }

    property int count: 0

    function createInstancedPineTrees() {

        var component = Qt.createComponent("qrc:/elements/DynamicInstanceListEntry.qml")
        for (var i=0; i< Math.PI*2; i+= (Math.PI/20)) {
            var radius = 5000
            var entry = component.createObject(world)
            entry.scale = Qt.vector3d(5,7,5)
            //entry.position = Qt.vector3d(radius * Math.cos(i), 75, radius * Math.sin(i))
            entry.position = Qt.vector3d(radius * Math.cos(i), 0, radius * Math.sin(i))
            instanceListPineTrees.instances.push(entry)
            count++
            console.log("count: "+count)
        }
    }

    function deleteInstancedPineTrees()
    {
        while (instanceListPineTrees.instances.length > 0) {
            let instance = instanceListPineTrees.instances.pop();
            instance.destroy();
            //count = instances.length
            count--
            console.log("count: "+count)

        }
    }

    Node {
        parent: world

        CowPerson {
            id: cowPerson
         //   parent: world
            position: Qt.vector3d(400, 0, -100)
            property real sca: 0.6
            scale: Qt.vector3d(sca, sca, sca)
            eulerRotation.y: -90
        }

        Node {
            id: cowBarn
            visible: showAssets
            position: Qt.vector3d(1800,0,-300)

            Cow {
                id: cow
               // parent: world
                position: Qt.vector3d(-200, 0, 0)
                //position: Qt.vector3d(1200, 0, -200)
                property real sca: 0.35
                scale: Qt.vector3d(sca, sca, sca)
                eulerRotation.y: -90
            }
            Houses_FirstAge_2_Level2 {
                id: barn
                eulerRotation.y: 180
                //position: Qt.vector3d(1400,0,-200)
                property real sc: 4
                scale: Qt.vector3d(sc, sc, sc)
            }

            Tree2 {
                scale: Qt.vector3d(60,60,60)
                position: Qt.vector3d(-100,0,400)
                eulerRotation.y: -90
            }

            Tree2 {
                scale: Qt.vector3d(60,60,60)
                position: Qt.vector3d(-100,0,-400)
                eulerRotation.y: 90
            }
        }

        Building1_Large {
            id: cowPalace
            eulerRotation.y: -90
            position: Qt.vector3d(3500,0,1500)
            property real sc: 2.5
            scale: Qt.vector3d(sc, sc, sc)
            visible: showAssets
        }


        SpaceShip3D {
            id: spaceShip
            type: "hero"
            //shipPosition: Qt.vector3d(300,50*scale.y,-300)
            //position: Qt.vector3d(0, 0,-600)
            position: Qt.vector3d(400,50*scale.y,-800)
            isFlying: false
            scale: Qt.vector3d(2,2,2)
        }

        Resource_PineTree_Group{
            //scale: Qt.vector3d(5,5,5)
            instancing: instanceListPineTrees
            visible: showAssets
        }

        InstanceList {
            id: instanceListPineTrees
            //instances: [instance1, instance2, instance3]
        }
    }

    ConversationBoard {
        id: conversationB
        width: 90*mm
        height: 45*mm
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        visible: false
    }

    MessageBoard {
        id: messageB
        width: 90*mm
        height: 25*mm
        text: qsTr("Hello Worl :)")
        //anchors.centerIn: parent
        textPixelSize: 18
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        showCancelBtn: true
        onOk: {
            visible = false
            if (action === 1) {
                //parent.clickFlyToSpace();
                click()
                action=0
            }

        }
        onCancel: visible = false
        visible: false
        property int action: 0
    }


    CheckEntityNear {
        target: heroNode
        me: spaceShip
        distanceNear: 300
        isEnabled: parent.visible
        debugInfo: "spaceShip in MilkyWay planet"
        onTargetChangedNear: {
            conversationB.clear()
            messageB.text = qsTr("Do you want to fly again ?")
            messageB.action = 1
            messageB.visible = true
        }
        onTargetChangedFar: {
            messageB.action = 0
            messageB.visible = false
        }
    }


    CheckEntityNear  {
        target: heroNode
        me: cowPerson
        distanceNear: 200
        isEnabled: parent.visible
        debugInfo: "cowPerson in via lactea planet"
        onTargetChangedNear: {
            createDialogueCowPerson()
            conversationB.show()
        }
        onTargetChangedFar: {
            conversationB.visible = false
        }
    }

    CheckEntityNear  {
        target: heroNode
        me: cowBarn
        distanceNear: 600
        isEnabled: parent.visible
        debugInfo: "cow in via lactea planet"
        onTargetChangedNear: {
            createDialogueQueen()
            conversationB.show()
        }
        onTargetChangedFar: {
            conversationB.visible = false
        }
    }


    function createDialogueCowPerson() {
        conversationB.clear()
        conversationB.imageLeft = "heroHead.png"
        conversationB.imageRight = "cowPersonFace.png"
        conversationB.addMessage4(qsTr("Hello Captain, I'm buttler James! "
                                   + "We were expecting you. Please go talk to our queen Lady Mu, she is right behind me, outside the Royal Palace. "
                                   + "She will explain your mission." ), "cowPersonFace.png", 1, true)
        conversationB.addMessage4(qsTr("Hello buttler James.\nWhere is your queen? I only see a cow."),
                                  "heroHead.png", 2, false)
        conversationB.addMessage4(qsTr("That is our venerable queen, Lady Mu!\n")
                                 , "cowPersonFace.png", 1, true)
        conversationB.addMessage4(qsTr("Ohh, ok."),
                                  "heroHead.png", 2, false)
    }

    function createDialogueQueen() {
        conversationB.clear()
        conversationB.imageLeft = "heroHead.png"
        conversationB.imageRight = "cowFace.png"
        conversationB.addMessage4(qsTr("Good morning Captain, I'm queen Lady Mu! "),
                                  "cowFace.png", 1, true)
        conversationB.addMessage4(qsTr("Good morning your Highness Queen Lady Mu."),
                                  "heroHead.png", 2, false)
        conversationB.addMessage4(qsTr("As you know our MilkyWay planet is one of biggest intergalactic milk traders."
                                       +"\nRecently our comercial spaceships have been under attack by enemy forces."
                                       )
                                 , "cowFace.png", 1, true)

        conversationB.addMessage4(qsTr("Your mission is to destroy those enemy spaceships."
                                       + "\nThere will be a big reward for you."
                                       )
                                 , "cowFace.png", 1, true)


        conversationB.addMessage4(qsTr("Ok your Highness."),
                                  "heroHead.png", 2, false)


        conversationB.addMessage4(qsTr("Now go back to your spaceship, Captain."+
                                       " When you leave our planet, you will find them. "
                                       + "Good luck and Godspeed."
                                       )
                                 , "cowFace.png", 1, true)

    }


}
