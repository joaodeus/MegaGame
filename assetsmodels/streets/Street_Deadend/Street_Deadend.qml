import QtQuick
import QtQuick3D

Node {
    id: node0

    // Resources
    PrincipledMaterial {
        id: grey_material3
        objectName: "Grey"
        baseColor: "#ff5f6167"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: white_material4
        objectName: "White"
        baseColor: "#ffa3a3a3"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: black_material5
        objectName: "Black"
        baseColor: "#ff0b0909"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: rootNode1
        objectName: "RootNode"
        Model {
            id: street_Deadend
            objectName: "Street_Deadend"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/street_Deadend.mesh"
            materials: [
                grey_material3,
                white_material4,
                black_material5
            ]
        }
    }

    // Animations:
}
