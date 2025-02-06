import QtQuick
import QtQuick3D
Node {
    id: sword2_obj
    Model {
        id: cube1_default
        source: "meshes/cube1_default.mesh"

        DefaultMaterial {
            id: default_material
            diffuseColor: "#ffc9cfb1"
        }
        materials: [
            default_material
        ]
    }
}
