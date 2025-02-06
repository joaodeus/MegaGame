import QtQuick 2.15
import QtQuick3D

import "../models/boatSail"
import "../"
import "../oceanEffect"

TemplatePlanet {
    id: root

    view3D.importScene: sceneOcean

    Node {
        id: sceneOcean

        //heroNode.children: boat
        Node {
            parent: heroNode
            id: boat
            BoatWSail {
                eulerRotation.y: 90
                //position: Qt.vector3d(-300, 0, -300)
                scale: Qt.vector3d(3,3,3)
            }
        }


        Ocean {
            y: 4
            x: 1000
            //opacity: 0.6
            scale: Qt.vector3d(600, 4, 600)
            oceanMovement: root.visible

            distanceX: 50
            distanceZ: 50
            delta: 0.5
            w: 1
            amplitude: 4
        }

        /*Model {
            //y: -0.5
            source: "#Rectangle"
            scale: Qt.vector3d(1000, 1000, 1)//scale z has no effect
            eulerRotation.x: -90
            //materials: DefaultMaterial {
              //  diffuseColor: "brown"//Qt.rgba(0.8, 0.8, 0.6, 1.0)
            //}
            materials: [
                PrincipledMaterial {
                    baseColorMap: Texture {
                        //source: "qrc:/images/textures/water-texture.jpg"
                        source: "qrc:/images/textures/riverTexture.png"
                        scaleU: 100
                        scaleV: 100
                    }
                }
            ]
        }//Model
        */


        //qrc:/images/textures/water-texture.jpg

    }
}
