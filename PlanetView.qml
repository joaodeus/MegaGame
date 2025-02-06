import QtQuick 2.12
import QtQuick3D //1.15
import QtQuick3D.Helpers
import QtQuick.Controls
import QtQuick3D.Physics
import QtQuick3D.Physics.Helpers
import Placement 1.0
import PathRectangular 1.0
import PathCircular 1.0

import "keyboardManager"
import "elements"
import "models"
import "person3d"
import "qmlModels"
import "models/boatSail"
import "models/sword"
import "spaceship"
import "libraries"
import "menuOptions"
import "levelDen"
import "oceanEffect"

import "assetsmodels/TownCenter"
import "assetsmodels/slime"
import "assetsmodels/bush1"
import "assetsmodels/tree2"
import "assetsmodels/Mountain_Group_2"
import "assetsmodels/Resource_PineTree_Group"
import "assetsmodels/MountainLarge_Single"
import "assetsmodels/Port_FirstAge_Level2"
import "assetsmodels/Mine"
import "assetsmodels/TownCenter_SecondAge_Level3"
import "assetsmodels/streets"
import "assetsmodels/Elf"
import "assetsmodels/pandora"
import "assetsmodels/hero"
import "assetsmodels/Arrow"
import "assetsmodels/Arrow_Golden"
import "assetsmodels/Bow_Wooden"
import "assetsmodels/HeroArrowShoot"
import "assetsmodels/cow"

//import "assetsmodels/david" // to remove
import "assetsmodels/Sawmill"
import "assetsmodels/Path_Straight"

import "blender"
import "blender/horseThrottleComplete"
import "blender/horseThrottleEnd"
import "blender/horseThrottleMiddle"
import "blender/horseThrottleStart"
import "blender/horseJump"
import "blender/HorseUlysses"

