import QtQuick
import QtQuick3D

Node {
    id: node012

    // Resources
    PrincipledMaterial {
        id: street_Curve_Cube_001
        objectName: "Grey."
        baseColor: "#ff5f6167"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: street_Deadend
        objectName: "Black"
        baseColor: "#ff0b0909"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: white_material56
        objectName: "White"
        baseColor: "#ffa3a3a3"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: rootNode12
        objectName: "RootNode"
        Model {
            id: street_Curve
            objectName: "Street_Curve"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/street_Curve.mesh"
            materials: [
                street_Curve_Cube_001,
                street_Deadend,
                white_material56
            ]
        }
    }

    // Animations:
}
