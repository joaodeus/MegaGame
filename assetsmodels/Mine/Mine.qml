import QtQuick
import QtQuick3D

Node {
    // Materials
    DefaultMaterial {
        id: stone_material
        diffuseColor: "#ff3e3f37"
    }
    DefaultMaterial {
        id: metal_material
        diffuseColor: "#ff140d07"
    }
    DefaultMaterial {
        id: metal_Light_material
        diffuseColor: "#ff303030"
    }
    DefaultMaterial {
        id: wood_material
        diffuseColor: "#ff3f250e"
    }
    DefaultMaterial {
        id: wood_Light_material
        diffuseColor: "#ff603e19"
    }
    // end of Materials

    Node {
        id: rootNode
        Model {
            id: mine
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/mine.mesh"
            materials: [
                stone_material,
                metal_material,
                metal_Light_material,
                wood_material,
                wood_Light_material
            ]
        }
    }
}
