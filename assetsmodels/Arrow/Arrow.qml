import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: darkRed_material
        objectName: "DarkRed"
        baseColor: "#ff170705"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: lightWood_material
        objectName: "LightWood"
        baseColor: "#ff201011"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: steel_material
        objectName: "Steel"
        baseColor: "#ff1c202e"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: lightSteel_material
        objectName: "LightSteel"
        baseColor: "#ff484749"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Model {
            id: arrow
            objectName: "Arrow"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/arrow.mesh"
            materials: [
                darkRed_material,
                lightWood_material,
                steel_material,
                lightSteel_material
            ]
        }
    }

    // Animations:
}
