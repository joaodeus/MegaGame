import QtQuick
import QtQuick3D

Node {
    id: node0

    // Resources
    property alias stoneColor: stone_material3.baseColor
    property alias bushCoor: green_material4.baseColor
    property alias waterCoor: water_material.baseColor

    PrincipledMaterial {
        id: stone_material3
        objectName: "Stone"
        baseColor: "#ff3e3f37"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: green_material4
        objectName: "Green"
        baseColor: "#ff182e03"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: water_material
        objectName: "Water"
        baseColor: "#ff12363f"
        roughness: 0.5
    }

    // Nodes:
    Node {
        id: rootNode1
        objectName: "RootNode"
        Model {
            id: townCenter_SecondAge_Level3
            objectName: "TownCenter_SecondAge_Level3"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/townCenter_SecondAge_Level3_mesh.mesh"
            materials: [
                stone_material3,
                green_material4,
                water_material
            ]
        }
    }

    // Animations:
}
