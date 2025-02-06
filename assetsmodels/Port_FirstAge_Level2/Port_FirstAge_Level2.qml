import QtQuick
import QtQuick3D

Node {
    // Materials
    PrincipledMaterial {
        id: wood_Light_material
        baseColor: "#ff603e19"
        roughness: 0.5
        cullMode: Material.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: wood_material
        baseColor: "#ff3f250e"
        roughness: 0.5
        cullMode: Material.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: fabric_material
        baseColor: "#ff754e17"
        roughness: 0.5
        cullMode: Material.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: metal_Light_material
        baseColor: "#ff303030"
        roughness: 0.5
        cullMode: Material.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    // end of Materials

    Model {
        id: port_FirstAge_Level2
        source: "meshes/port_FirstAge_Level2.mesh"
        materials: [
            wood_Light_material,
            wood_material,
            fabric_material,
            metal_Light_material
        ]
    }
}
