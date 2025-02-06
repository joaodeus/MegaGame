import QtQuick 2.3
import QtQuick3D

Model {
    id: star
    source: "#Sphere"
    scale: Qt.vector3d(0.2, 0.2, 0.2)
    materials: [ DefaultMaterial {diffuseColor: "white"}]
}
