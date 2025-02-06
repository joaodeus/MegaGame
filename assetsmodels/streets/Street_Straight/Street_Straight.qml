import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: grey_material
        objectName: "Grey"
        baseColor: "#ff5f6167"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: white_material
        objectName: "White"
        baseColor: "#ffa3a3a3"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: black_material
        objectName: "Black"
        baseColor: "#ff0b0909"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Model {
            id: street_Straight
            objectName: "Street_Straight"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/street_Straight.mesh"
            materials: [
                grey_material,
                white_material,
                black_material
            ]
        }
    }

    // Animations:
}
