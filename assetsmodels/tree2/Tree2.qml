import QtQuick
import QtQuick3D

Node {
    // Materials
    DefaultMaterial {
        id: brown_material
        diffuseColor: "#ff4e230e"
    }
    DefaultMaterial {
        id: green_material
        diffuseColor: "#20df50" //"#ff276224"
    }
    // end of Materials

    property alias instancing: tree2_Cylinder_007.instancing

    Node {
        id: tree2_obj
        Model {
            id: tree2_Cylinder_007
            source: "meshes/tree2_Cylinder_007.mesh"
            materials: [
                brown_material,
                green_material
            ]
        }
    }
}