Item {
    id: planet

    //property real castleWidth: castleHeight*1.4
    //property real castleHeight: 200 * mm

    property int count: 0

    Component.onCompleted: {
        //console.log("Vamos criar arvores !!!!!!!")

       // createInstancedPineTrees()
    }

    function createInstancedPineTrees() {

        var component = Qt.createComponent("qrc:/elements/DynamicInstanceListEntry.qml")
        //var component = Qt.createComponent("InstanceListEntry")

        //trees in circle
        var i, entry, radius
        for (i = Math.PI/50; i< (Math.PI - 2*Math.PI/50); i+= (Math.PI/50)) {
            radius = 10000
            entry = component.createObject(world)
            entry.position = Qt.vector3d(radius * Math.cos(i-Math.PI*0.5), 0, radius * Math.sin(i-Math.PI*0.5))
            entry.scale = Qt.vector3d(5,7,5)
            instanceListPineTrees.instances.push(entry)
            count++
            console.log("count: "+count)
        }

        for (i = -Math.PI/50; i> -(Math.PI - Math.PI/50); i-= (Math.PI/50)) {
            radius = 10000
            entry = component.createObject(world)
            entry.position = Qt.vector3d(radius * Math.cos(i-Math.PI*0.5), 0, radius * Math.sin(i-Math.PI*0.5))
            entry.scale = Qt.vector3d(5,7,5)
            instanceListPineTrees.instances.push(entry)
            count++
            console.log("count: "+count)
        }

        /*for (var i=0; i< Math.PI*2; i+= (Math.PI/20)) {
            var radius = 500;//10000
            var entry = component.createObject(world)
            entry.scale = Qt.vector3d(5,5,5)
            //entry.position = Qt.vector3d(radius * Math.cos(i), 75, radius * Math.sin(i))
            entry.position = Qt.vector3d(radius * Math.cos(i), 0, radius * Math.sin(i))
            instanceListPineTrees.instances.push(entry)
        }*/
        //instanceListPineTrees.instances = listPineTree
       // console.log("number of trees: "+ instanceListPineTrees.instanceCount)

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
    onVisibleChanged: {

        if (visible) {
            createInstancedPineTrees()
        }
        else {
            deleteInstancedPineTrees()
        }

    }

    PhysicsWorld {
        running: parent.visible
        //gravity: Qt.vector3d(0, -9.81, 0)
        //typicalLength: 1
        //typicalSpeed: 10
        scene: world //view3D.scene
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

        environment: Qt.platform.os === "android" ? sceneEnviroment4Android : sceneEnviroment
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

        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            eulerRotation.x: -70
            //castsShadow: true
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
            cameraType: menuOptions.cameraType
        }


    }//View
    // front view --------------------------------------------------------

    // back view --------------------------------------------------------

    /*View3D {
        id: view3DBack

        width: parent.width * 0.3
        height: parent.height * 0.3
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter

        visible: false

        importScene: world

        environment: SceneEnvironment {
            //backgroundMode: SceneEnvironment.Color
            backgroundMode:  SceneEnvironment.SkyBox
            antialiasingMode: SceneEnvironment.MSAA
            //antialiasingQuality: SceneEnvironment.VeryHigh
            //aoStrength: 100//aoEnabled ? 100 : 0

            //https://free3d.com/3d-model/beautiful-scenery-morning-evening-night-370168.html
           lightProbe: Texture {
                source: "qrc:/images/skybox/kloppenheim_02_2k.ktx"
                mappingMode: Texture.Environment
                //mappingMode: Texture.UV
            }
            //clearColor: "skyblue"
        } //environment: SceneEnvironment


        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            eulerRotation.x: -70
            //castsShadow: true
            //shadowFactor: 60
        }

        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            eulerRotation.x: -120
            //castsShadow: true
            //shadowFactor: 60
        }

        CameraNode {
            id: cameraNodeBack
            position: heroNode.position
            //position: Qt.vector3d(heroNode.position.x, heroNode.position.y, heroNode.position.z-300)
            rotation: heroNode.rotation
            distanceToEye: 300
            elevationToEye: 150
            //cameraYrotation: -80
            camRotAnimDuration: 600
            camMoveAnimDuration: 600
            //position: keybConnect.placement.position
            //rotation: keybConnect.placement.direction
            //cameraType: menuOptions.cameraType
            cameraType: 3
        }
    }*/
    // back view --------------------------------------------------------


    Node {
        id: world


        //https://unsplash.com/photos/IkghfzzIC2s
        // qrc:/images/textures/palani-selvam-IkghfzzIC2s-unsplash.jpg
        //ground grass texture
/*
        Model {
            y: -0.5
            source: "#Rectangle"
            scale: Qt.vector3d(1000, 1000, 1)//scale z has no effect
            eulerRotation.x: -90
            materials: [
                PrincipledMaterial {
                    baseColorMap: Texture {
                        source: "qrc:/images/textures/bekky-bekks-4njhXd_7DOg-unsplash.jpg"
                        //source: "qrc:/images/textures/riverTexture.png"
                        scaleU: 100
                        scaleV: 100
                    }
                }
            ]
        }//Model
*/

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
                            //source: "qrc:/images/textures/riverTexture.png"
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


        DynamicRigidBody {
            id: dynCube
            position: Qt.vector3d(0, 300, 0)
            collisionShapes: BoxShape {
                id: boxShape
            }
            Model {
                source: "#Cube"
                materials: PrincipledMaterial {
                    baseColor: "yellow"
                }
            }
        }
        /*SpaceShip3D {
            id: spaceShip
            type: "hero"
            //shipPosition: Qt.vector3d(300,50*scale.y,-300)
            position: Qt.vector3d(300,50*scale.y,-300)
            isFlying: false
            scale: Qt.vector3d(2,2,2)
        }*/

        DynamicRigidBody {
            position: Qt.vector3d(-100, 100, 0)

            collisionShapes: [
                SphereShape {
                id: diceShape
                //source: "/models/spitfire/meshes/cube_017_mesh.mesh"
                //source: spitFire.source
            }
            ]

            Model {
                id: shipBody
                source: "#Sphere"
                scale: Qt.vector3d(1, 1, 1)
                castsShadows: true
                receivesShadows: true
                materials: DefaultMaterial {
                    diffuseColor: "blue"
                }
                //visible: false
            }


        }

        SpaceShip3D {
            id: spaceShip
            type: "hero"
            //shipPosition: Qt.vector3d(300,50*scale.y,-300)
            position: Qt.vector3d(300,50*scale.y,-300)
            isFlying: false
            scale: Qt.vector3d(2,2,2)
        }

        Node{
            id: heroNode
            position: placement.position
            //onPositionChanged: console.log("pandora position:"+position)
            rotation: placement.direction
            children: hero //horse //ajNode //carNode//boat
        }

        Node{
            id: heroFollower
            position: placement.positionFollower
            rotation: placement.followerActive ? placement.direction : Qt.quaternion(1,0,0,0)
            children: pandora //horse //ajNode //carNode//boat
        }

        /*Horsy {
            position: Qt.vector3d(1000,0,500)

        }*/

        property bool walk: (commandTouchPad.wheelPad_SlideUp || commandTouchPad.wheelPad_SlideDown
                             || keyb2.moveFrontPressed || keyb2.moveBackPressed
                             || keyb2.moveRightPressed || keyb2.moveLeftPressed)
                         && planet.visible





        HorseUlysses {
            scale: Qt.vector3d(0.4,0.4,0.4)

        }

        Node {
            id: horse
            //property bool throttle: false
            eulerRotation.y: 180
            eulerRotation.z: 90
            property real sc: 0.3
            scale.x: sc
            scale.y: sc
            scale.z: sc
            y: 65
            //property bool jump: false
            signal jump()
            onJump: horseWalk.horseJump()
            visible: false
            Horse{
                id: horseWalk
                walk: world.walk
                //visible: false
                /*onStopWalking: {
                    if (horse.jump){
                        horseJump.visible = true
                        horseJump.timelineAnimation.running = true
                    }
                }*/
            }

            /*onWalkChanged: {
                horseJump.visible = false
                horseWalk.visible = true
                horseWalk.walk = walk
            }

            onJumpChanged: {
                console.log("jump..................................:"+jump)
                if (jump) {
                    if (walk === false) {
                        horseWalk.visible = false
                        horseJump.visible = true
                        horseJump.timelineAnimation.running = true
                       // jump = false
                    }
                    else {
                        horseWalk.walk = false
                    }
                }
            }*/

            /*HorseJump {
                id: horseJump
                timelineAnimation.duration: 1200//1667
                visible: false
                onJumpStart: {
                    horseWalk.visible = false
                    horseJump.visible = true
                }

                onEndJump: {
                    horseJump.visible = false
                    horseWalk.visible = true
                    if (horse.walk){
                        horseWalk.timelineAnimation.running = true
                    }
                    horse.jump = false
                }
            }*/
        }


        //HorseThrottleComplete {
       /* Node{
            id: horsex
            visible: false
            property bool throttle: false
          //  position: Qt.vector3d(1000,0,1000)
            eulerRotation.z: 90
            property real sc: 0.3
            scale.x: sc
            scale.y: sc
            scale.z: sc
            y: 65
            onThrottleChanged: {
                if (horse.throttle) {
                    horseEnd.visible = false
                    horseStart.visible = true
                    horseStart.timeLineAnimation.running = true
                }
                else {
                    horseMiddle.timeLineAnimation.running = false
                }



            }

            HorseThrottleStart{
                id: horseStart
               // timeLineAnimation.stopped: console.log("stoped..........................")
                timeLineAnimation.onStopped: {
                    if (horse.throttle) {
                        horseStart.visible = false
                        horseMiddle.visible = true
                        horseMiddle.timeLineAnimation.running = true
                    }
                }
            }
            HorseThrottleMiddle{
                id: horseMiddle
                visible: false

                timeLineAnimation.onStopped:{
                    horseMiddle.visible = false
                    horseEnd.visible = true
                    horseEnd.timeLineAnimation.running = true
                }
            }

            HorseThrottleEnd{
                id: horseEnd
                visible: false

                timeLineAnimation.onStopped:{
                    //horseEnd.visible = false
                    //horseStart.visible = true
                }
            }
        }*/


        Node {
            id: carNode
            //z: 340
            position: Qt.vector3d(1500,0,2000)
            //position: placement.position
            //rotation: placement.direction
            /*Placement{
                id: placement
                position: Qt.vector3d(0,0,0)
            }*/
            ExplorationCar {
                id: explorationCar
                scale: Qt.vector3d(1, 1, 1)
                //eulerRotation.y: -90
            }
        }//carNode

        Placement{
            id: placement
            //position: Qt.vector3d(0,0,-11000)
            position: Qt.vector3d(0, 0, 0)
            positionFollowerDistance: 200
            //positionFollowerAngle: 10
            followerActive: true
            //usePathRectangular: true
            //pathRectangular: Qt.vector4d(-1200, 600, -10000, -15000)
            //pathRectangular: Qt.vector4d(-800, 400, -15000, 100)
            //usePathCircular: true
            //pathCircular: Qt.vector3d(0,0, 9400)
        }

        Component.onCompleted: {
            placement.addPathCircular(Qt.vector3d(0,0,0) , 9500, 10)
            //placement.addPathRect(-200, 200, -100, 100, -15000, -8000)
            //placement.addPathRect(-200, 200, -100, 100, 8000, 15000)
            //placement.addPathRect(-1000, 3000, -20, 20, -1000, 1000)
            placement.addPathRect(-1000, 1000, -1000, 1000, -3500+11500, 3500+11500) //pathRect01
            placement.addPathRect(-200, 200, -1000, 1000, -10750-1260, -10750+1260) //pathRect02
        }

        //Stone walk near the peasement / elf house
        GroundTexture {
            y: 2
            x0: -200
            x1: 200
            z0: -10750-1260
            z1: -10750+1260

            source: "qrc:/images/textures/stacked-stones.png"
            scaleU: 1
            scaleV: 4
            //stacked-stones.png
            // <a href="https://www.freepik.com/free-photo/stacked-stones_1034248.htm#query=stone%20paving%20texture&position=6&from_view=keyword&track=ais">Image by kues1</a> on Freepik
        }






        /*Path_Straight {
            position: Qt.vector3d(0, 0, -11500)
            scale: Qt.vector3d(10,1,10)
        }*/

        /*PathRectAux {
            x0: -200
            x1: 200
            y0: 80
            y1: 100
            z0: -10750-1260
            z1: -10750+1260
            //visible: false
            //qrc:/images/textures/stacked-stones.png
        }*/

        /*Model {
            id: pathRect02; source: "#Cube"
            position: Qt.vector3d(0, 0, -10750)
            scale: Qt.vector3d(4, 0.2, 25)
            materials: DefaultMaterial { diffuseColor: "yellow" }
        }*/
        //scale 2 equals 200 units
        //scale 10 equals 1000 units
        //scale 20 equals 2000 units
        /*Model {
            id: pathRect01; source: "#Cube"
            position: Qt.vector3d(0, 0, 11500)
            scale: Qt.vector3d(20, 0.2, 70)
            materials: DefaultMaterial { diffuseColor: "red" }
        }*/


        //scale 10 equals 1000 units
        //scale 20 equals 2000 units
        /*Model {
            source: "#Cube"
            position: Qt.vector3d(0,0,0)
            scale: Qt.vector3d(20,0.2,20)
            materials: DefaultMaterial { diffuseColor: "orange" }
            visible: false
        }

        Model {
            source: "#Cube"
            position: Qt.vector3d(2000,0,0) //position x: 1000 a 3000
            scale: Qt.vector3d(20,0.2,20)//20 equals 2000 units
            materials: DefaultMaterial { diffuseColor: "red" }
            visible: false
        }*/

        Street {
            z: 11500
            //scale: Qt.vector3d(4,0.5, 4)
            eulerRotation.y: -90
        }

        /*PathCircularQML {
            id: pathCirc
            pathCenter: Qt.vector3d(0,0,0)
            pathRadius: 9000
            pathHeight: 50
        }*/

        /*PathCircular {
            id: pathCir
        }*/

        /*PathRectangular {
            id: pathRec
            xmin: -1200
            xmax: 600
            zmin: -10000
            zmax: -15000
            ymin: -10
            ymax: 10
        }*/

        //scale 10 equals 1000 units
        //scale 20 equals 2000 units

        /*FireBall {
            position: Qt.vector3d(700, 200, 0)
        }*/

        /*Bush1{
            x: 800
            z: 600
        }*/

        Sawmill {
            eulerRotation.y: 90
            position: Qt.vector3d(-850, 0, -11500)
            scale: Qt.vector3d(3.5,3.5,3.5)
        }



        Elf {
            id: elf
            eulerRotation.y: 90
            //position: Qt.vector3d(800, 0, -400)
            position: Qt.vector3d(-280, 0,-11500)
            scale: hero.scale
            anim07.running: heroElfNear.isEntityNear
            //id: heroElfNear

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
            anim19SwordAndShieldSlash.onStopped: {
                //eulerRotation.y = 180
               resetNodes()
               // eulerRotation.y = 180
                myWalk ? state = "stateRunning" : state = "stateWalk"
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

            signal jump()
            signal shoot()

            onShoot: hero.state = "stateArrowShoot"
            onJump: hero.state = "stateJump"

        }//Hero


        /*Hero {
            id: teste
            x: 600
            scale: Qt.vector3d(0.6, 0.6, 0.6)
            Bow_Wooden {
                y: 180
                x: -140
                z: -50
                //eulerRotation.z: 90

                Node {
                    eulerRotation.z: 90
                    Arrow_Golden {
                    }
                }
            }
        }//Hero
        */

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

            signal jump()
            signal shoot()

            onShoot: pandora.state = "stateFireBall"
            onJump: pandora.state = "stateJump"

        }//Pandora

        /*  position: Qt.vector3d(-1200,0,-10900)
            treeTopColor: "#20df50"
        }

        Resource_PineTree_Group {
            scale: Qt.vector3d(5,5,5)
            position: Qt.vector3d(650,0,-10900)*/


        TownCenter {
            position: Qt.vector3d(1400, 0, 1400)
            scale: Qt.vector3d(4,4,4)
        }


        /*Resource_PineTree_Group {
            scale: Qt.vector3d(5,5,5)
            position: Qt.vector3d(-1200,0,-10900)
            treeTopColor: "#20df50"
        }

        Resource_PineTree_Group {
            scale: Qt.vector3d(5,5,5)
            position: Qt.vector3d(650,0,-10900)
            treeTopColor: "#20df50"
        }

        Resource_PineTree_Group {
            scale: Qt.vector3d(5,5,5)
            position: Qt.vector3d(-1200,0,-10900-1000)
            //treeTopColor: "#20df50"
        }

        Resource_PineTree_Group {
            scale: Qt.vector3d(5,5,5)
            position: Qt.vector3d(650,0,-10900-1000)
            //treeTopColor: "#20df50"
        }*/


        SnowMan{
            id: snowMan
            //position: Qt.vector3d(1350*0.5, 40,-10000)
            position: Qt.vector3d(0, 40,-9800)
            eulerRotation.y: -90
            //z: -1000
            //x: 1350*0.5
            //z: 200
            //y: 40
        }

        /*Tree2 {
            scale: Qt.vector3d(60,60,60)
            position: Qt.vector3d(200,0,200)
        }*/

        /*TreePine{
            id: tree
            x:350
            z: 450
            y: 75
            instancingTreeTrunk: instanceListPineTrees
            instancingTreeTop1: instanceListPineTrees
            instancingTreeTop2: instanceListPineTrees
            instancingTreeTop3: instanceListPineTrees

        }*/

        Mine {
            scale: Qt.vector3d(10,10,10)
            position: Qt.vector3d(0,0,1200)

        }

        Resource_PineTree_Group{
            //scale: Qt.vector3d(5,5,5)
            instancing: instanceListPineTrees
        }

        InstanceList {
            id: instanceListPineTrees
            //instances: [instance1, instance2, instance3]
        }

        MountainLarge_Single {
            position: Qt.vector3d(-200,0,10500)
            scale: Qt.vector3d(10,10,10)
        }

        MountainLarge_Single {
            position: Qt.vector3d(1500,0,10500)
            scale: Qt.vector3d(10,10,10)
        }

        Port_FirstAge_Level2 {
            position: Qt.vector3d(1350*0.5, 50,-10000)
           // position: Qt.vector3d(135, 0,900)
            scale: Qt.vector3d(500,500,500)
        }

        /*Ocean {
            y: 4
            //position: Qt.vector3d(1350*0.5 -600*0.5, 40,-10000 -600)
            position: Qt.vector3d(-8000, 20, -13000)
            //opacity: 0.6
            scale: Qt.vector3d(600, 4, 60)
            oceanMovement: planet.visible

            distanceX: 50
            distanceZ: 50
            delta: 0.5
            w: 1
            amplitude: 2
        }*/

        /*Mountain_Group_2 {
            //x: 5e4
            z: -4e4
            scale: Qt.vector3d(50,50,50)
        }*/

        Mountain {
            id: mountain
            x: 50000
            scale: Qt.vector3d(10,10,10)
        }



        Node {
            id: boat
            BoatWSail {
                eulerRotation.y: 90
                position: Qt.vector3d(-300, 0, -300)
                scale: Qt.vector3d(3,3,3)
            }
        }



        Sword2 {
            position: Qt.vector3d(-400, 150, -400)
            scale: Qt.vector3d(6,6,6)
            eulerRotation.z: 90
            visible: false
        }

        Sword {
            position: Qt.vector3d(-400, 150, -400)
            scale: Qt.vector3d(6,6,6)
            visible: false
        }


        /*LevelDen{
            y: -200
           // scale: Qt.vector3d(3, 3, 3)

        }*/


        CheckEntityNear  {
            id: heroElfNear
            target: heroNode
            me: elf
            distanceNear: 300
            isEnabled: planet.visible
            debugInfo: "Elf in PlanetEarth"
            onTargetChangedNear: {
                createDialogueSnowMan()
                conversationB.show()
            }
            onTargetChangedFar: {
                conversationB.visible = false
            }
        }

        CheckEntityNear  {
            target: heroNode
            me: snowMan
            distanceNear: 300
            isEnabled: planet.visible
            debugInfo: "snowMan in PlanetEarth"
            onTargetChangedNear: {
                createDialogueSnowMan()
                conversationB.show()
            }
            onTargetChangedFar: {
                conversationB.visible = false
            }
        }


        CheckEntityNear {
            target: heroNode
            me: spaceShip
            distanceNear: 300
            isEnabled: planet.visible
            debugInfo: "spaceShip in PlanetEarth"
            onTargetChangedNear: {                
                console.log("change to near......................")
                messageB.text = qsTr("Do you want to fly again ?")
                messageB.action = 1
                messageB.visible = true
            }
            onTargetChangedFar: {
                messageB.action = 0
                messageB.visible = false
            }
        }

        CheckEntityNear {
            target: heroNode
            me: carNode
            distanceNear: 100
            isEnabled: planet.visible
            debugInfo: "carNode in PlanetEarth"
            onTargetChangedNear: {
                messageB.text = qsTr("Do you want to ride the car ?")
                messageB.action = 2
                messageB.visible = true
            }
            onTargetChangedFar: {
                messageB.action = 0
                messageB.visible = false
            }
        }

        /*Person3D {
            //position: aj_walking.position
            id: boy
            //position: placement.position
            //rotation: placement.direction
            x: 150
            male: true
            scale: Qt.vector3d(2, 2.1, 2)
            //visible: !aj_walking.walking
        }

        Person3D {
            id: girl
            scale: Qt.vector3d(2, 2, 2)
            male: false
            z: 100
        }*/

        Castle {
            z: -2000
            x: 500
            y: 600
        }

        Cloud {
            id: cloud1
            x: 0
            y: 1350
            z: 0
            eulerRotation.y: 90
            opacity: 0.7
        }

        Cloud {
            x: 500
            y: 1350
            z: 500
            eulerRotation.y: 90
            opacity: 0.7
        }
        Cloud {
            x: -500
            y: 1350
            z: 500
            eulerRotation.y: 90
            opacity: 0.7
        }
        Cloud {
            x: -500
            y: 1350
            z: -500
            eulerRotation.y: 90
            opacity: 0.7
        }


        /*Model {
            id: lake
            x: -10000
            source: "#Sphere"
            materials: DefaultMaterial {
                diffuseColor: "lightblue"//Qt.rgba(0.8, 0.8, 0.6, 1.0)
            }
            scale: Qt.vector3d(80,0.1,100)
        }*/

        Track {
            id: track
            visible: false
        }

        /*FireBall {
            id: fireBall
            y: 100
            scaleBall: 0.2
            fireballColor: "green"
            shotDuration: 10000
            Component.onCompleted: fireBall.fire()
        }*/

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
            pandora.shoot()
            hero.shoot()
            //createFireBall()
            //timerClaireShoot.start()

            //horse.throttle = !horse.throttle
           // horse.walk = !horse.walk
            //horseWalk.walk = !horseWalk.walk
            //horseJump.timelineAnimation.running = true
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
                horse.jump()
                //pandora.state = "stateJump"
                pandora.jump()
                hero.jump()
            }
            if (keyPressed_ === Qt.Key_K){
                hero.state = "stateSwordAndShieldSlash"
            }

        }

        onStartYawRight: explorationCar.startYawRight()
        onStartYawLeft: explorationCar.startYawLeft()
        onStopYaw: explorationCar.stopYaw()

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

        onStartYawRight: explorationCar.startYawRight()
        onStartYawLeft: explorationCar.startYawLeft()
        onStopYaw: explorationCar.stopYaw()

        onDoubleClickedP1: (x1, y1)=> {
            if (pickHeroGirl(x1, y1))
                return;

            pandora.shoot()
            hero.shoot()
        }
        onDoubleClickedP2: {
            pandora.shoot()
            //pandora.state = "stateFireBall"
            hero.shoot()
        }
        onPressAndHoldP1: {
            pandora.jump()
            hero.jump()
        }
        onPressAndHoldP2: {
            pandora.jump()
            hero.jump()
        }

    }

    function pickHeroGirl(x1, y1){

        console.log("pressed p1...................")
        var result = view3D.pick(x1, y1);
        //! [pick result]
        //! [pick specifics]
        if (result.objectHit) {
            var pickedObject = result.objectHit;

            console.log("picked object: "+pickedObject.objectName)

            if (pickedObject.objectName === "Hero") {
                heroNode.children = hero
                heroFollower.children = pandora
                placement.swapLeaderFollowerPosition()
            }

            if (pickedObject.objectName === "Pandora") {
                heroNode.children = pandora
                heroFollower.children = hero
                placement.swapLeaderFollowerPosition()
            }

            //placement.positionFollower

            return true
        }
        else{
            console.log("nothing was picked")
            return false
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
            if (action === 1) {parent.clickFlyToSpace(); action=0}
            if (action === 2) {
                carNode.z = 0
                carNode.x = 0
                heroNode.children = carNode; action=0
                ajNode.visible = false
            }

        }
        onCancel: visible = false
        visible: false
        property int action: 0
    }

    ButtonA {
        id: btnCamera
        anchors.margins: defaultMargins
        anchors.top: parent.top
        //anchors.top: sli.bottom
        anchors.right: btnClose.left
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
        anchors.right: btnClose.left
        visible: false
        onClose: {
            menuCamera.visible = false
            btnCamera.visible = true
        }
    }

    /*Slider {
        id: sli
        width: parent.width
        from: -500
        to: 500
        stepSize: 1
        onValueChanged: cameraNode.distanceToEyeZ = value
        visible: false
    }

    Text {
        id: slid
        anchors.top: sli.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: sli.value
        color: "white"
        font.pixelSize: 33
        visible: sli.visible
    }*/

    ButtonA {
        id: btnClose
        anchors.margins: defaultMargins
        anchors.top: parent.top
        anchors.right: parent.right
        source: "qrc:/images/buttons/btn_close.png"
        onClick: parent.click()
    }
    ButtonA {
        id: btnCloseCar
        anchors.margins: defaultMargins
        anchors.top: btnClose.bottom
        anchors.right: parent.right
        source: "qrc:/images/buttons/btn_close.png"
        onClick: {
            //carNode.z = 0
            //ajNode.parent = world

            heroNode.children = ajNode
            ajNode.visible = true

            carNode.parent = world
            carNode.position = heroNode.position

            //ajNode.position =
        }
    }

    signal click()
    signal clickFlyToSpace()

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

   // signal destroyObjects()

    // Dont use dynamic tree, replaced with InstanceList for performance reasons
    /*function createTrees() {
        var shapeComponent = Qt.createComponent("qrc:/TreePine.qml");
         //newTree.position = Qt.vector3d(500 * Math.cos(i), 0, 500 * Math.sin(i))
        //newTree.x = 500 * Math.cos(50)
        //newTree.z = 500 * Math.sin(50)

        for (var i=0; i< Math.PI*2; i+= (Math.PI/50)) {

            var radius = 10000
            var newTree = shapeComponent.createObject(world)
            newTree.position = Qt.vector3d(radius * Math.cos(i), 75, radius * Math.sin(i))
            destroyObjects.connect( newTree.destroy )
            //newTree.x = 500 * Math.cos(i)
            //newTree.z = 500 * Math.sin(i)

            console.log("create tress: "+ i)
        }
    }//function createTrees()
    */

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

    function createDialogueSnowMan() {

        //conversationB.x = mainRoot.width*9.5 - talkBoard.width/2
        //conversationB.y = defaultMargins

        conversationB.clear()

        conversationB.imageLeft = "heroHead.png"
        conversationB.imageRight = "pandoraHead.png"

        conversationB.addMessage4(qsTr("Hello stranger, I'm farmer Joe!!!\n"
                                   + "Who are you ???"), "peasentJoeHead.png", 1, false)

        conversationB.addMessage4(qsTr("I am Captain David. I'm exploring this planet."),
                                  "heroHead.png", 2, false)

        conversationB.addMessage4(qsTr("My cows run out of milk.\n"
                                   + "Do you have any milk for me ?"), "peasentJoeHead.png", 1, false)


    }

}
