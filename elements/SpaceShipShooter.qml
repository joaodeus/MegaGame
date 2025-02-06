import QtQuick 2.3
import QtQuick3D //1.15

Node {
    property color shooterColor: "yellow"


    property alias shooterScale: shooter.scale

    Node {
        id: shooter
        eulerRotation.z: 90
        scale: Qt.vector3d(0.2, 1, 0.2)

        Model {
            //id: shooter
            source: "#Cylinder"
            castsShadows: true
            receivesShadows: true
            materials: DefaultMaterial {
                diffuseColor: shooterColor//"yellow"
            }
            //visible: false
        }

        Model {
            //id: shooterHead2
            source: "#Sphere"
            y: -50
            castsShadows: true
            receivesShadows: true
            materials: DefaultMaterial {
                diffuseColor: shooterColor//"yellow"
            }
        }

    }

}
