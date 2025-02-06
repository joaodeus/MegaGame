import QtQuick 2.3
import QtQuick3D

Node {

    property string colorPath: "red"
    property real x0: -100
    property real x1: 100
    property real y0: -20
    property real y1: 20
    property real z0: 200
    property real z1: 200

    property real xMid: (x0 + x1) * 0.5
    property real yMid: (y0 + y1) * 0.5
    property real zMid: (z0 + z1) * 0.5

    property real xDist: Math.sqrt( Math.pow(x1-x0, 2) )
    property real yDist: Math.sqrt( Math.pow(y1-y0, 2) )
    property real zDist: Math.sqrt( Math.pow(z1-z0, 2) )
    //    property real xDist: Math.sqrt( Math.pow(x1-x0, 2) + Math.pow(y1-y0, 2) + Math.pow(z2-z1, 2) )

    property real xScale: xDist / 100
    property real yScale: yDist / 100
    property real zScale: zDist / 100


    //scale 2 equals 200 units
    //scale 10 equals 1000 units
    //scale 20 equals 2000 units
    Model {
        id: pathRect
        source: "#Cube"
        position: Qt.vector3d(xMid, yMid, zMid)
        scale: Qt.vector3d(xScale, yScale, zScale)
        //materials: DefaultMaterial { diffuseColor: colorPath }

        materials: [ PrincipledMaterial {
                baseColorMap: Texture {
                    source: "qrc:/images/textures/stacked-stones.png"
                    scaleU: 1.0
                    scaleV: 1.0
                }
            }
        ]
    }

    /*
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
    }*/

}
