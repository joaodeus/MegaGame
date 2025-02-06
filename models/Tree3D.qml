import QtQuick3D //1.15

Node {
    id: tre

    property real yOffset: treeTrunk.scale.y*50-50
//    y: treeTrunk.scale.y*50 - 50

    Model {
        id: treeTrunk
        source: "#Cylinder"
        scale: Qt.vector3d(0.4, 1.5, 0.4)
        materials: [ DefaultMaterial {diffuseColor: "brown"}]
    }
    Model {
        id: treeTop
        source: "#Sphere"
        y: 160
        scale: Qt.vector3d(2.2, 2.2, 2.2)
        materials: [ DefaultMaterial {diffuseColor: "#00ff40"}]
        //visible: false
    }
}
