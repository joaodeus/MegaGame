import QtQuick 2.3
import QtQuick3D //1.15

Bullet_template {
    property color bulletColor: "yellow"


    property alias bulletScale: shooter.scale

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
                diffuseColor: bulletColor//"yellow"
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
                diffuseColor: bulletColor//"yellow"
            }
        }

    }

}
