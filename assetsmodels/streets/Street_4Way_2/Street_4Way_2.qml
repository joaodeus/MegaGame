import QtQuick
import QtQuick3D

Node {
    id: node0123

    // Resources
    PrincipledMaterial {
        id: grey_material34
        objectName: "Grey"
        baseColor: "#ff5f6167"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: black_material45
        objectName: "Black"
        baseColor: "#ff0b0909"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: white_material567
        objectName: "White"
        baseColor: "#ffa3a3a3"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: rootNode123
        objectName: "RootNode"
        Model {
            id: black_material
            objectName: "Street_4Way_2"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/street_4Way_2.mesh"
            materials: [
                grey_material34,
                black_material45,
                white_material567
            ]
        }
    }

    // Animations:
}
