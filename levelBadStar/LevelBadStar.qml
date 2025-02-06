import QtQuick 2.12
import QtQuick3D //1.15
import Placement 1.0

import "../keyboardManager"
import "../spaceship"
import "../"


SpaceTemplate {

    view3D.importScene: badStar

    property color mainBodyColor: "grey"
    property color piecesColor: "lightblue"


    property real lenghtMainBodyX: 100
    property real widthMainBodyZ: 12
    property real heightMainBodyY: 1//2

    property real lenghtPiecesX: 100
    property real widthPiecesZ: 5
    property real heightPiecesY: 12//2


    Node {
        id: badStar

        property color mainBodyColor: "grey"
        property color piecesColor: "lightblue"


        property real lenghtMainBodyX: 100
        property real widthMainBodyZ: 12
        property real heightMainBodyY: 1//2

        property real lenghtPiecesX: 100
        property real widthPiecesZ: 5
        property real heightPiecesY: 12//2


        Node {
            id: badStarModel

            Model {
                id: mainBody
                source: "#Cube"
                scale: Qt.vector3d(lenghtMainBodyX, heightMainBodyY, widthMainBodyZ)
                //castsShadows: true
                //receivesShadows: true
                /*materials: DefaultMaterial {
                    diffuseColor: mainBodyColor
                }*/

                materials: [ DefaultMaterial {diffuseColor: mainBodyColor}]

                /*materials: [ PrincipledMaterial {
                        baseColorMap: Texture {
                            tilingModeHorizontal: Texture.ClampToEdge
                            mappingMode: Texture.Environment
                            source: "qrc:/images/planetsTextures/badStar.png"
                            scaleU: 1.0
                            scaleV: 1.0
                        }
                    }
                ]*/
            }

            Model {
                id: rightPiece
                source: "#Cube"
                y: heightMainBodyY*100*0.5 + heightPiecesY*100*0.5
                z: widthMainBodyZ*100*0.5 + widthPiecesZ*100*0.5
                x: -20
                scale: Qt.vector3d(lenghtPiecesX, heightPiecesY, widthPiecesZ)
               // castsShadows: true
             //   receivesShadows: true
                materials: [ DefaultMaterial {diffuseColor: mainBodyColor}]
                /*materials: [ PrincipledMaterial {
                        baseColorMap: Texture {
                            tilingModeHorizontal: Texture.ClampToEdge
                            mappingMode: Texture.Environment
                            source: "qrc:/images/planetsTextures/badStar.png"
                            scaleU: 1.0
                            scaleV: 1.0
                        }
                    }
                ]*/
            }

            Model {
                id: leftPiece
                source: "#Cube"
                y: heightMainBodyY*100*0.5 + heightPiecesY*100*0.5
                z: -widthMainBodyZ*100*0.5 - widthPiecesZ*100*0.5
                x: -20
                scale: Qt.vector3d(lenghtPiecesX, heightPiecesY, widthPiecesZ)
              //  castsShadows: true
           //     receivesShadows: true
                materials: [ DefaultMaterial {diffuseColor: mainBodyColor}]
                /*materials: [ PrincipledMaterial {
                        baseColorMap: Texture {
                            tilingModeHorizontal: Texture.ClampToEdge
                            mappingMode: Texture.Environment
                            source: "qrc:/images/planetsTextures/badStar.png"
                            scaleU: 1.0
                            scaleV: 1.0
                        }
                    }
                ]*/
            }

        }//badStarModel

    }//Node: badStar

}

//https://visibleearth.nasa.gov/collection/1484/blue-marble
//https://www.nasa.gov/audience/formedia/features/Merchandising_Guidelines.html
//https://www.nasa.gov/audience/formedia/features/Advertising_Guidelines.html
//https://www.solarsystemscope.com/textures/ - planet textures
