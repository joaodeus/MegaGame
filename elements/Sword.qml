import QtQuick 2.0
import QtQuick3D

Node {

    property string swordFistColor: "grey"
    property string swordBodyColor: "grey"

    Model {
        id: fist
        source: "#Cylinder"
        y: 0
        scale: Qt.vector3d(0.05, 0.1, 0.05)
        materials: DefaultMaterial {
            diffuseColor: swordFistColor//Qt.rgba(0.9, 0.9, 0.9, 1.0)
        }
    }

    Model {
        id: body
        source: "#Cylinder"
        //source: "#Cube"
        y: 50 * (scale.y + fist.scale.y)
        //x: 5
        scale: Qt.vector3d(0.05, 0.5, 0.05)
        //scale: Qt.vector3d(0.01, 0.5, 0.05)

        materials: DefaultMaterial {
            diffuseColor: swordBodyColor//Qt.rgba(0.9, 0.9, 0.9, 1.0)
        }
    }

    Model {
        id: fistProtection
        source: "#Sphere"
        y: 50 * (scale.y + fist.scale.y)
        scale: Qt.vector3d(0.15, 0.02, 0.15)
        materials: DefaultMaterial {
            diffuseColor: "lightblue"
        }
    }
}

/*
Node {

    property string swordFistColor: "grey"
    property string swordBodyColor: "grey"

    Model {
        id: fist
        source: "#Cylinder"
        y: 0
        scale: Qt.vector3d(0.05, 0.1, 0.05)
        materials: DefaultMaterial {
            diffuseColor: swordFistColor//Qt.rgba(0.9, 0.9, 0.9, 1.0)
        }
    }

    Model {
        id: body
        source: "#Cone"
        //source: "#Cube"
        //y: 50 * (scale.y + fist.scale.y)
        //x: 5
        scale: Qt.vector3d(0.05, 1, 0.05)
        //scale: Qt.vector3d(0.01, 0.5, 0.05)

        materials: DefaultMaterial {
            diffuseColor: swordBodyColor//Qt.rgba(0.9, 0.9, 0.9, 1.0)
        }
    }

    Model {
        id: fistProtection
        source: "#Sphere"
        y: 50 * (scale.y + fist.scale.y)
        scale: Qt.vector3d(0.15, 0.02, 0.15)
        materials: DefaultMaterial {
            diffuseColor: "lightblue"
        }
    }

}
*/
