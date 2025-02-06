import QtQuick //2.15
import QtQuick3D
import QtQuick3D.Helpers
import QtQuick3D.Physics
import QtQuick3D.Physics.Helpers
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
import "../assetsmodels/Coin_Star"
import "../assetsmodels/Environment_Cliff2"
import "../assetsmodels/TownCenter_SecondAge_Level3"
import "../assetsmodels/House1"
import "../assetsmodels/House2"

SpaceTemplate {
//TemplatePlanet {
    id: root

    onVisibleChanged: visible ? startLevel() : endLevel()

    function startLevel() {
        console.log("start level----------------------------------------")
        spaceShip.position = Qt.vector3d(2000,50*spaceShip.scale.y+1500,0)
    }

    function endLevel() {

    }

    property int count: 0

    PhysicsWorld {
       // running: root.visible
        //gravity: Qt.vector3d(0, -9.81, 0)
        //typicalLength: 1
        //typicalSpeed: 10
      //  scene: veiwSpaceTemplate.scene
    }



    //veiwSpaceTemplate.environment: showSkybox ? sceneEnviroment : sceneEnviroment4Android
    view3D.environment: SceneEnvironment {
        clearColor: "white"
        backgroundMode: SceneEnvironment.SkyBox
        antialiasingMode: SceneEnvironment.MSAA
        antialiasingQuality: SceneEnvironment.High
        lightProbe: proceduralSky
    }
    //! [environment]

    //! [textures]
    Texture {
        id: proceduralSky
        textureData: ProceduralSkyTextureData {
            sunLongitude: -115
            skyTopColor: "DeepSkyBlue"
            //skyTopColor: "LightSkyBlue"
            skyHorizonColor: "Azure"
            groundBottomColor: "Aqua"
            sunColor: "yellow"
        }
    }

    view3D.importScene: islandNode

    Node {
        id: islandNode
        //parent: veiwSpaceTemplate.scene

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
                            //source: "qrc:/images/textures/Poolwatertextureseamless13215.jpeg"
                            source: "qrc:/images/textures/bekky-bekks-4njhXd_7DOg-unsplash.jpg"
                            //source: "qrc:/images/textures/riverTexture.png"
                            scaleU: 100
                            scaleV: 100
                        }
                    }
                ]
                castsShadows: false
                receivesShadows: true
            }
        }
        //! [plane]

        //! [box]
        /*DynamicRigidBody {
            position: Qt.vector3d(-100, 900, 0)
            collisionShapes: [
                BoxShape {}
                ,SphereShape{}
                ,CapsuleShape{}
                //ConvexMeshShape{}
            ]

            Model {
                source: "#Cube"
                materials: PrincipledMaterial {
                    baseColor: "yellow"
                }
            }

            Model {
                source: "#Cylinder"
                materials: PrincipledMaterial {
                    baseColor: "yellow"
                }
            }

            Model {
                position: Qt.vector3d(0,50,0)
                source: "#Sphere"
                materials: PrincipledMaterial {
                    baseColor: "blue"
                }
            }
        }*/
        //! [box]

        House1 {
            position: Qt.vector3d(0,0,2000)
            visible: showAssets
        }

        House2 {
            position: Qt.vector3d(0,0,2500)
            visible: showAssets
        }

        TownCenter_SecondAge_Level3 {
            property real sc: 5
            scale: Qt.vector3d(sc,sc,sc)
            stoneColor: "#504A4B"
            bushCoor: "green"
            waterCoor: "Cyan"
            visible: showAssets
        }

        Environment_Cliff2 {
            position: Qt.vector3d(6000,0,0)
            visible: showAssets
        }

        Coin_Star {
            position: Qt.vector3d(0,100, 0)
            roughness: 1
        }

        Coin_Star {
            position: Qt.vector3d(0,200, 100)
            roughness: 0
        }


        CowPerson {
            id: cowPerson
         //   parent: world
            parent: heroNode
            position: Qt.vector3d(600, 0, -100)
            property real sca: 0.6
            scale: Qt.vector3d(sca, sca, sca)
            eulerRotation.y: -90
            visible: showAssets
        }

        Node {
            id: cowBarn
            position: Qt.vector3d(1800,0,-300)

            Cow {
                id: cow
                visible: showAssets
               // parent: world
                position: Qt.vector3d(-200, 0, 0)
                //position: Qt.vector3d(1200, 0, -200)
                property real sca: 0.35
                scale: Qt.vector3d(sca, sca, sca)
                eulerRotation.y: -90
            }
            Houses_FirstAge_2_Level2 {
                id: barn
                visible: showAssets
                eulerRotation.y: 180
                //position: Qt.vector3d(1400,0,-200)
                property real sc: 4
                scale: Qt.vector3d(sc, sc, sc)
            }

            Tree2 {
                visible: showAssets
                scale: Qt.vector3d(60,60,60)
                position: Qt.vector3d(-100,0,400)
                eulerRotation.y: -90
            }

            Tree2 {
                visible: showAssets
                scale: Qt.vector3d(60,60,60)
                position: Qt.vector3d(-100,0,-400)
                eulerRotation.y: 90
            }
        }

        Building1_Large {
            id: cowPalace
            visible: showAssets
            eulerRotation.y: -90
            position: Qt.vector3d(3500,0,1500)
            property real sc: 2.5
            scale: Qt.vector3d(sc, sc, sc)
        }


        SpaceShip3D {
            id: spaceShip
            type: "hero"
            shipPosition: Qt.vector3d(300,50*scale.y,-300)
            //position: Qt.vector3d(0, 0,-600)
            //position: Qt.vector3d(400,50*scale.y+1000,-800)
            //position: Qt.vector3d(2000,50*scale.y+1500,0)

            isFlying: true
            scale: Qt.vector3d(2,2,2)
        }

        Resource_PineTree_Group{
            //scale: Qt.vector3d(5,5,5)
            instancing: instanceListPineTrees
           // visible: !levelStates.menuOptions.checkBoxDontShowAssets
        }

        InstanceList {
            id: instanceListPineTrees
            //instances: [instance1, instance2, instance3]
        }
    }

}
