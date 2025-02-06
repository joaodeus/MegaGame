import QtQuick
import QtQuick3D

Node {
    id: node01

    property alias mesh: environment_Cliff2.source

    // Resources
    PrincipledMaterial {
        id: atlas_material
        objectName: "Atlas"
        baseColor: "#ffcccccc"
        roughness: 0.5527864098548889
    }

    // Nodes:
    Node {
        id: rootNode12
        objectName: "RootNode"
        Model {
            id: environment_Cliff2
            objectName: "Environment_Cliff2"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/mesh_004_mesh.mesh"
            materials: [
                atlas_material
            ]
        }
    }

    // Animations:
}
