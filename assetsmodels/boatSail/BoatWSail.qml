import QtQuick
import QtQuick3D
Node {
    id: rootNode
    Model {
        id: sail
        x: -1.03357
        y: 4.02573
        z: 14.1905
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/sail.mesh"

        DefaultMaterial {
            id: darkWood_material
            diffuseColor: "#ff28120a"
        }

        DefaultMaterial {
            id: sail_material
            diffuseColor: "#ff806f4a"
        }
        materials: [
            darkWood_material,
            sail_material
        ]
    }
    Model {
        id: boat
        x: -1.03357
        y: -0.187775
        z: -0.354953
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/boat.mesh"

        DefaultMaterial {
            id: lightWood_material
            diffuseColor: "#ff703519"
        }

        DefaultMaterial {
            id: steel_material
            diffuseColor: "#ff545454"
        }
        materials: [
            lightWood_material,
            darkWood_material,
            steel_material
        ]
    }
}
