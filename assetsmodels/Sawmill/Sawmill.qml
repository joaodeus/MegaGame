import QtQuick
import QtQuick3D

Node {
    id: upperLeg_R26

    // Resources
    PrincipledMaterial {
        id: body35
        objectName: "RoofTiles_Red"
        baseColor: "#ff1e0503"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: head
        objectName: "Wood"
        baseColor: "#ff1f0e05"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: hips
        objectName: "Wood_Side"
        baseColor: "#ff4e3a19"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: skin
        objectName: "DarkWood"
        baseColor: "#ff120803"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: abdomen
        objectName: "Metal"
        baseColor: "#ff141518"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: poleTarget_L_end
        objectName: "Windows"
        baseColor: "#ff070707"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: wood_Light_material
        objectName: "Wood_Light"
        baseColor: "#ff361808"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: foot_R
        objectName: "Stone_Dark"
        baseColor: "#ff20252e"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: lowerLeg_L
        objectName: "Plaster"
        baseColor: "#ff58532f"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: fist_R
        objectName: "Stone_Light"
        baseColor: "#ff2d363b"
        roughness: 0.690034806728363
    }

    // Nodes:
    Node {
        id: neck
        objectName: "RootNode"
        Model {
            id: body
            objectName: "Sawmill"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/sawmill.mesh"
            materials: [
                body35,
                head,
                hips,
                skin,
                abdomen,
                poleTarget_L_end,
                wood_Light_material,
                foot_R,
                lowerLeg_L,
                fist_R
            ]
        }
    }

    // Animations:
}
