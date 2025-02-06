import QtQuick 2.12
import QtQuick3D //1.15
import QtQuick3D.Helpers
import QtQuick3D.Physics
import Placement 1.0
import "keyboardManager"
import "elements"
import "models"
import "person3d"
import "spaceship"
import "libraries"
import "menuOptions"
import "assetsmodels/pandora"
import "assetsmodels/hero"
//import "assetsmodels/Arrow"
import "assetsmodels/Arrow_Golden"
import "assetsmodels/Bow_Wooden"

Item {
    id: planet

    property alias view3D: view3D
    property alias world: world
    property alias heroNode: heroNode

    onVisibleChanged: {

        if (visible) {
            startLevel()
        }
        else {
            endLevel()
        }
    }

    // front view --------------------------------------------------------
    View3D {
        id: view3D
        anchors.fill: parent
        //width: parent.width
        //height: parent.height * 0.5
        //anchors.top: parent.top

        importScene: world
        //renderMode: View3D.Offscreen

        //environment: Qt.platform.os === "android" ? sceneEnviroment4Android : sceneEnviromentProcederal
        environment: sceneEnviroment4Android

        //environment: sceneEnviromentProcederal

        SceneEnvironment {
            id: sceneEnviromentProcederal
            clearColor: "white"
            backgroundMode: SceneEnvironment.SkyBox
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
            lightProbe: proceduralSky
        }

        Texture {
            id: proceduralSky
            textureData: ProceduralSkyTextureData {
              //  sunLongitude: -115
                groundBottomColor: "green"
                groundHorizonColor: "lightblue"
               // sunColor: "yellow"
              //  skyHorizonColor: "lightblue"
               // skyTopColor: "blue"
            }
        }

        SceneEnvironment {
            id: sceneEnviroment
            //backgroundMode: SceneEnvironment.Color
            backgroundMode:  SceneEnvironment.SkyBox
            antialiasingMode: SceneEnvironment.MSAA
            //antialiasingQuality: SceneEnvironment.VeryHigh
            //aoStrength: 100//aoEnabled ? 100 : 0

            //https://free3d.com/3d-model/beautiful-scenery-morning-evening-night-370168.html
           lightProbe: Texture {
                source: "qrc:/images/skybox/kloppenheim_02_2k.ktx"
                //source: "qrc:/images/skybox/kloppenheim_02_2k.hdr"
                mappingMode: Texture.Environment
                //mappingMode: Texture.UV
            }
            //clearColor: "skyblue"
        } //environment: SceneEnvironment

        SceneEnvironment {
            id: sceneEnviroment4Android
            backgroundMode: SceneEnvironment.Color
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.VeryHigh
            clearColor: "SkyBlue"
        }

        /*DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            //eulerRotation.x: -70
            eulerRotation.x: -70
            //eulerRotation.z: -30
            castsShadow: true
            //shadowFactor: 60
        }

        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            eulerRotation.x: -120
            castsShadow: true
            //shadowFactor: 60
        }
        */
        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            eulerRotation.y: 45
            eulerRotation.x: -45//-60
            castsShadow: true
            //shadowFactor: 60
        }

        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            eulerRotation.y: 45
            eulerRotation.x: -135//-120
            castsShadow: true
            //shadowFactor: 60
        }

        /*DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            castsShadow: true
            //shadowFactor: 60
        }*/

        CameraNode {
            id: cameraNode
            position: heroNode.position
            //position: Qt.vector3d(heroNode.position.x, heroNode.position.y, heroNode.position.z-300)
            rotation: heroNode.rotation
            distanceToEye: 300
            elevationToEye: 150
            //cameraYrotation: -80
            //camRotAnimDuration: 600
            //camMoveAnimDuration: 600
            //position: keybConnect.placement.position
            //rotation: keybConnect.placement.direction
            cameraType: menuOptions.cameraType
        }


    }//View
    // front view --------------------------------------------------------



    Node {
        id: world

        property bool walk: (commandTouchPad.wheelPad_SlideUp || commandTouchPad.wheelPad_SlideDown
                             || keyb2.moveFrontPressed || keyb2.moveBackPressed
                             || keyb2.moveRightPressed || keyb2.moveLeftPressed)
                         && planet.visible



        //! [plane]
        StaticRigidBody {
            position: Qt.vector3d(0, 1, 0)
            scale: Qt.vector3d(1000, 1000, 1)//scale z has no effect
            eulerRotation: Qt.vector3d(-90, 0, 0)
            collisionShapes: PlaneShape {}
            Model {
                source: "#Rectangle"
                materials: [
                    PrincipledMaterial {
                        baseColorMap: Texture {
                            source: "qrc:/images/textures/bekky-bekks-4njhXd_7DOg-unsplash.jpg"
                            scaleU: 100
                            scaleV: 100
                        }
                    }
                ]
                /*materials: DefaultMaterial {
                    diffuseColor: "green"
                }*/
                castsShadows: false
                receivesShadows: true
            }
        }
        //! [plane]


        /*Model {
            y: -0.5
            source: "#Rectangle"
            scale: Qt.vector3d(1000, 1000, 1)//scale z has no effect
            eulerRotation.x: -90
            castsShadows: false
            receivesShadows: true
            materials: [
                PrincipledMaterial {
                    baseColorMap: Texture {
                        source: "qrc:/images/textures/bekky-bekks-4njhXd_7DOg-unsplash.jpg"
                        scaleU: 100
                        scaleV: 100
                    }
                }
            ]
        }//Model*/

        Node{
            id: heroNode
            position: placement.position
            //onPositionChanged: console.log("pandora position:"+position)
            rotation: placement.direction
            children: pandora //horse //ajNode //carNode//boat
        }

        Node{
            id: heroFollower
            position: placement.positionFollower
            rotation: placement.direction
            children: hero //horse //ajNode //carNode//boat
        }

        Placement{
            id: placement
            //position: Qt.vector3d(0,0,-11000)
            position: Qt.vector3d(0, 0, 0)
            positionFollowerDistance: 200
            //positionFollowerAngle: 10
            followerActive: true
        }

        Hero {
            id: hero
            //x: 400
            eulerRotation.y: 180
            scale: Qt.vector3d(0.6, 0.6, 0.6)
            property bool myWalk: world.walk
            onMyWalkChanged: myWalk ? state = "stateRunning" : state = "stateWalk"
            anim16Walk.onStopped: state = "stateIddle"
            anim18ArrowShot.onStopped: {
                myWalk ? state = "stateRunning" : state = "stateWalk"
                createArrow(hero.parent)
                //createFireBall(hero.parent)
            }

            anim04Jump.onStopped: myWalk ? state = "stateRunning" : state = "stateIddle"

            Bow_Wooden {
                id: bow
                y: 180
                x: -140
                z: -50
                visible: hero.state === "stateArrowShoot"
                Node {
                    eulerRotation.z: 90
                    Arrow_Golden {
                    }
                }
            }
        }//Hero

        Pandora {
            id: pandora
            eulerRotation.y: 90
            scale: hero.scale
            property bool myWalk: world.walk
            onMyWalkChanged: myWalk ? state = "stateRunning" : state = "stateWalk"
            anim16Walk.onStopped: state = "stateIddle"
            anim04Jump.onStopped: myWalk ? state = "stateRunning" : state = "stateIddle"
            anim06FireBall.onStarted: timerShot.start()
            anim06FireBall.onStopped: myWalk ? state = "stateRunning" : state = "stateIddle"

            Timer {
                id:timerShot
                running: false
                interval: 550
                onTriggered: createFireBall(pandora.parent)
            }

        }//Pandora

    }//world


    ShowStatistics {
        view: view3D
    }

    CommandKeyboard2 {
        id: keyb2
        focus: parent.visible
        controlledEntity: placement
        camera: cameraNode

        onSigShoot: {
            pandora.state = "stateFireBall"
            hero.state = "stateArrowShoot"
        }

        onKeyPressed: function (keyPressed_){
            if (keyPressed_ === Qt.Key_F1)
                menuOptions.cameraIndex = 0

            if (keyPressed_ === Qt.Key_F2)
                menuOptions.cameraIndex = 1

            if (keyPressed_ === Qt.Key_F3)
                menuOptions.cameraIndex = 2

            if (keyPressed_ === Qt.Key_F4)
                menuOptions.cameraIndex = 3

            if (keyPressed_ === Qt.Key_F5)
                menuOptions.cameraIndex = 4

            if (keyPressed_ === Qt.Key_J){
                pandora.state = "stateJump"
                hero.state = "stateJump"
            }

        }

        pitchDown.value: 0 //remove default value Qt.Key_Up from pitchDown key
        pitchUp.value: 0 //remove default value Qt.Key_Down from pitchUp key

        key_moveFront.value: Qt.Key_Up // now assing Qt.Key_Up to key_moveFront
        key_moveBack.value: Qt.Key_Down // now assing Qt.Key_Down to key_moveBack
    }

    MultiTouchWheelPadAdaptive {
        id: commandTouchPad
        camera: cameraNode
        controlledEntity: placement
        adaptativeMode: true

        onDoubleClickedP1: {
            pandora.state = "stateFireBall"
            hero.state = "stateArrowShoot"
        }
        onDoubleClickedP2: {
            pandora.state = "stateFireBall"
            hero.state = "stateArrowShoot"
        }
        onPressAndHoldP1: {
            pandora.state = "stateJump"
            hero.state = "stateJump"
        }
        onPressAndHoldP2: {
            pandora.state = "stateJump"
            hero.state = "stateJump"
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
        textPixelSize: 18
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        showCancelBtn: true
        onCancel: visible = false
        visible: false
        property int action: 0
    }

    ButtonA {
        id: btnCamera
        anchors.margins: defaultMargins
        anchors.top: parent.top
        //anchors.top: sli.bottom
        anchors.left: parent.left
        source: "qrc:/images/buttons/camera.png"
        onClick: {
            btnCamera.visible = false
            menuCamera.visible = true
        }
    }

    MenuCamera {
        id: menuCamera
        anchors.margins: defaultMargins
        //anchors.top: sli.bottom
        anchors.top: parent.top
        anchors.left: parent.left
        visible: false
        onClose: {
            menuCamera.visible = false
            btnCamera.visible = true
        }
    }

    signal click()

    ButtonA {
        id: btnClose
        anchors.margins: defaultMargins
        anchors.top: parent.top
        anchors.right: parent.right
        source: "qrc:/images/buttons/btn_close.png"
        onClick: parent.click()
    }

    ButtonA {
        anchors.margins: defaultMargins
        anchors.top: btnClose.bottom
        anchors.right: parent.right
        source: "qrc:/images/buttons/btn_close.png"
        onClick: showAssets = !showAssets
    }


    function createArrow(node) {
        var arrowComponent = Qt.createComponent("qrc:/assetsmodels/Arrow_Golden/Arrow_Golden.qml");
        let arrowObj = arrowComponent.createObject(world)

        if (levelStates.menuOptions.volumeValue > 0)
            arrowShots.stop()
        //if (!soundShots.playing)
        //if (soundShots.playbackState !== soundShots.PlayingState)
        if (levelStates.menuOptions.volumeValue > 0)
            arrowShots.play()

        arrowObj.bulletPosition = node.position
        arrowObj.bulletRotation = node.rotation
        arrowObj.eulerRotation.z = -90

        arrowObj.shotDuration = 2000
        arrowObj.moveUp(100)
        arrowObj.fire()
    }

    function createFireBall(node) {

        //console.log("fireball........................................................................................")
        var fireBallComponent = Qt.createComponent("qrc:/elements/FireBall.qml");
        let bullet = fireBallComponent.createObject(world)


        if (levelStates.menuOptions.volumeValue > 0)
            fireBallShots.stop()
        //if (!soundShots.playing)
        //if (soundShots.playbackState !== soundShots.PlayingState)
        if (levelStates.menuOptions.volumeValue > 0)
            fireBallShots.play()



        //bullet.y = 100
        bullet.scaleBall = 1
        bullet.fireballColor = "white"
        bullet.shotDuration = 2000

        bullet.bulletPosition = node.position //heroNode.position
        bullet.bulletRotation = node.rotation//heroNode.rotation

        bullet.moveUp(100)
        //bullet.d = heroNode.rotation

        bullet.fire()
    }

    function startLevel() {
        //createTrees()
    }

    function endLevel() {
        destroyObjects()
    }

    signal destroyObjects()

}
