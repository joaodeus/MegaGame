import QtQuick 2.12
import QtQuick3D //1.15
import Placement 1.0
import "../keyboardManager"
import "../spaceship"
import "../libraries"
import "../elements"
import "../menuOptions"
import "../"

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
    signal landInPlanetMilkyWay()
    signal landInPluto()

    View3D {
        id: view3D

        anchors.fill: parent
        renderMode: View3D.Underlay

        //environment: mainRoot.showSkybox ? sceneEnviroment : sceneEnviroment4Android
        environment: Qt.platform.os === "android" ? sceneEnviroment4Android : sceneEnviroment
        //environment: sceneEnviroment


        CameraNode {
            id: cameraNode
            position: starship.position
            rotation: starship.rotation
            //position: keybConnect.placement.position
            //rotation: keybConnect.placement.direction
        }

        importScene: space

    }//View3D


    Rectangle {
        id: rect1
        width: parent.width * 0.3
        height: parent.height * 0.3
        border.color: "white"
        border.width: view3DBack.anchors.margins
        radius: view3DBack.anchors.margins

        visible: !starship.startFight

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top

        View3D {
            id: view3DBack
            anchors.fill: parent
            anchors.margins: defaultMargins * 0.5

            //environment: mainRoot.showSkybox ? sceneEnviroment : sceneEnviroment4Android
            environment: Qt.platform.os === "android" ? sceneEnviroment4Android : sceneEnviroment
            //environment: sceneEnviroment

            CameraNode {
                id: cameraNodeBack
                position: starship.position
                rotation: starship.rotation
                //position: keybConnect.placement.position
                //rotation: keybConnect.placement.direction
                cameraType: 4
            }
            importScene: space
        }
    }





    Node {
        id: space

        SceneEnvironment {
            id: sceneEnviroment
            backgroundMode: SceneEnvironment.SkyBox
            antialiasingMode: SceneEnvironment.MSAA
            //antialiasingQuality: SceneEnvironment.VeryHigh
            //aoStrength: 100//aoEnabled ? 100 : 0

            lightProbe: Texture {
                //source: "qrc:/images/skybox/galaxy.hdr"
                //source: "qrc:/images/skybox/galaxy.ktx"
                source: "qrc:/images/skybox/galaxy3_360.ktx"
                //source: "qrc:/images/skybox/galaxy_original.hdr"
            }
            //clearColor: "black"
        } //environment: SceneEnvironment

        SceneEnvironment {
            id: sceneEnviroment4Android
            backgroundMode: SceneEnvironment.Color
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.VeryHigh
            //clearColor: "#ffffff"
            clearColor: "#01010f"
        }

        DirectionalLight {
            //default is The light will always be emitted in the direction of the light's -Z axis.
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

        // use a Model Sphere to simulate a skybox in android
        //android does not support skybox's
        Model {
            id: fakeSkybox
            visible: !showSkybox //&& levelStates.menuOptions.checkBoxUseAndroidFakeSkybox
            //visible: Qt.platform.os === "android" ? true : false
            position: starship.position
            eulerRotation.y: 180
            source: "#Sphere"
            //materials: [ PrincipledMaterial {
            materials: [ DefaultMaterial {
                    lighting: DefaultMaterial .NoLighting
                    //lighting: PrincipledMaterial.NoLighting
                    cullMode: Material.FrontFaceCulling
                    diffuseMap: Texture {
                    //baseColorMap: Texture {
                        source: "qrc:/images/skybox/galaxy3_AndroidSkybox.png"
                        scaleU: 1.0
                        scaleV: 1.0
                    }
                }
            ]
            property real sc: 8000
            scale: Qt.vector3d(sc, sc, sc)
            //eulerRotation.y: -90
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
                scale: Qt.vector3d(sc, sc, sc)
                eulerRotation.y: -90
            }
        }// Node neptune


        Model {
            id: planetEarth
            x: 2e4
            z: -1e4
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
            //eulerRotation.y: -90
        }

        Model {
            id: moon
            source: "#Sphere"
            materials: [ PrincipledMaterial {
                    baseColorMap: Texture {
                        source: "qrc:/images/planetsTextures/2k_moon.png"
                        scaleU: 1.0; scaleV: 1.0
                    }
                }]
            x: 1e4
            z: -1e4
            property real sc: 0.1
            scale: Qt.vector3d(planetEarth.scale.x*sc, planetEarth.scale.y*sc, planetEarth.scale.z*sc)
            eulerRotation.y: -90

            NumberAnimation on eulerRotation.y {
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: 90000
            }
        }//node moon


        Model {
            id: sun
            x: 1000
            z:-3000
            source: "#Sphere"
            materials: [ PrincipledMaterial {
                    baseColorMap: Texture {
                        source: "qrc:/images/planetsTextures/2k_sun.png"
                        scaleU: 1.0
                        scaleV: 1.0
                    }
                }
            ]
            property real sc: 30
            scale: Qt.vector3d(sc, sc, sc)
            //eulerRotation.y: -90
        }


        Model {
            id: nodePluto
            z: -2e4
            source: "#Sphere"
            materials: [ PrincipledMaterial {
                    baseColorMap: Texture {
                        source: "qrc:/images/planetsTextures/plu0rss1.png"
                        scaleU: 1.0
                        scaleV: 1.0
                    }
                }
            ]
            property real sc: 30
            scale: Qt.vector3d(sc, sc, sc)
            //eulerRotation.y: -90
        }

/*            Node {
            id: nodePluto
            //x: 2e4
            z: -2e4
            Model {
                id: planetPlutao
                source: "#Sphere"
                materials: [ PrincipledMaterial {
                        baseColorMap: Texture {
                            source: "qrc:/images/planetsTextures/plu0rss1.png"
                            scaleU: 1.0
                            scaleV: 1.0
                        }
                    }
                ]
                property real sc: 20
                scale: Qt.vector3d(sc,sc, sc)
                eulerRotation.y: -90
            }
        }// Node neptune*/

        Model {
            id: badStar
            x: 20000
            z: 20000
            source: "#Sphere"
            materials: PrincipledMaterial {
            baseColorMap: Texture {
                source: "qrc:/images/planetsTextures/badStar.png"
                scaleU: 1.0
                scaleV: 1.0
                }
            }
            property real sc: 10
            scale: Qt.vector3d(sc, sc, sc)
            //eulerRotation.y: -90
        }


        Model {
            id: viaLacteaPlanet
            x: 2000
            y: 30000
            source: "#Sphere"
            materials: PrincipledMaterial {
            baseColorMap: Texture {
                source: "qrc:/images/planetsTextures/viaLacteaTex.png"
                scaleU: 1.0
                scaleV: 1.0
                }
            }
            property real sc: 60
            scale: Qt.vector3d(sc, sc, sc)

            //eulerRotation.z: 180
            NumberAnimation on eulerRotation.z {
                id: viaLacteaAnimation
                running: view3D.visible
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: 10000
            }
        }


        CheckEntityNear {
            id: checkBadStarSpaceShipNear
            me: badStar
            target: starship
            distanceNear: badStar.scale.x*100 *0.5
            onTargetChangedNear: landInBadStar() //console.log("I'm near badStar.......................")
            //onTargetChangedFar: console.log("I'm far badStar.......................")
            //on_TargetXChanged: console.log("spaceship position: " + starship.position + "\ndistance: "+ distanceNear)
            debugInfo: "checkBadStarSpaceShipNear"
        }

        CheckEntityNear {
            id: checkEarthSpaceShipNear
            me: planetEarth
            target: starship
            distanceNear: planetEarth.scale.x*100 *0.5
            onTargetChangedNear: landInEarth()
            debugInfo: "checkEarthSpaceShipNear"
        }

        CheckEntityNear {
            id: checkMilkyWaySpaceShipNear
            me: viaLacteaPlanet
            target: starship
            distanceNear: viaLacteaPlanet.scale.x*100 *0.5
            onTargetChangedNear: landInPlanetMilkyWay()
            debugInfo: "checkMilkyWaySpaceShipNear"
        }

        CheckEntityNear {
            id: checkPlutoSpaceShipNear
            me: nodePluto
            target: starship
            distanceNear: nodePluto.scale.x*100 *0.5
            onTargetChangedNear: landInPluto()
            debugInfo: "checkPlutoSpaceShipNear"
        }


        /*Model {
            id: asteroidSquare
            source: "#Cube"
            z: -100
            scale: Qt.vector3d(0.1, 0.1, 0.1)
            materials: [ DefaultMaterial {diffuseColor: "red"}]
        }

        Coin {

        }*/

    }//Node id:space



    CommandKeyboard2 {
        id: keyb2
        focus: rootSpaceView.visible
        controlledEntity: starship.shipPlacement
        camera: cameraNode

        onSigShoot: createBullets()
        onStartStop: {
            starship.startStop()
            viaLacteaAnimation.running = !viaLacteaAnimation.running
        }
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
        anchors.margins: defaultMargins
        anchors.top: parent.top
        anchors.right: parent.right
        source: "qrc:/images/buttons/btn_close.png"
        onClick: parent.click()
    }
    signal click()

    ShowStatistics {
        view: view3D
    }

    /*

function startDrag(mouse)
{
    posnInWindow = paletteItem.mapToItem(window, 0, 0);
    startingMouse = { x: mouse.x, y: mouse.y }
    loadComponent();
}

//Creation is split into two functions due to an asynchronous wait while
//possible external files are loaded.

function loadComponent() {
    if (itemComponent != null) { // component has been previously loaded
        createItem();
        return;
    }

    itemComponent = Qt.createComponent(paletteItem.componentFile);
    if (itemComponent.status == Component.Loading)  //Depending on the content, it can be ready or error immediately
        component.statusChanged.connect(createItem);
    else
        createItem();
}

function createItem() {
    if (itemComponent.status == Component.Ready && draggedItem == null) {
        draggedItem = itemComponent.createObject(window, {"image": paletteItem.image, "x": posnInWindow.x, "y": posnInWindow.y, "z": 3});
        // make sure created item is above the ground layer
    } else if (itemComponent.status == Component.Error) {
        draggedItem = null;
        console.log("error creating component");
        console.log(itemComponent.errorString());
    }
}
*/

    /*function createBulletsAsyn() {
        if (levelStates.menuOptions.volumeValue > 0)
            soundShots.stop()
        //if (!soundShots.playing)
        //if (soundShots.playbackState !== soundShots.PlayingState)
        if (levelStates.menuOptions.volumeValue > 0)
            soundShots.play()
        var bulletColor = "DeepSkyBlue"
        loadComponent();
    }*/
