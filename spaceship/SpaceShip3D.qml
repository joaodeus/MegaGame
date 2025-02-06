import QtQuick //2.3
import QtQuick3D //1.15
import QtQuick3D.Physics
import QtQuick3D.Particles3D
import Placement 1.0
import "../elements"



Node {
    id: root

    property bool isHeroShip: true
    //property vector3d adversaryPosition
    property alias adversaryPosition: shipPlacement.positionAdversary


    property real spaceShipDistanceRange: 5000

    property bool startFight: adversaryDistance < spaceShipDistanceRange

    property vector3d aiPosition: shipPlacement.position
    property quaternion aiDirection: shipPlacement.direction


    property real adversaryDistance: lib.distance3D(position.x, position.y, position.z,
                                                    adversaryPosition.x,
                                                    adversaryPosition.y,
                                                    adversaryPosition.z)

    onAdversaryPositionChanged: {
        //console.log("onAdversaryPositionChanged: "+adversaryPosition)
        //console.log("shipPlacement.position: "+shipPlacement.position)
        //console.log("adversaryDistance: "+adversaryDistance)

        if (startFight) {
            //shipPlacement.positionAdversary
            //shipPlacement.rotateToAdversaryShipPosition()
            if (!anim.running) {

                /*placementAux.position = shipPlacement.position
                placementAux.direction = shipPlacement.direction
                anim.from = placementAux.direction
                placementAux.rotation180()
                anim.to = placementAux.direction
                */
//                shipPlacement.directionAdversary =
                anim.from = shipPlacement.direction
                //console.log("shipPlacement.direction: "+shipPlacement.direction)
                //console.log("shipPlacement.calculateQuaternionAdversary(): "+shipPlacement.calculateQuaternionAdversary())
                //anim.to = shipPlacement.calculateQuaternionAdversary()
                //var up = Qt.vector3d(shipPlacement.up().x(), shipPlacement.up().y(), shipPlacement.up().z())
                anim.to = Quaternion.lookAt(shipPlacement.position, shipPlacement.positionAdversary)
                //console.log("anim.to: "+anim.to)

                anim.start()
            }
        }
    }

    Placement{
        id: placementAux
    }

    shipPlacement.onDirectionChanged: console.log("shipPlacement.direction: "+shipPlacement.direction)
    QuaternionAnimation on shipPlacement.direction {
        id: anim
        running: false
        duration: 3000
        onStopped: root.start()
    }

    //position: isHeroShip ? shipPlacement.position : aiPosition
    //rotation: isHeroShip ? shipPlacement.direction : aiDirection
    position: shipPlacement.position
    rotation: shipPlacement.direction

    property alias shipPlacement: shipPlacement
    property alias shipPosition: shipPlacement.position
    property alias shipDirection: shipPlacement.direction
    Placement{
        id: shipPlacement
    }


    property color colorBody: "blue"
    property color colorCockpit: "lightblue"
    property color colorWings: "red"
    property color colorShooters: "yellow"

    property string type: "enemy"

    signal startYawRight()
    signal stopYaw()
    signal startYawLeft()
    signal destroySpaceship()
    //signal stopYawLeft()

    property real rollAngle: 0

    property int explosionDuration: 3000


    NumberAnimation {
        running: energy <= 0 && type === "enemy"
        targets: [root, psystemEngine]
        //target: root
        property: "opacity"
        duration: explosionDuration
        from: 1.0
        to: 0.0
        easing.type: Easing.OutCubic
        onStarted: psystemExplosion.paused = false
        onStopped: {
            //starshipModel.opacity = 1
            //console.log("onStopped:"+running)
            root.destroy()
        }
    }

    Timer {
        id: teste
        running: false
        interval: 2000
        repeat: true
        onTriggered: {
            energy--;
        }
    }//Timer



    onStartYawRight: { roolAnimation.stop(); rollAngle = 30; roolAnimation.start() }
    onStopYaw: { roolAnimation.stop(); rollAngle = 0; roolAnimation.start() }

    onStartYawLeft: { roolAnimation.stop(); rollAngle = -30; roolAnimation.start() }
    //onStopYawLeft: { roolAnimation.stop(); rollAngle = 0; roolAnimation.start() }

    //onStartYawLeft: starshipModel.eulerRotation.x = -30
    //onStopYawLeft: starshipModel.eulerRotation.x = 0

    property vector3d dimensions: Qt.vector3d(300, 100, 220)
    Node {
        id: starshipModel

        NumberAnimation on eulerRotation.x {
            id: roolAnimation
            duration: 600
            to: rollAngle
            easing.type: Easing.OutQuad
        }

        property alias positionDynRigidBody: dynRigidBody.position
        DynamicRigidBody {
            id: dynRigidBody
            collisionShapes: [
                BoxShape {},
                SphereShape {}
                ,CapsuleShape{}
            ]

            Model {
                id: shipBody
                source: "#Sphere"
                scale: Qt.vector3d(3, 1, 1)
                castsShadows: true
                receivesShadows: true
                materials: DefaultMaterial {
                    diffuseColor: colorBody
                }
            }

            Model {
                id: cockpit
                source: "#Sphere"
                opacity: 0.7
                y: 35
                x: -50
                scale: Qt.vector3d(1, 0.6, 0.6)
                castsShadows: true
                receivesShadows: true
                materials: DefaultMaterial {
                    diffuseColor: colorCockpit
                }
            }

            Model {
                id: wings
                x: -60
                source: "#Cube"
                scale: Qt.vector3d(0.4, 0.01, 2)
                castsShadows: true
                receivesShadows: true
                materials: DefaultMaterial {
                    diffuseColor: colorWings
                }
            }

            SpaceShipShooter {
                id: shooterRight
                z: 100
                x: -50
                shooterColor: colorShooters
            }

            SpaceShipShooter {
                id: shooterLeft
                z: -100
                x: -50
                shooterColor: colorShooters
            }


            Model {
                id: tail
                x: -120
                y: 40
                eulerRotation.z: 15
                source: "#Cube"
                scale: Qt.vector3d(0.2, 0.6, 0.01)
                castsShadows: true
                receivesShadows: true
                materials: DefaultMaterial {
                    diffuseColor: colorWings
                }
            }//Model

            SpaceShipShooter {
                id: shooterTail
                x: -130
                y: 75
                shooterScale: Qt.vector3d(0.15, 0.5, 0.15)
                shooterColor: colorShooters
            }

        }//DynamicRigidBody

        ParticleSystem3D {
            id: psystemEngine
            running: isFlying
            visible: running
            eulerRotation.x: 90
            SpriteParticle3D {
                id: engineParticle
                sprite: Texture {
                    source: "qrc:/images/shipExplosion/sphere.png"
                }
                colorTable: Texture {
                    source: "qrc:/images/shipExplosion/colorTable.png"
                }
                maxAmount: 500
                fadeInDuration: 50
                fadeOutDuration: 200
                color: "#40808020"
                colorVariation: Qt.vector4d(0.2, 0.2, 0.2, 0.2)
                billboard: true
                blendMode: SpriteParticle3D.Screen
            }

            ParticleEmitter3D {
                particle: engineParticle
                x: -100
                scale: Qt.vector3d(0.2, 0.2, 0.2)
                shape: ParticleShape3D {
                    type: ParticleShape3D.Sphere
                }

                particleScale: 12.0
                particleEndScale: 4.0
                particleScaleVariation: 1.0
                velocity: VectorDirection3D {
                    direction: Qt.vector3d(-200, 0, 0)
                    directionVariation: Qt.vector3d(10, 10, 10)
                }
                emitRate: 400
                lifeSpan: 1000
            }
        }//ParticleSystem3D



        //Spaceship explosion when destroyed -------------------------------------------
        ParticleSystem3D {
            id: psystemExplosion
            //visible: false
            paused: true

            property real fireStrength: 300
            property real smokeStrength: 50
            property real sparklesStrength: 50

            scale: Qt.vector3d(4,40,60)

            SpriteParticle3D {
                id: particleFire
                sprite: Texture {
                    source: "qrc:/images/shipExplosion/sphere.png"
                }
                colorTable: Texture {
                    source: "qrc:/images/shipExplosion/colorTable.png"
                }
                maxAmount: 250
                color: "#ffffff"
                colorVariation: Qt.vector4d(0.0, 0.6, 0.8, 0.0)
                billboard: true
                blendMode: SpriteParticle3D.Screen
                fadeInDuration: 100
            }

            ParticleEmitter3D {
                id: fireEmitter
                x: 50
                particle: particleFire
                particleScale: 15
                particleEndScale: 6
                particleScaleVariation: 15
                particleEndScaleVariation: 10
                velocity: VectorDirection3D {
                    direction: Qt.vector3d(-psystemExplosion.fireStrength, 0, 0)
                    //directionVariation: Qt.vector3d(10 + psystemExplosion.fireStrength * 0.2, 8, 8)
                    directionVariation: Qt.vector3d(8, 8, 8)
                }
                emitRate: 800
                lifeSpan: 1000
                lifeSpanVariation: 500
            }
        }//Spaceship explosion when destroyed -------------------------------------------


    }//starshipModel




    property real velocity: 2*mm
    property bool isFlying: true

    property bool yawRight: false
    property bool yawLeft: false
    property bool pitchUp: false
    property bool pitchDown: false
    property bool rollRight: false
    property bool rollLeft: false
    property real rotateDelta: 0.5


    signal startStop()
    signal start()
    signal stop()
    onStartStop: isFlying = !isFlying
    onStart: isFlying = true
    onStop: isFlying = false
    //property string spaceShipName: ""
    TimerFrameAnimation {
        id: timerMove
        running: isFlying
        //interval: fps_ms
        //repeat: true
        onTriggered: {
            //console.log("spaceship " + " position:" + position + " velocity: "+ velocity)
            //console.log("shipPlacement: "+shipPlacement.position)
            shipPlacement.moveFront(velocity)
            //console.log("shipPlacement: "+shipPlacement.position)
            //parent.position = shipPlacement.position
            //parent.rotation =  shipPlacement.direction
        }
    }//FrameAnimation


    TimerFrameAnimation {
        id: timerRotation
        running: yawRight || yawLeft || pitchUp || pitchDown || rollRight || rollLeft
        //interval: fps_ms
        //repeat: true
        onTriggered: {

            if ( yawRight ) shipPlacement.rotateY(-rotateDelta)
            if ( yawLeft ) shipPlacement.rotateY(rotateDelta)
            if ( pitchUp ) shipPlacement.rotateZ(-rotateDelta)
            if ( pitchDown ) shipPlacement.rotateZ(rotateDelta)
            if ( rollRight ) shipPlacement.rotateX(rotateDelta)
            if ( rollLeft ) shipPlacement.rotateX(-rotateDelta)

        }
    }//FrameAnimation



    ////////-----------------------
    property int energy: 12

    signal iamHit()
    signal iAmDestroyed()

    onIamHit: {
        console.log("I am hit spaceship3D--------------------------------------------------------------"+energy)

        energy--
        if (energy<=0) {
            iAmDestroyed()
        }

    }

    function rotate180() {
        shipPlacement.rotation180()
    }


}//Node


