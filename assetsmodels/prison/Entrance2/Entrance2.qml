import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: rock_material
        objectName: "Rock"
        baseColor: "#ff494949"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Model {
            id: entrance2
            objectName: "Entrance2"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/cylinder_011.mesh"
            materials: [
                rock_material
            ]
        }
    }

    // Animations:
}
