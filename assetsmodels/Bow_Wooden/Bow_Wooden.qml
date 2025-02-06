import QtQuick
import QtQuick3D

Node {
    id: node01

    // Resources
    PrincipledMaterial {
        id: darkWood_material
        objectName: "DarkWood"
        baseColor: "#ff0d070b"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: arrow
        objectName: "LightWood"
        baseColor: "#ff201011"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: lightSteel_material
        objectName: "White"
        baseColor: "#ffa3a3a3"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Model {
            id: bow_Wooden
            objectName: "Bow_Wooden"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/bow_Wooden.mesh"
            materials: [
                darkWood_material,
                arrow,
                lightSteel_material
            ]
        }
    }

    // Animations:
}
