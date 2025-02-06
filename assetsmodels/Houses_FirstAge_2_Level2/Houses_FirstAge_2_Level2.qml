import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: stone_material
        objectName: "Stone"
        baseColor: "#ff3e3f37"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: wood_material
        objectName: "Wood"
        baseColor: "#ff3f250e"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: wood_Light_material
        objectName: "Wood_Light"
        baseColor: "#ff603e19"
        roughness: 0.5
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Model {
            id: houses_FirstAge_2_Level2
            objectName: "Houses_FirstAge_2_Level2"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/houses_FirstAge_2_Level2.mesh"
            materials: [
                stone_material,
                wood_material,
                wood_Light_material
            ]
        }
    }

    // Animations:
}
