import QtQuick 2.3
import QtQuick3D //1.15

Node {

    property real distance: 0.3
    property real thickness: 0.05
    property string nodeColor: "blue"

    property alias bottomVisible: bottom.visible
    //eulerRotation.x: -90

    property bool cube: false

    Model {
        id: top
        source: "#Sphere"

        scale: Qt.vector3d(thickness, thickness, thickness)
        materials: DefaultMaterial {
            diffuseColor: nodeColor
        }
        visible: false
    }

    //Cylinder default height (y) is 100, y centered at 50 (middle)
    Model {
        id: armCylinder
        source: cube ? "#Cube" : "#Cylinder"
        y: -50*distance
        scale: Qt.vector3d(thickness, distance, thickness)
        materials: DefaultMaterial {
            diffuseColor: nodeColor//Qt.rgba(0.9, 0.9, 0.9, 1.0)
        }
    }

    Model {
        id: bottom
        source: "#Sphere"
        y: -distance*100
        scale: Qt.vector3d(thickness, thickness, thickness)
        materials: DefaultMaterial {
            diffuseColor: nodeColor//Qt.rgba(0.9, 0.9, 0.9, 1.0)
        }
        visible: false
    }

}
