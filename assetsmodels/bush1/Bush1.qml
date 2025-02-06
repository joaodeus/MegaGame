import QtQuick
import QtQuick3D
Node {
    id: rootNode
    Model {
        id: bush1
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/bush1.mesh"

        DefaultMaterial {
            id: leaves_material
            diffuseColor: "#20df50"//"#ff85a32e"
        }

        DefaultMaterial {
            id: tree_material
            diffuseColor: "brown"//"#ff321003"
        }
        materials: [
            leaves_material,
            tree_material
        ]
    }
}
