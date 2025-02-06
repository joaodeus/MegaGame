import QtQuick 2.3
import QtQml 2.15
import Placement 1.0
import "../"

Item {
    id: root
    //id: placement

    signal sigShoot()
    signal startStop()

    property real cameraYrotation: -90
    property real rotateDelta: 0.5
    property real moveDelta: 5

    //property real camAnimationDuration: 400

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


    property CommandKeyboard2 keyb: undefined
    property CameraNode camera: undefined
    property Placement placement: undefined


    Connections { target: keyb.key_moveFront; enabled: parent.visible; function onIsPressed() { placement.moveFront(moveDelta) } }
    Connections { target: keyb.key_moveBack; enabled: parent.visible; function onIsPressed() { placement.moveBack(moveDelta) } }
    Connections { target: keyb.key_moveLeft; enabled: parent.visible; function onIsPressed() { placement.moveLeft(moveDelta) } }
    Connections { target: keyb.key_moveRight; enabled: parent.visible; function onIsPressed() { placement.moveRight(moveDelta) } }

    Connections { target: keyb.key_moveUp; enabled: parent.visible; function onIsPressed() { placement.moveUp(moveDelta) } }
    Connections { target: keyb.key_moveDown; enabled: parent.visible; function onIsPressed() { placement.moveUp(-moveDelta) } }


    //------------------------------------------------------

    Connections { target: keyb.rollRight; enabled: parent.visible; function onIsPressed() { placement.rotateX(rotateDelta) } }
    Connections { target: keyb.rollLeft; enabled: parent.visible; function onIsPressed() { placement.rotateX(-rotateDelta) } }
    Connections { target: keyb.yawLeft; enabled: parent.visible; function onIsPressed() { placement.rotateY(rotateDelta) } }
    Connections { target: keyb.yawRight; enabled: parent.visible; function onIsPressed() { placement.rotateY(-rotateDelta) } }
    Connections { target: keyb.pitchUp; enabled: parent.visible; function onIsPressed() { placement.rotateZ(-rotateDelta) } }
    Connections { target: keyb.pitchDown; enabled: parent.visible; function onIsPressed() { placement.rotateZ(rotateDelta) } }

    Connections { target: keyb.shoot; enabled: parent.visible; function onPressed() { sigShoot() } }

    Connections { target: keyb.key_pause; enabled: parent.visible; function onPressed() { startStop() } }



    // camera animations

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

    // --Pitch Z animation----------------------------------------------------

    //start camera animation on pitch Down
    Connections { target: keyb.pitchUp; enabled: parent.visible && driftingZ; function onPressed() { driftPitchZLeftStart() } }

    //start camera animation on pitch Up
    Connections { target: keyb.pitchDown; enabled: parent.visible && driftingZ; function onPressed() { driftPitchZRightStart() } }

    //stop camera animation on pitch Down
    Connections { target: keyb.pitchUp; enabled: parent.visible && driftingZ; function onReleased() { driftPitchZStop() } }

    //stop camera animation on pitch Up
    Connections { target: keyb.pitchDown; enabled: parent.visible && driftingZ; function onReleased() { driftPitchZStop() } }

    // --Roll X animation----------------------------------------------------

    //start camera animation on roll right
    Connections { target: keyb.rollRight; enabled: parent.visible && driftingX; function onPressed() { driftRollXRightStart() } }

    //start camera animation on roll left
    Connections { target: keyb.rollLeft; enabled: parent.visible && driftingX; function onPressed() { driftRollXLeftStart() } }

    //stop camera animation on roll right
    Connections { target: keyb.rollRight; enabled: parent.visible && driftingX; function onReleased() { driftRollXStop() } }

    //stop camera animation on roll left
    Connections { target: keyb.rollLeft; enabled: parent.visible && driftingX; function onReleased() { driftRollXStop() } }

    //--move Y up down animation----------------------------------------------------
    Connections { target: keyb.key_moveUp; enabled: parent.visible; function onPressed() { driftMoveUpYStart() } }
    Connections { target: keyb.key_moveDown; enabled: parent.visible; function onPressed() { driftMoveDownYStart() } }
    Connections { target: keyb.key_moveUp; enabled: parent.visible; function onReleased() { driftMoveYStop() } }
    Connections { target: keyb.key_moveDown; enabled: parent.visible; function onReleased() { driftMoveYStop() } }

    //--move z left right animation-------------------------------------------------
    Connections { target: keyb.key_moveLeft; enabled: parent.visible; function onPressed() { driftMoveLeftZStart() } }
    Connections { target: keyb.key_moveRight; enabled: parent.visible; function onPressed() { driftMoveRightZStart() } }
    Connections { target: keyb.key_moveRight; enabled: parent.visible; function onReleased() { driftMoveZStop() } }
    Connections { target: keyb.key_moveLeft; enabled: parent.visible; function onReleased() { driftMoveZStop() } }

    //--move x front back animation-------------------------------------------------
    Connections { target: keyb.key_moveFront; enabled: parent.visible; function onPressed() { driftMoveFrontXStart() } }
    Connections { target: keyb.key_moveBack; enabled: parent.visible; function onPressed() { driftMoveBackXStart() } }
    Connections { target: keyb.key_moveFront; enabled: parent.visible; function onReleased() { driftMoveXStop() } }
    Connections { target: keyb.key_moveBack; enabled: parent.visible; function onReleased() { driftMoveXStop() } }


    signal driftYawYRightStart()
    signal driftYawYLeftStart()
    signal driftYawYStop()

    signal driftRollXRightStart()
    signal driftRollXLeftStart()
    signal driftRollXStop()

    signal driftPitchZRightStart()
    signal driftPitchZLeftStart()
    signal driftPitchZStop()

    signal driftMoveUpYStart()
    signal driftMoveDownYStart()
    signal driftMoveYStop()

    signal driftMoveRightZStart()
    signal driftMoveLeftZStart()
    signal driftMoveZStop()

    signal driftMoveFrontXStart()
    signal driftMoveBackXStart()
    signal driftMoveXStop()

    onDriftPitchZLeftStart: camera.driftPitchZLeftStart()
    onDriftPitchZRightStart: camera.driftPitchZRightStart()
    onDriftPitchZStop: camera.driftPitchZStop()
    onDriftRollXLeftStart: camera.driftRollXLeftStart()
    onDriftRollXRightStart: camera.driftRollXRightStart()
    onDriftRollXStop: camera.driftRollXStop()
    onDriftYawYLeftStart: camera.driftYawYLeftStart()
    onDriftYawYRightStart: camera.driftYawYRightStart()
    onDriftYawYStop: camera.driftYawYStop()


    onDriftMoveUpYStart: camera.driftMoveUpYStart()
    onDriftMoveDownYStart: camera.driftMoveDownYStart()
    onDriftMoveYStop: camera.driftMoveYStop()

    onDriftMoveRightZStart: camera.driftMoveRightZStart()
    onDriftMoveLeftZStart: camera.driftMoveLeftZStart()
    onDriftMoveZStop: camera.driftMoveZStop()

    onDriftMoveFrontXStart: camera.driftMoveFrontXStart()
    onDriftMoveBackXStart: camera.driftMoveBackXStart()
    onDriftMoveXStop: camera.driftMoveXStop()



}
