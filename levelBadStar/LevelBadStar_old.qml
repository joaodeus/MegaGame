import QtQuick 2.12
import QtQuick3D //1.15
import Placement 1.0

import "../keyboardManager"
import "../spaceship"
import "../"

Item {
    id: root

    /*CommandKeyboard2{
        id: keyb2
        focus: levelStates.spaceView.visible
        onSigShoot: console.log("shoot fired......................")
    }*/

    CommandKeyboard2 {
        id: keyb2
        focus: parent.visible
        controlledEntity: starship.shipPlacement
        camera: cameraNode

        onSigShoot: createBullets()
        onStartStop: starship.startStop()

        onStartYawRight: starship.startYawRight()
        onStopYaw: starship.stopYaw()
        onStartYawLeft: starship.startYawLeft()
    }

    View3D {
        id: view3D

        anchors.fill: parent
        renderMode: View3D.Offscreen

        environment: SceneEnvironment {
            //backgroundMode: SceneEnvironment.Color
            backgroundMode: SceneEnvironment.SkyBox
            antialiasingMode: SceneEnvironment.MSAA
            //antialiasingQuality: SceneEnvironment.VeryHigh
            //aoStrength: 100//aoEnabled ? 100 : 0

            lightProbe: Texture {
                source: "qrc:/images/skybox/galaxy.hdr"
                //source: "qrc:/images/skybox/galaxy.ktx"
                //source: "qrc:/images/skybox.hdr"
                mappingMode: Texture.Environment
                //mappingMode: Texture.UV
            }
            //clearColor: "black"
        } //environment: SceneEnvironment



        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
            eulerRotation.x: -60
        }

        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
            eulerRotation.x: -120
        }


        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
            eulerRotation.x: 60
        }

        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
            eulerRotation.x: 120
        }

        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
            eulerRotation.y: -90
        }

        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
            eulerRotation.y: 90
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

                isFlying: root.visible

                Model {
                    id: targetSphere
                    source: "#Sphere"
                    x: 1500
                    scale: Qt.vector3d(0.2, 0.2, 0.2)
                    materials: [ DefaultMaterial {diffuseColor: "white"}]
                }

            }

            SpaceShip3D {
                id: enemy
                colorBody: "grey"
                colorCockpit: "lightgrey"
                colorShooters: "grey"
                x: 600
                isFlying: false
            }



            BadStarNode {
                x: 1e4
                y: -500
            }

            Model {
                id: bomb
                source: "#Cube"
                materials: [ PrincipledMaterial {
                        baseColorMap: Texture {
                            //source: "qrc:/images/planetsTextures/bombs.png"
                            source: "qrc:/images/planetsTextures/texCube.png"
                            tilingModeHorizontal: Texture.ClampToEdge
                            tilingModeVertical: Texture.ClampToEdge
                            scaleU: 0.5
                            scaleV: 0.5
                        }
                    }]
                x: 150
                property real sc: 1
                scale: Qt.vector3d(sc, sc, sc)
                //eulerRotation.y: -90
            }//node moon



            Model {
                id: moon
                source: "#Sphere"
                materials: [ PrincipledMaterial {
                        baseColorMap: Texture {
                            source: "qrc:/images/planetsTextures/2k_moon.png"
                            scaleU: 1.0; scaleV: 1.0
                        }
                    }]
                x: 15000
                property real sc: 1
                scale: Qt.vector3d(sc, sc, sc)
                //eulerRotation.y: -90
            }//node moon



            Node {
                id: nodeNeptune
                //x: 2e4
                z: 2e4

                NumberAnimation on eulerRotation.y {
                    running: false
                    loops: Animation.Infinite
                    from: 0
                    to: 360
                    duration: 90000
                }
                Model {
                    id: planetNeptune
                    source: "#Sphere"
                    materials: [ PrincipledMaterial {
                            baseColorMap: Texture {
                                source: "qrc:/images/planetsTextures/2k_neptune.png"
                                scaleU: 1.0
                                scaleV: 1.0
                            }
                        }
                    ]
                    property real sc: 30
                    scale: Qt.vector3d(sc,sc, sc)
                    eulerRotation.y: -90
                }
            }// Node neptune


            Node {
                id: nodeEarth
                x: 2e4
                visible: false
                NumberAnimation on eulerRotation.y {
                    running: false
                    loops: Animation.Infinite
                    from: 0
                    to: 360
                    duration: 90000
                }
                Model {
                    id: planetEarth
                    source: "#Sphere"
                    materials: [ PrincipledMaterial {
                            baseColorMap: Texture {
                                source: "qrc:/images/planetsTextures/earth.png"
                                scaleU: 1.0
                                scaleV: 1.0
                            }
                        }
                    ]
                    property real sc: 100
                    scale: Qt.vector3d(sc,sc, sc)
                    eulerRotation.y: -90
                }

            }// node Earth






        }//Node id:space

        Placement {
            id: bulletaux
        }



        /*Model {
            id: asteroid
            source: "#Sphere"
            x: 1e5
            scale: Qt.vector3d(sc,sc, sc)
            materials: [ DefaultMaterial {diffuseColor: "orange"}]
            property real sc: 100
        }*/


    }//View3D


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

    /*MultiTouchWheelPad2 {
       id: commandTouchPad
       anchors.left: parent.left
       anchors.bottom: parent.bottom
       anchors.margins: defaultMargins



       onWheelRotationChangeToCenter: {
           stopSpaceShipDriftingRotation()
       }
       onPoint1Released: {
           stopSpaceShipDriftingRotation()
       }

       onWheelRotationChangeToUp: {
           stopSpaceShipDriftingRotation()
           cameraNode.driftPitchZRightStart()
       }

       onWheelRotationChangeToDown: {
           stopSpaceShipDriftingRotation()
           cameraNode.driftPitchZLeftStart()
       }

       onWheelRotationChangeToRight: {
           stopSpaceShipDriftingRotation()
           cameraNode.driftYawYRightStart()
       }

       onWheelRotationChangeToLeft: {
           stopSpaceShipDriftingRotation()
           cameraNode.driftYawYLeftStart()
       }

       onWheelRotationChangeToUpRight: {
           //stopSpaceShipDriftingRotation()
           cameraNode.driftYawYRightStart()
           cameraNode.driftPitchZRightStart()
       }

       onWheelRotationChangeToUpLeft: {
           //stopSpaceShipDriftingRotation()
           cameraNode.driftYawYLeftStart()
           cameraNode.driftPitchZRightStart()
       }

       onWheelRotationChangeToDownRight: {
           stopSpaceShipDriftingRotation()
           cameraNode.driftRollXRightStart()
       }

       onWheelRotationChangeToDownLeft: {
           stopSpaceShipDriftingRotation()
           cameraNode.driftRollXLeftStart()
       }

       onPoint1Clicked: {
           createBullets()
       }

       onPoint2Clicked: {
           createBullets()
       }

       //onPoint1IsPressed: console.log("Point1IsPressed: "+ cx + " : "+cy)
    } //MultiTouchWheelPad2
*/


    function stopSpaceShipDriftingRotation() {
        cameraNode.driftPitchZStop()
        cameraNode.driftRollXStop()
        cameraNode.driftYawYStop()
    }


    function createBullets() {

        var shapeComponent = Qt.createComponent("qrc:/spaceship/Bullet.qml");
        //let bullet = shapeComponent.createObject(space, {rotation: starship.rotation,position: starship.scenePosition,d: camera.front});

        bulletaux.position = starship.position
        bulletaux.direction = starship.rotation
        bulletaux.roll(starship.rollAngle)
        bulletaux.moveRight(100)

        //bulletaux.position = starship.rightShooter.position
        //bulletaux.direction = starship.rightShooter.direction


        var bulletColor = "DeepSkyBlue"

        let rightBullet = shapeComponent.createObject(space)
        rightBullet.shooterColor = bulletColor

        rightBullet.rotation = bulletaux.direction
        rightBullet.position = bulletaux.position
        rightBullet.d = bulletaux.front

        //rightBullet.position = starship.rightShooter.position
        //rightBullet.rotation = starship.rightShooter.direction
        //rightBullet.d = starship.rightShooter.front
        rightBullet.fire()

        let leftBullet = shapeComponent.createObject(space)
        leftBullet.shooterColor = bulletColor

        //leftBullet.position = starship.leftShooter.position
        //leftBullet.rotation = starship.leftShooter.direction
        //leftBullet.d = starship.leftShooter.front

        //bulletaux.roll(starship.rollAngle)
        bulletaux.moveLeft(200)
        leftBullet.rotation = bulletaux.direction
        leftBullet.position = bulletaux.position
        leftBullet.d = bulletaux.front
        leftBullet.fire()
    }

    function createSpaceshipBullets(spaceShip) {

        console.log("spaceShip.rightShooterPosition: "+spaceShip.rightShooterPosition)
        console.log("spaceShip.orientation: "+spaceShip.rotation)
        console.log("spaceShip.shooterDirection: "+spaceShip.shooterDirection)

        createBullet(spaceShip.rightShooterPosition, spaceShip.rotation, spaceShip.shooterDirection)
    }

    function createBullet(position, orientation, direction) {
        var shapeComponent = Qt.createComponent("qrc:/spaceship/Bullet.qml");
        var bulletColor = "white"
        let bullet = shapeComponent.createObject(space)
        bullet.shooterColor = bulletColor
        bullet.rotation = orientation
        bullet.position = position
        bullet.d = direction
        bullet.fire()
    }

}

//https://visibleearth.nasa.gov/collection/1484/blue-marble
//https://www.nasa.gov/audience/formedia/features/Merchandising_Guidelines.html
//https://www.nasa.gov/audience/formedia/features/Advertising_Guidelines.html
//https://www.solarsystemscope.com/textures/ - planet textures
