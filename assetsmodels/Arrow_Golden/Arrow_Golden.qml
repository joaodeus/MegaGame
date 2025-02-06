import QtQuick
import QtQuick3D

import "../../elements"

Bullet_template {
    id: root
    // Resources
    PrincipledMaterial {
        id: golden_material
        objectName: "Golden"
        baseColor: "#ff5f450c"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: lightWood_material4
        objectName: "LightWood"
        baseColor: "#ff201011"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: rootNode1
        objectName: "RootNode"
        Model {
            id: arrow_Golden
            objectName: "Arrow_Golden"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/arrow_Golden.mesh"
            materials: [
                golden_material,
                lightWood_material4
            ]
        }
    }

    // Animations:
}
