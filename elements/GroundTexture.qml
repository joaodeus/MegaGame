import QtQuick 2.3
import QtQuick3D

Node {
    id: groundNode

    property alias scaleU: tex.scaleU
    property alias scaleV: tex.scaleV
    property alias source: tex.source

    property real x0: -100
    property real x1: 100

    //property real y0: -20
    //property real y1: 20

    property real z0: 200
    property real z1: 200

    property real xMid: (x0 + x1) * 0.5
    //property real yMid: (y0 + y1) * 0.5
    property real zMid: (z0 + z1) * 0.5

    property real xDist: Math.sqrt( Math.pow(x1-x0, 2) )
    //property real yDist: Math.sqrt( Math.pow(y1-y0, 2) )
    property real zDist: Math.sqrt( Math.pow(z1-z0, 2) )
    //    property real xDist: Math.sqrt( Math.pow(x1-x0, 2) + Math.pow(y1-y0, 2) + Math.pow(z2-z1, 2) )

    property real xScale: xDist / 100
    //property real yScale: yDist / 100
    property real zScale: zDist / 100

    Model {
        id: ground
       // y: -0.5
        position.x: xMid
        position.z: zMid
        //position: Qt.vector3d(xMid, groundNode.position.y, zMid)
        source: "#Rectangle"
        scale: Qt.vector3d(xScale, zScale, 1)// invert scale z with scaly y //scale z has no effect
        eulerRotation: Qt.vector3d(-90, 0, 0)
        materials: [
            PrincipledMaterial {
                baseColorMap: Texture {
                    id: tex
                    source: "qrc:/images/textures/stacked-stones.png"
                    scaleU: 1
                    scaleV: 4
                }
            }
        ]
    }//Model

    //scale 2 equals 200 units
    //scale 10 equals 1000 units
    //scale 20 equals 2000 units
}
