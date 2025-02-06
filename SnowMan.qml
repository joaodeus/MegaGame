import QtQuick 2.0
import QtQuick3D //1.15

Node {
    id: snowMan

    property bool animateArms: false
    Model {
        id: base
        source: "#Sphere"
        y: 0
        scale: Qt.vector3d(0.8, 0.8, 0.8)
        materials: [ DefaultMaterial {diffuseColor: "white"}]
    }
    Model {
        id: body
        source: "#Sphere"
        y: 100*0.64
        scale: Qt.vector3d(0.64, 0.64, 0.64)
        materials: [ DefaultMaterial {diffuseColor: "white"}]
    }
    Model {
        id: head
        source: "#Sphere"
        y: 100*0.64 + 100*.52
        scale: Qt.vector3d(0.52, 0.52, 0.52)
        materials: [ DefaultMaterial {diffuseColor: "white"}]
    }
    Model {
        id: carrot
        source: "#Cone"
        y: head.y
        x: 20
        scale: Qt.vector3d(0.1, 0.3, 0.1)
        materials: [ DefaultMaterial {diffuseColor: "orange"}]
        eulerRotation.z: -90
    }
    Model {
        id: eyeLeft
        source: "#Sphere"
        y: head.y+10
        x: 18
        z: -12
        scale: Qt.vector3d(0.1, 0.1, 0.1)
        materials: [ DefaultMaterial {diffuseColor: "green"}]
    }
    Model {
        id: eyeRight
        source: "#Sphere"
        y: head.y+10
        x: 18
        z: +12
        scale: Qt.vector3d(0.1, 0.1, 0.1)
        materials: [ DefaultMaterial {diffuseColor: "green"}]
    }

    Model {
        id: armRight
        source: "#Cylinder"
        y: body.y
        x: 18
        z: 32
        scale: Qt.vector3d(0.1, 0.4, 0.1)
        materials: [ DefaultMaterial {diffuseColor: "brown"}]
        eulerRotation.x: -60
        eulerRotation.z: 30

        SequentialAnimation on eulerRotation.z {
            loops: Animation.Infinite
            running: animateArms
            NumberAnimation {
                to: 120
                duration: 1500
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                to: 30
                duration: 1500
                easing.type: Easing.InOutQuad
            }
        }
    }

    Model {
        id: armLeft
        source: "#Cylinder"
        y: body.y
        x: 18
        z: -32
        scale: Qt.vector3d(0.1, 0.4, 0.1)
        materials: [ DefaultMaterial {diffuseColor: "brown"}]
        eulerRotation.x: 60
        eulerRotation.y: -30

        SequentialAnimation on eulerRotation.z {
            loops: Animation.Infinite
            running: animateArms
            NumberAnimation {
                to: -120
                duration: 1500
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                to: -30
                duration: 1500
                easing.type: Easing.InOutQuad
            }
        }
    }

}//snowMan
