import QtQuick 2.12
import QtQuick3D //1.15
import Placement 1.0
import "keyboardManager"
import "spaceship"
import "libraries"
import "elements"

Item {
    id: rootSpaceView

    onVisibleChanged: {

        if (visible) {
            startLevel()
        }
        else {
            endLevel()
        }

    }

    signal landInBadStar()
    signal landInEarth()
    signal landInPluto()

    property alias view3D: veiwSpaceTemplate

    View3D {
        id: veiwSpaceTemplate

        anchors.fill: parent
        renderMode: View3D.Offscreen

        environment: showSkybox ? sceneEnviroment : sceneEnviroment4Android
        //environment: sceneEnviroment4Android

        SceneEnvironment {
            id: sceneEnviroment
            //backgroundMode: SceneEnvironment.Color
            backgroundMode: SceneEnvironment.SkyBox
            antialiasingMode: SceneEnvironment.MSAA
            //antialiasingQuality: SceneEnvironment.VeryHigh
            //aoStrength: 100//aoEnabled ? 100 : 0

            lightProbe: Texture {
                source: "qrc:/images/skybox/galaxy.hdr"
                //source: "qrc:/images/skybox/galaxy.ktx"
                //source: "qrc:/images/skybox.hdr"
            }
            //clearColor: "black"
        } //environment: SceneEnvironment


        SceneEnvironment {
            id: sceneEnviroment4Android
            backgroundMode: SceneEnvironment.Color
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.VeryHigh
            clearColor: "#01010f"
        }

        //DirectionalLight{
          //  eulerRotation.x: 90
        //}

        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
            //eulerRotation.x: -90//-45
            eulerRotation.y: -90
            eulerRotation.x: -45
        }

        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
            eulerRotation.y: -120
           // eulerRotation.x: 10
        }
        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
            eulerRotation.y: 120
           // eulerRotation.x: 10
        }

        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
            eulerRotation.x: 90
        }
        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
            eulerRotation.x: -90
        }


        Node {
            id: space

            CameraNode {
                id: cameraNode
                position: starship.position
                rotation: starship.rotation
                //position: keybConnect.placement.position
                //rotation: keybConnect.placement.direction
            }

            SpaceShip3D {
            //Spaceship2 {
                id: starship
                type: "hero"
                //position: keybConnect.placement.position
                //shipPlacement.direction: keybConnect.placement.direction
                //rotation: keybConnect.placement.direction
                //position: camera.placement.position
                //rotation: camera.placement.direction
                //x: -6000
                //position: Qt.vector3d(-3000,0,0)

                //shipPlacement.position: Qt.vector3d(-3000,0,0)

              //  shipPlacement.position: keyb2.target.position
              //  shipPlacement.direction: keyb2.target.direction

                isFlying: rootSpaceView.visible

                Model {
                    id: targetSphere
                    source: "#Sphere"
                    x: 1500
                    scale: Qt.vector3d(0.2, 0.2, 0.2)
                    materials: [ DefaultMaterial {diffuseColor: "white"}]
                }

                Node {
                    id: aimNode
                    x: 1500
                    eulerRotation.y: 90
                    Item {
                        width: 200
                        height: 200
                        anchors.centerIn: parent
                        Image {
                            id: aimImage
                            source: "qrc:/images/AimIcon.png"
                            anchors.centerIn: parent
                            anchors.fill: parent
                            mipmap: true
                            visible: false
                        }
                    }
                }

            }//SpaceShip3D

        }//Node id:space




    }//View3D

    CommandKeyboard2 {
        id: keyb2
        focus: rootSpaceView.visible
        controlledEntity: starship.shipPlacement
        camera: cameraNode

        onSigShoot: createBullets()
        onStartStop: starship.startStop()

        onStartYawRight: starship.startYawRight()
        onStartYawLeft: starship.startYawLeft()
        onStopYaw: starship.stopYaw()
    }

    MultiTouchWheelPad2 {
       id: commandTouchPad
       anchors.left: parent.left
       anchors.bottom: parent.bottom
       anchors.margins: defaultMargins

       controlledEntity: starship.shipPlacement
       camera: cameraNode

       onStartYawRight: starship.startYawRight()
       onStartYawLeft: starship.startYawLeft()
       onStopYaw: starship.stopYaw()

       onPoint1Clicked: {
           createBullets()
       }

       onPoint2Clicked: {
           createBullets()
       }       
    } //MultiTouchWheelPad2

    TouchAccelerator {

        controlledEntity: starship.shipPlacement
        Component.onCompleted: {
            sigMoveFront.connect( keyb2.key_moveFront.isPressed )
            sigMoveBack.connect( keyb2.key_moveBack.isPressed )
            sigPressed.connect( keyb2.key_moveFront.pressed )
            sigReleased.connect( keyb2.key_moveFront.released )
        }
//        onMoveFront: keyb2.moveFrontPressed
    }

    ButtonA {
        id: btnClose
        anchors.margins: defaultMargins
        anchors.top: parent.top
        anchors.right: parent.right
        source: "qrc:/images/buttons/btn_close.png"
        onClick: parent.click()
    }
    signal click()

    ButtonA {
        anchors.margins: defaultMargins
        anchors.top: btnClose.bottom
        anchors.right: parent.right
        source: "qrc:/images/buttons/btn_close.png"
        onClick: showAssets = !showAssets
    }

    Text {
        id: stats
        text: qsTr("fps: ")+ veiwSpaceTemplate.renderStats.fps
        color: "red"
    }


    //As of today, Android does not support skybox for SceneEnvironment
    //so create black background articial stars, with positions realtive to the spaceship position
    //that way they will always be at "infinite" position from the spaceship
    //Update: Dont use random stars, skybox is replaced in android with a sphere "fake skybox"
    /*function createRandomStars4Android() {
        var starComponent = Qt.createComponent("qrc:/elements/Star.qml");
        var starObj = starComponent.createObject(space)
        //starObj.position = starship.position + Qt.vector3d(200, 0, 0)
        var min = 200
        var max = 5000
        var distX = lib.randomMinMaxPosNeg(min, max)
        var distY = lib.randomMinMaxPosNeg(min, max)
        var distZ = lib.randomMinMaxPosNeg(min, max)
        starObj.position.x = Qt.binding(function() { return starship.position.x + distX })
        starObj.position.y = Qt.binding(function() { return starship.position.y + distY })
        starObj.position.z = Qt.binding(function() { return starship.position.z + distZ })
    }*/

    function createBullets() {

        soundShots.stop()
        //if (!soundShots.playing)
        //if (soundShots.playbackState !== soundShots.PlayingState)
         soundShots.play()

        var bulletColor = "DeepSkyBlue"
        var rightBullet

        var shapeComponent = Qt.createComponent("qrc:/elements/SpaceShipBullet.qml");
        //if (shapeComponent.status === Component.Ready)
            rightBullet = shapeComponent.createObject(space)
        //else
          //  console.log("Error creating spaceship bullet")
        rightBullet.bulletColor = bulletColor
        rightBullet.bulletRotation = starship.rotation
        rightBullet.bulletPosition = starship.position
        rightBullet.roll(starship.rollAngle)
        rightBullet.moveRight(100)

        //left bullet----------------------------------------
        let leftBullet = shapeComponent.createObject(space)
        leftBullet.bulletColor = bulletColor
        leftBullet.bulletRotation = starship.rotation
        leftBullet.bulletPosition = starship.position
        leftBullet.roll(starship.rollAngle)
        leftBullet.moveLeft(100)

        rightBullet.fire()
        leftBullet.fire()
    }



    function startLevel() {

        backgroundMusic.play()

        /*
        if (showSkybox) {
            for (var i=0; i< 100; i++){
                createRandomStars4Android()
            }
        }//if
*/

    }

    function endLevel() {
        backgroundMusic.stop()
        destroyObjects()
    }

    signal destroyObjects()



}

//https://visibleearth.nasa.gov/collection/1484/blue-marble
//https://www.nasa.gov/audience/formedia/features/Merchandising_Guidelines.html
//https://www.nasa.gov/audience/formedia/features/Advertising_Guidelines.html
//https://www.solarsystemscope.com/textures/ - planet textures
