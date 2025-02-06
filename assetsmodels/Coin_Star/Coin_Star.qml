import QtQuick
import QtQuick3D

Node {
    id: node0

    // Resources
    PrincipledMaterial {
        id: gold_material4
        objectName: "Gold"
        //baseColor: "#ff7b6014"
        baseColor: "gold"
        //roughness: 0.690034806728363
        roughness: 1
    }

    property alias color: gold_material4.baseColor
    property alias roughness: gold_material4.roughness

    // Nodes:
    Node {
        id: rootNode1
        objectName: "RootNode"
        Model {
            id: coin_Star2
            objectName: "Coin_Star"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/cylinder_012_mesh3.mesh"
            materials: [
                gold_material4
            ]
        }
    }

    // Animations:
}
