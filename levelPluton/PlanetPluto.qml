import QtQuick 2.12
import QtQuick3D //1.15
import Placement 1.0
import "../keyboardManager"
import "../elements"
import "../models"
import "../person3d"
import "../spaceship"
import "../libraries"
import "../levelDen"
import "../"
//import "../modelsCharaters/boyAj/running"
//import "../modelsCharaters/boyAj/idle"
//import "../models/boyAj/walking"

Item {
    id: planetPluton

    //property real castleWidth: castleHeight*1.4
    //property real castleHeight: 200 * mm

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

        environment: sceneEnviroment4Android //Qt.platform.os === "android" ? sceneEnviroment4Android : sceneEnviroment
        SceneEnvironment {
            id: sceneEnviroment
            //backgroundMode: SceneEnvironment.Color
            backgroundMode:  SceneEnvironment.SkyBox
            antialiasingMode: SceneEnvironment.MSAA
            //antialiasingQuality: SceneEnvironment.VeryHigh
            //aoStrength: 100//aoEnabled ? 100 : 0

            //https://free3d.com/3d-model/beautiful-scenery-morning-evening-night-370168.html
           lightProbe: Texture {
                //source: "qrc:/images/skybox/kloppenheim_02_2k.ktx"
                source: "qrc:/images/skybox/kloppenheim_02_2k.hdr"
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
            clearColor: "darkblue"
        }

        /*DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            eulerRotation.x: -90
            castsShadow: true
            //shadowFactor: 60
        }

        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            eulerRotation.x: 180
            castsShadow: true
            //shadowFactor: 60
        }

        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            castsShadow: true
            //shadowFactor: 60
        }*/

        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            //eulerRotation.y: 120
            castsShadow: true
            //shadowFactor: 60
        }

        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            eulerRotation.y: 120
            castsShadow: true
            //shadowFactor: 60
        }

        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            eulerRotation.y: -120
            castsShadow: true
            //shadowFactor: 60
        }

        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            eulerRotation.x: -90
            castsShadow: true
            //shadowFactor: 60
        }

        /*CameraMovement {
            id: camera
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
        }


    }//View
    // front view --------------------------------------------------------



    Node {
        id: world


        Node {
            id: heroNode

            position: placement.position
            rotation: placement.direction
            /*Placement{
                id: placement
                position: Qt.vector3d(0,0,0)
            }*/
            ExplorationCar {
                scale: Qt.vector3d(40, 40, 40)
                eulerRotation.y: 90
            }

            /*Aj_SlowRun {
                id: aj_running
                eulerRotation.y: 90
                visible: walking
                walking: (commandTouchPad.wheelPad_SlideUp || commandTouchPad.wheelPad_SlideDown
                         || keyb2.moveFrontPressed || keyb2.moveBackPressed
                         || keyb2.moveRightPressed || keyb2.moveLeftPressed)
                            && parent.visible
                walkFront: !(commandTouchPad.wheelPad_SlideDown || keyb2.moveBackPressed)
            }

            AjIdle {
                id: aj_idle
                eulerRotation.y: 90
                //scale: aj_walking.scale
                //visible: false //!aj_walking.visible
                visible: !aj_running.visible
                //animation: visible
                //y: aj_walking.y

            }*/

        }//heroNode

        SnowMan{
            id: snowMan
            //eulerRotation.y: 180
            z: 200
            //x: 100
            y: 40
        }

        Placement{
            id: placement
            position: Qt.vector3d(0,0,0)
        }

        CheckEntityNear {
            target: heroNode
            me: spaceShip
            distanceNear: 300
            isEnabled: planet.visible
            debugInfo: "debugInfo Planet"
            onTargetChangedNear: {
                console.log("change to near......................")
                messageB.visible = true
            }
            onTargetChangedFar: messageB.visible = false
        }

        SpaceShip3D {
            id: spaceShip
            type: "hero"
            shipPosition: Qt.vector3d(300,50*scale.y,-300)
            isFlying: false
            scale: Qt.vector3d(2,2,2)

        }

        Model {
            position: Qt.vector3d(5000,0,0)
            source: "#Sphere"
            opacity: 1
            /*materials: [ DefaultMaterial {
                    diffuseColor: "white"
                }
            ]*/

            materials: [ PrincipledMaterial {
                    baseColorMap: Texture {
                        source: "qrc:/images/textures/mountainTexture.png"
                        //source: "qrc:/images/planetsTextures/plu0rss1.png"
                        scaleU: 1.0
                        scaleV: 1.0
                    }
                }
            ]
            /*materials: [ DefaultMaterial {
                    diffuseColor: "brown"
                }
            ]*/
            scale: Qt.vector3d(30, 50, 30)
        }



        Model {
            y: -0.5
            source: "#Rectangle"
            scale: Qt.vector3d(1000, 1000, 1)//scale z has no effect
            eulerRotation.x: -90
            //materials: DefaultMaterial {
              //  diffuseColor: "brown"//Qt.rgba(0.8, 0.8, 0.6, 1.0)
            //}
            materials: [
                PrincipledMaterial {
                    baseColorMap: Texture {
                        source: "qrc:/images/planetsTextures/plu0rss1.png"
                        //source: "qrc:/images/textures/riverTexture.png"
                        scaleU: 100
                        scaleV: 100
                    }
                }
            ]
        }//Model

    }//world

    CommandKeyboard2 {
        id: keyb2
        focus: parent.visible
        controlledEntity: placement
        camera: cameraNode

        onSigShoot: {
            createFireBall()
            timerClaireShoot.start()
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
    }

    MessageBoard {
        id: messageB
        text: qsTr("Do you want to fly again ?")
        anchors.centerIn: parent
        showCancelBtn: true
        onOk: {
            visible = false
            parent.clickFlyToSpace()
        }
        onCancel: visible = false
        visible: false
    }

    ButtonA {
        anchors.margins: defaultMargins
        anchors.top: parent.top
        anchors.right: parent.right
        source: "qrc:/images/buttons/btn_close.png"
        onClick: parent.click()
    }

    signal click()
    signal clickFlyToSpace()

    Text {
        id: stats
        text: qsTr("fps: ")+ view3D.renderStats.fps
        color: "red"
    }

    Rectangle {
        id: chat
        width: parent.width * 0.5
        height: parent.height * 0.5
        anchors.centerIn: parent
        color: "pink"
        opacity: 0.8
        Text {
            id: name
            text: qsTr("Olá mundo..............")
        }
        visible: false
    }


    function startLevel() {

    }

    function endLevel() {
        destroyObjects()
    }

    signal destroyObjects()



}
