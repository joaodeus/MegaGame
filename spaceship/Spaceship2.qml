import QtQuick 2.3
import QtQuick3D //1.15
import "../elements"

Node {


    SpaceShipShooter {
        id: body
        eulerRotation.z: 90
        scale: Qt.vector3d(0.5, 2.4, 0.5)
    }

    Model {
        id: cockpit
        source: "#Sphere"
        y: 190
        x: 150
        scale: Qt.vector3d(1.2, 0.9, 1.2)
        materials: DefaultMaterial {
            diffuseColor: "lightblue"
        }
    }

    Model {
        source: "#Sphere"
        y: 150
        x: 150
        scale: Qt.vector3d(3, 0.9, 3)
        materials: DefaultMaterial {
            diffuseColor: "blue"
        }
        //visible: false
    }


    Model {
        id: frontPanel
        x: 120
        y: 60
        eulerRotation.z: -15
        source: "#Cylinder"
        scale: Qt.vector3d(0.2, 1.5, 0.2)
        materials: DefaultMaterial {
            diffuseColor: "red"
        }
    }

/*

    Model {
        id: shipBody
        source: "#Sphere"
        scale: Qt.vector3d(3, 1, 1)
        materials: DefaultMaterial {
            diffuseColor: "blue"
        }
        //visible: false
    }

    Model {
        id: cockpit
        source: "#Sphere"
        y: 35
        x: -50
        scale: Qt.vector3d(1, 0.6, 0.6)
        materials: DefaultMaterial {
            diffuseColor: "lightblue"
        }
        //visible: false
    }


    Model {
        id: wings
        x: -60
        source: "#Cube"
        scale: Qt.vector3d(0.4, 0.01, 2)
        materials: DefaultMaterial {
            diffuseColor: "red"
        }
    }

    Shooter {
        id: shooterRight
        z: 100
        x: -50
        eulerRotation.z: 90
        scale: Qt.vector3d(0.2, 0.9, 0.2)
    }

    Shooter {
        id: shooterLeft
        z: -100
        x: -50
        eulerRotation.z: 90
        scale: Qt.vector3d(0.2, 0.9, 0.2)
    }

    Model {
        id: tail
        x: -120
        y: 40
        eulerRotation.z: 15
        source: "#Cube"
        scale: Qt.vector3d(0.2, 0.6, 0.01)
        materials: DefaultMaterial {
            diffuseColor: "red"
        }
    }

    Shooter {
        id: shooterTail
        x: -130
        y: 75
        eulerRotation.z: 90
        scale: Qt.vector3d(0.15, 0.5, 0.15)
    }
    */

}
