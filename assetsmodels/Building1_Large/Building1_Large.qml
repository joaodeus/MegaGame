import QtQuick
import QtQuick3D

Node {
    id: wood_material

    // Resources
    PrincipledMaterial {
        id: beige_material
        objectName: "Beige"
        baseColor: "#ff565441"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: grey_material
        objectName: "Grey"
        baseColor: "#ff2e2e2e"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: white_material
        objectName: "White"
        baseColor: "#ffa3a3a3"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: lightYellow_material
        objectName: "LightYellow"
        baseColor: "#ff68654f"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: darkRed_material
        objectName: "DarkRed"
        baseColor: "#ff350e0e"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: darkGrey_material
        objectName: "DarkGrey"
        baseColor: "#ff101010"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: brown_material
        objectName: "Brown"
        baseColor: "#ff1a0f06"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: rootNode1
        objectName: "RootNode"
        Model {
            id: building1_Large
            objectName: "Building1_Large"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/building1_Large.mesh"
            materials: [
                beige_material,
                grey_material,
                white_material,
                lightYellow_material,
                darkRed_material,
                darkGrey_material,
                brown_material
            ]
        }
    }

    // Animations:
}
