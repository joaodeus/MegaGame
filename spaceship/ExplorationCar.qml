import QtQuick
import QtQuick3D

Node {

    signal startYawRight()
    signal stopYaw()
    signal startYawLeft()

    onStartYawRight: { wheelsAnimation.stop(); wheelsRotateAngle = -30; wheelsAnimation.start() }
    onStopYaw: { wheelsAnimation.stop(); wheelsRotateAngle = 0; wheelsAnimation.start() }
    onStartYawLeft: { wheelsAnimation.stop(); wheelsRotateAngle = 30; wheelsAnimation.start() }

    NumberAnimation {
        id: wheelsAnimation
        targets: [tireRightFront, tireLeftFront]
        properties: "eulerRotation.y"
        duration: 600
        to: wheelsRotateAngle
        easing.type: Easing.OutQuad
        //onStarted: console.log("star rotating the wheels..........................................")
    }

    // Materials
    DefaultMaterial {
        id: colorTires
        diffuseColor: "grey"
    }
    DefaultMaterial {
        id: colorBody
        diffuseColor: "red"
    }
    DefaultMaterial {
        id: colorGlass
        diffuseColor: "lightblue"
    }
    DefaultMaterial {
        id: colorPlate
        diffuseColor: "blue"
    }
    // end of Materials




    Model {
        id: body
        source: "#Sphere"
        scale: Qt.vector3d(3, 1, 1.35)
        y: 35
        //castsShadows: true
        //receivesShadows: true
        materials: colorBody
        //visible: false
    }

    Model {
        id: cockpit
        source: "#Sphere"
        opacity: 0.7
        y: body.y+50
        x: -30
        scale: Qt.vector3d(1.1, 0.6, 0.6)
        //castsShadows: true
        //receivesShadows: true
        materials: colorGlass
    }

    Model {
        id: backPlate
        source: "#Cube"
        y: body.y+30
        x: -145
        //eulerRotation.z: -15
        scale: Qt.vector3d(0.35, 0.05, 1.7)
        materials: colorPlate

    }

    property real wheelsRotateAngle: 0
    Model {
        id: tireRightFront
        source: "#Cylinder"
        y: 35
        z: 70 //dist to right
        x: 40 //dist to front
        eulerRotation.x: 90
        eulerRotation.y: 0//positive value=> turn left; negative value=> turn right
        scale: Qt.vector3d(0.6, 0.2, 0.6)
        //castsShadows: true
        //receivesShadows: true
        materials: colorTires
    }

    Model {
        id: tireLeftFront
        source: "#Cylinder"
        y: tireRightFront.y
        z: -tireRightFront.z //left
        x: tireRightFront.x
        eulerRotation.x: 90
        eulerRotation.y: 0//positive value=> turn left; negative value=> turn right
        scale: Qt.vector3d(0.6, 0.2, 0.6)
        castsShadows: true
        receivesShadows: true
        materials: colorTires
    }


    Model {
        id: tireRightBack
        source: "#Cylinder"
        y: 35
        z: 70 //dist to right
        x: -80
        eulerRotation.x: 90
        scale: Qt.vector3d(0.8, 0.2, 0.8)
        materials: colorTires
    }

    Model {
        id: tireLeftBack
        source: "#Cylinder"
        y: 35
        z: -tireRightBack.z //left
        x: -80
        eulerRotation.x: 90
        scale: Qt.vector3d(0.8, 0.2, 0.8)
        materials: colorTires
    }

/*
    Node {
        id: car_obj
        Node {
            id: sphere8
        }
        Model {
            id: sphere8_default
            source: "meshes/sphere8_default.mesh"
            opacity: 0.7
            materials: [
                colorGlass
            ]
        }
        Node {
            id: cylinder4_copy7
        }
        Model {
            id: cylinder4_copy7_default
            source: "meshes/cylinder4_copy7_default.mesh"
            materials: [
                colorTires
            ]
        }
        Node {
            id: cylinder4_copy6
        }
        Model {
            id: cylinder4_copy6_default
            source: "meshes/cylinder4_copy6_default.mesh"
            materials: [
                colorTires
            ]
        }
        Node {
            id: cylinder4_copy5
        }
        Model {
            id: cylinder4_copy5_default
            source: "meshes/cylinder4_copy5_default.mesh"
            materials: [
                colorTires
            ]
        }
        Node {
            id: cylinder4
        }
        Model {
            id: cylinder4_default
            source: "meshes/cylinder4_default.mesh"
            materials: [
                colorTires
            ]
        }
        Node {
            id: sphere1
        }
        Model {
            id: sphere1_default
            source: "meshes/sphere1_default.mesh"
            materials: [
                colorBody
            ]
        }
    }*/


}
