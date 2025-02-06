import QtQuick
import QtQuick3D

Node {
    // Materials
    DefaultMaterial {
        id: wood_material
        diffuseColor: "#ff3f250e"
    }
    DefaultMaterial {
        id: wood_Light_material
        diffuseColor: "#ff603e19"
    }
    DefaultMaterial {
        id: green_material
        diffuseColor: "#ff182e03"
    }
    // end of Materials

    Node {
        id: rootNode
        Model {
            id: townCenter_FirstAge_Level3
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/townCenter_FirstAge_Level3.mesh"
            materials: [
                wood_material,
                wood_Light_material,
                green_material
            ]
        }
    }
}
