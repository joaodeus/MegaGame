import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: grey_material
        objectName: "Grey"
        baseColor: "#ff161818"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: darkGrey_material
        objectName: "DarkGrey"
        baseColor: "#ff070707"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: brown_material
        objectName: "Brown"
        baseColor: "#ff271f13"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: white_material
        objectName: "White"
        baseColor: "#ff666666"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Model {
            id: house1
            objectName: "House1"
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/house1_mesh.mesh"
            materials: [
                grey_material,
                darkGrey_material,
                brown_material,
                white_material
            ]
        }
    }

    // Animations:
}
