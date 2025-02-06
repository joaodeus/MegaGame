import QtQuick
import QtQuick3D

Node {
    // Materials
    DefaultMaterial {
        id: stone_material
        diffuseColor: "#ff3e3f37"
    }
    DefaultMaterial {
        id: snow_material
        diffuseColor: "#ff6f7062"
    }
    DefaultMaterial {
        id: dirt_material
        diffuseColor: "#ff181307"
    }
    // end of Materials

    Node {
        id: rootNode
        Model {
            id: mountainLarge_Single
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/mountainLarge_Single.mesh"
            materials: [
                stone_material,
                snow_material,
                dirt_material
            ]
        }
    }
}
