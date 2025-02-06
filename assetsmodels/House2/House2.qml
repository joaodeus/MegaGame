import QtQuick
import QtQuick3D

Node {
    id: node012

    // Resources
    PrincipledMaterial {
        id: grey_material345
        objectName: "Grey"
        baseColor: "#ff161818"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: darkGrey_material456
        objectName: "DarkGrey"
        baseColor: "#ff070707"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: white_material56
        objectName: "White"
        baseColor: "#ff666666"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: brown_material67
        objectName: "Brown"
        baseColor: "#ff271f13"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: rootNode123
        objectName: "RootNode"
        Model {
            id: house22
            objectName: "House2"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/house2_mesh7.mesh"
            materials: [
                grey_material345,
                darkGrey_material456,
                white_material56,
                brown_material67
            ]
        }
    }

    // Animations:
}
