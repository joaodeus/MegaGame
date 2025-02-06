import QtQuick
import QtQuick3D

Node {
    id: hat_material40

    // Resources
    PrincipledMaterial {
        id: foot_R
        objectName: "Stone_Light"
        baseColor: "#B7B7B7" // "#ff2d363b"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: lowerLeg_R_end
        objectName: "Stone_Dark"
        baseColor: "#949494" //"#ff20252e"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: fist_L_end
        objectName: "RootNode"
        Model {
            id: poleTarget_L_end
            objectName: "Path_Straight"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/path_Straight.mesh"
            materials: [
                foot_R,
                lowerLeg_R_end
            ]
        }
    }

    // Animations:
}