/*
    function loadComponent() {
        var itemComponent = null;

        if (itemComponent != null) { // component has been previously loaded
            createItem();
            return;
        }

        itemComponent = Qt.createComponent(paletteItem.componentFile);
        if (itemComponent.status == Component.Loading)  //Depending on the content, it can be ready or error immediately
            component.statusChanged.connect(createItem);
        else
            createItem();
    }*/

    //---------------------------------------------
    function createBullets() {

        //console.log("create bullets--------------------------")

        //if (!soundShots.playing)
           // soundShots.play()

        if (soundShots.playing)
            soundShots.stop()
        else
            soundShots.play()

        //if (levelStates.menuOptions.volumeValue > 0)
          //  soundShots.stop()
        //if (levelStates.menuOptions.volumeValue > 0)
          //  soundShots.play()



        var bulletColor = "DeepSkyBlue"

        var shapeComponent = Qt.createComponent("qrc:/elements/SpaceShipBullet.qml");
        if (shapeComponent.status !== Component.Ready)
            console.log("Error creating spaceship bullet Component.Ready failled -------------------------------------------------------------------")

        var rightBullet = shapeComponent.createObject(space)
        if (rightBullet === null)
            console.log("createObject() error creating right bullet-------------------------------------------------------------------")
        rightBullet.bulletColor = bulletColor
        rightBullet.bulletRotation = starship.rotation
        rightBullet.bulletPosition = starship.position
        rightBullet.roll(starship.rollAngle)
        rightBullet.moveRight(100)

        //left bullet----------------------------------------
        let leftBullet = shapeComponent.createObject(space)
        if (leftBullet === null)
            console.log("createObject() error creating left bullet-------------------------------------------------------------------")
        leftBullet.bulletColor = bulletColor
        leftBullet.bulletRotation = starship.rotation
        leftBullet.bulletPosition = starship.position
        leftBullet.roll(starship.rollAngle)
        leftBullet.moveLeft(100)

        rightBullet.fire()
        leftBullet.fire()
    }

    function createEnemySpaceships() {
        var newComponent = Qt.createComponent("qrc:/spaceship/SpaceShip3D.qml");
         //newTree.position = Qt.vector3d(500 * Math.cos(i), 0, 500 * Math.sin(i))
        //newTree.x = 500 * Math.cos(50)
        //newTree.z = 500 * Math.sin(50)

        for (var i=0; i< Math.PI*2; i+= (Math.PI/3)) {
            let newEnemySpaceship = newComponent.createObject(space)
            var radius = 500

            newEnemySpaceship.shipPosition = Qt.vector3d(5500, radius * Math.cos(i), radius * Math.sin(i))

            newEnemySpaceship.adversaryPosition = Qt.binding(function() { return starship.shipPosition })
            newEnemySpaceship.isHeroShip = false

            newEnemySpaceship.colorBody = "grey"
            newEnemySpaceship.colorCockpit = "lightgrey"
            newEnemySpaceship.colorShooters = "grey"
            newEnemySpaceship.isFlying = true
            //newEnemySpaceship.spaceShipName = "dynamic"
            console.log("newEnemySpaceship.isFlying: "+newEnemySpaceship.isFlying)

            //destroyObjects.connect( newEnemySpaceship.destroy )
            //newTree.x = 500 * Math.cos(i)
            //newTree.z = 500 * Math.sin(i)

            destroyObjects.connect(newEnemySpaceship.destroy)
            //destroyObjects.connect( listOfEnemies.enemyDestroyed )

            listOfEnemies.addEnemy(newEnemySpaceship)

            console.log("listOfEnemies.listOfEnemies.lenght: "+ listOfEnemies.listOfEnemies.length)


            //listOfEnemies

            console.log("create newEnemySpaceship: "+ i)
        }
    }//function createEnemySpaceships()

    function startLevel() {
        if (levelStates.menuOptions.volumeValue > 0)
            backgroundMusic.play()

        createEnemySpaceships()
        if (currentGame.triggerCreateEnemiesSpaceShips) {
            createEnemySpaceships()
            currentGame.triggerCreateEnemiesSpaceShips = false
        }

        if (currentGame.triggerSpace180Rotation) {
            starship.rotate180()
            currentGame.triggerSpace180Rotation = false
        }

        //Dont create random stars for android now that we use a Model Sphere to simulate the skybox
        /*if (!showSkybox) {
            for (var i=0; i< 200; i++){
                createRandomStars4Android()
            }
        }//if
        */


    }


    //As of today, Android does not support skybox for SceneEnvironment
    //so create black background articial stars, with positions realtive to the spaceship position
    //that way they will always be at "infinite" position from the spaceship
    /*function createRandomStars4Android() {
        var starComponent = Qt.createComponent("qrc:/elements/Star.qml");
        var starObj = starComponent.createObject(space)
        //starObj.position = starship.position + Qt.vector3d(200, 0, 0)
        var min = 1000
        var max = 5000
        var distX = lib.randomMinMaxPosNeg(min, max)
        var distY = lib.randomMinMaxPosNeg(min, max)
        var distZ = lib.randomMinMaxPosNeg(min, max)
        starObj.position.x = Qt.binding(function() { return cameraNode.position.x + distX })
        starObj.position.y = Qt.binding(function() { return cameraNode.position.y + distY })
        starObj.position.z = Qt.binding(function() { return cameraNode.position.z + distZ })

        destroyObjects.connect( starObj.destroy )
    }*/


    function endLevel() {
        backgroundMusic.stop()
        destroyObjects()
    }

    signal destroyObjects()

    onDestroyObjects: {
        listOfEnemies.destroyAll()
    }

}

//https://visibleearth.nasa.gov/collection/1484/blue-marble
//https://www.nasa.gov/audience/formedia/features/Merchandising_Guidelines.html
//https://www.nasa.gov/audience/formedia/features/Advertising_Guidelines.html
//https://www.solarsystemscope.com/textures/ - planet textures
