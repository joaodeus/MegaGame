import QtQuick 2.3
import QtQuick3D 1.15
import Placement 1.0

Node {
    id: nodeCamera
    //id: placement

    signal sigShoot()

    property real cameraYrotation: -90
    property real rotateDelta: 1.2
    property real moveDelta: 15

    property real camAnimationDuration: 1500

    //camera yaw animation
    property bool driftingY: true
    property  real camAnimationInitialY: 0
    property  real camAnimationYRight: 45
    property  real camAnimationYLeft: -45
    //camera roll animation
    property bool driftingX: true
    property  real camAnimationInitialX: 0
    property  real camAnimationXRight: -45
    property  real camAnimationXLeft: 45
    //camera pitch animation
    property bool driftingZ: true
    property  real camAnimationInitialZ: 0
    property  real camAnimationZRight: -45
    property  real camAnimationZLeft: 45

    property real distanceToEye: 500
    property real elevationToEye: 150


    Connections { target: keyb.key_moveFront; enabled: parent.visible; function onIsPressed() { placement.moveFront(moveDelta) } }
    Connections { target: keyb.key_moveBack; enabled: parent.visible; function onIsPressed() { placement.moveBack(moveDelta) } }
    Connections { target: keyb.key_moveLeft; enabled: parent.visible; function onIsPressed() { placement.rotateY(rotateDelta) } }
    Connections { target: keyb.key_moveRight; enabled: parent.visible; function onIsPressed() { placement.rotateY(-rotateDelta) } }


    signal driftYawYRightStart()
    signal driftYawYLeftStart()
    signal driftYawYStop()

    signal driftRollXRightStart()
    signal driftRollXLeftStart()
    signal driftRollXStop()

    signal driftPitchZRightStart()
    signal driftPitchZLeftStart()
    signal driftPitchZStop()

    // --Yaw Y animation---------------------------------------------------------------------------
    onDriftYawYRightStart: {
        camAnimationY.stop(); camAnimationY.to = camAnimationYRight; camAnimationY.start()
    }

    onDriftYawYLeftStart: {
        camAnimationY.stop(); camAnimationY.to = camAnimationYLeft; camAnimationY.start()
    }

    onDriftYawYStop: {
        camAnimationY.stop(); camAnimationY.to = camAnimationInitialY; camAnimationY.start()
    }

    // --Pitch Z-----------------------------------------------------------------------------------
    onDriftPitchZRightStart: {
        camAnimationZ.stop();camAnimationZ.to = camAnimationZRight; camAnimationZ.start()
    }

    onDriftPitchZLeftStart: {
        camAnimationZ.stop();camAnimationZ.to = camAnimationZLeft; camAnimationZ.start()
    }

    onDriftPitchZStop: {
        camAnimationZ.stop();camAnimationZ.to = camAnimationInitialZ; camAnimationZ.start()
    }

    // --Roll X-----------------------------------------------------------------------------------
    onDriftRollXRightStart: {
        camAnimationX.stop();camAnimationX.to = camAnimationXRight; camAnimationX.start()
    }

    onDriftRollXLeftStart: {
        camAnimationX.stop();camAnimationX.to = camAnimationXLeft; camAnimationX.start()
    }

    onDriftRollXStop: {
        camAnimationX.stop();camAnimationX.to = camAnimationInitialX; camAnimationX.start()
    }


    // --Yaw Y animation---------------------------------------------------------------------------
    //start camera animation on right rotation

    //driftYawYRightStart
    Connections { target: keyb.yawRight; enabled: parent.visible && driftingY; function onPressed() { driftYawYRightStart() } }

    //start camera animation on left rotation
    Connections { target: keyb.yawLeft; enabled: parent.visible && driftingY; function onPressed() { driftYawYLeftStart() } }

    //stop right rotation animation
    Connections { target: keyb.yawRight; enabled: parent.visible && driftingY; function onReleased() { driftYawYStop() } }

    //stop left rotation animation
    Connections { target: keyb.yawLeft; enabled: parent.visible && driftingY; function onReleased() { driftYawYStop() } }

    // --Pitch Z----------------------------------------------------

    //start camera animation on pitch Down
    Connections { target: keyb.pitchDown; enabled: parent.visible && driftingZ; function onPressed() { driftPitchZLeftStart() } }

    //start camera animation on pitch Up
    Connections { target: keyb.pitchUp; enabled: parent.visible && driftingZ; function onPressed() { driftPitchZRightStart() } }

    //stop camera animation on pitch Down
    Connections { target: keyb.pitchDown; enabled: parent.visible && driftingZ; function onReleased() { driftPitchZStop() } }

    //stop camera animation on pitch Up
    Connections { target: keyb.pitchUp; enabled: parent.visible && driftingZ; function onReleased() { driftPitchZStop() } }


    // --Roll X----------------------------------------------------

    //start camera animation on roll right
    Connections { target: keyb.rollRight; enabled: parent.visible && driftingX; function onPressed() { driftRollXRightStart() } }

    //start camera animation on roll left
    Connections { target: keyb.rollLeft; enabled: parent.visible && driftingX; function onPressed() { driftRollXLeftStart() } }

    //stop camera animation on roll right
    Connections { target: keyb.rollRight; enabled: parent.visible && driftingX; function onReleased() { driftRollXStop() } }

    //stop camera animation on roll left
    Connections { target: keyb.rollLeft; enabled: parent.visible && driftingX; function onReleased() { driftRollXStop() } }

    //------------------------------------------------------

    Connections { target: keyb.rollRight; enabled: parent.visible; function onIsPressed() { placement.rotateX(rotateDelta) } }
    Connections { target: keyb.rollLeft; enabled: parent.visible; function onIsPressed() { placement.rotateX(-rotateDelta) } }
    Connections { target: keyb.yawLeft; enabled: parent.visible; function onIsPressed() { placement.rotateY(rotateDelta) } }
    Connections { target: keyb.yawRight; enabled: parent.visible; function onIsPressed() { placement.rotateY(-rotateDelta) } }
    Connections { target: keyb.pitchUp; enabled: parent.visible; function onIsPressed() { placement.rotateZ(rotateDelta) } }
    Connections { target: keyb.pitchDown; enabled: parent.visible; function onIsPressed() { placement.rotateZ(-rotateDelta) } }

    Connections { target: keyb.shoot; enabled: parent.visible; function onPressed() { sigShoot() } }





    //Camera default orientation is forward vector pointing along the negative Z axis
    //and its up vector along the positive Y axis.
    position: placement.position
    rotation: placement.direction

    property alias placement: placement
    //property vector3d front: placement.front
    Placement{
        id: placement
    }

    Node {
        id: nodeCameraRotation
        eulerRotation.y: camAnimationInitialY
        PropertyAnimation {id: camAnimationY; duration: camAnimationDuration; target: nodeCameraRotation; property: "eulerRotation.y"; to: camAnimationYRight }
        PropertyAnimation {id: camAnimationX; duration: camAnimationDuration; target: nodeCameraRotation; property: "eulerRotation.x"; to: camAnimationXRight }
        PropertyAnimation {id: camAnimationZ; duration: camAnimationDuration; target: nodeCameraRotation; property: "eulerRotation.z"; to: camAnimationZRight }

        PerspectiveCamera {
            id: cam
            //fieldOfView : 60 //The default value is 60.0
            clipFar: 1e6 //The default value is 10000.0
            clipNear: 1 //The default value is 10.0
            y: elevationToEye
            x: -distanceToEye
            //camera by default is loking at -z, let's change it to +x, to align it with moveFront +x direction
            eulerRotation.y: cameraYrotation// rotate camera -90, to align it with +x axis
        }//PerspectiveCamera
    }//NodeCameraRotation



}//NodeCamera
