import QtQuick
import QtQuick3D

Node {
    // Materials

    property alias treeTopColor: green_material.diffuseColor
    property alias trunkColor: wood_material.diffuseColor
    property alias instancing: resource_PineTree_Group.instancing

    DefaultMaterial {
        id: wood_material
        diffuseColor: "#ff3f250e"
    }
    DefaultMaterial {
        id: green_material
        diffuseColor: "#20df50" //"#ff182e03"
    }
    // end of Materials

    Node {
        id: rootNode
        Model {
            id: resource_PineTree_Group
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/resource_PineTree_Group.mesh"
            materials: [
                wood_material,
                green_material
            ]
        }
    }
}
