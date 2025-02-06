import QtQuick 2.0
import QtQml 2.15
import Placement 1.0

import "../"

Item {

    property real rotateDelta: 0.8
    property real moveDelta: 10

    property alias moveFrontPressed: key_moveFront.keyIsPressed
    property alias moveBackPressed: key_moveBack.keyIsPressed
    property  alias moveRightPressed: yawRight.keyIsPressed
    property  alias moveLeftPressed: yawLeft.keyIsPressed


    focus: true

    property bool bAutoRepeat: false

    Key{id: key_pause; value: Qt.Key_P }
    property alias key_pause: key_pause

     Key{id: key_moveFront; value: Qt.Key_R }
    property alias key_moveFront: key_moveFront

    Key{id: key_moveBack; value: Qt.Key_F }
    property alias key_moveBack: key_moveBack

    Key{id: key_moveRight; value: Qt.Key_D }
    property alias key_moveRight: key_moveRight

    Key{id: key_moveLeft; value: Qt.Key_A }
    property alias key_moveLeft: key_moveLeft
    //----------------------------------

    Key{id: key_A; value: Qt.Key_A }
    property alias key_A: key_A

    Key{id: key_D; value: Qt.Key_D }
    property alias key_D: key_D

    Key{id: key_W; value: Qt.Key_W }
    property alias key_W: key_W

    Key{id: key_S; value: Qt.Key_S }
    property alias key_S: key_S

    Key{id: key_moveUp; value: Qt.Key_W }
    property alias key_moveUp: key_moveUp

    Key{id: key_moveDown; value: Qt.Key_S }
    property alias key_moveDown: key_moveDown

    //------------------
    Key{id: rollRight; value: Qt.Key_E }
    property alias rollRight: rollRight

    Key{id: rollLeft; value: Qt.Key_Q }
    property alias rollLeft: rollLeft

    Key{id: pitchDown; value: Qt.Key_Up }
    property alias pitchDown: pitchDown

    Key{id: pitchUp; value: Qt.Key_Down }
    property alias pitchUp: pitchUp

    Key{id: yawRight; value: Qt.Key_Right }
    property alias yawRight: yawRight

    Key{id: yawLeft; value: Qt.Key_Left }
    property alias yawLeft: yawLeft
    //------------------------------

    Key{id: shoot; value: Qt.Key_Space }
    property alias shoot: shoot

    signal keyPressed(var keyPressed_)

    Keys.onPressed: function(event) {

        console.log("CommanKeyboard2: value is "+ event.key)

        if (event.isAutoRepeat && !bAutoRepeat)
            return;

        keyPressed(event.key)

        if (event.key === Qt.Key_X) {
            levelStates.menuOptions.showStatistics = !levelStates.menuOptions.showStatistics
            event.accepted = true;
            return;
        }


        if (key_pause.keysPressed(event.key)) {event.accepted = true; return;}

        if (key_moveFront.keysPressed(event.key)) {event.accepted = true; return;}
        if (key_moveBack.keysPressed(event.key)) {event.accepted = true; return;}
        if (key_moveRight.keysPressed(event.key)) {event.accepted = true; return;}
        if (key_moveLeft.keysPressed(event.key)) {event.accepted = true; return;}

        if (key_moveUp.keysPressed(event.key)) {event.accepted = true; return;}
        if (key_moveDown.keysPressed(event.key)) {event.accepted = true; return;}
        if (key_A.keysPressed(event.key)) {event.accepted = true; return;}
        if (key_D.keysPressed(event.key)) {event.accepted = true; return;}
        if (key_W.keysPressed(event.key)) {event.accepted = true; return;}
        if (key_S.keysPressed(event.key)) {event.accepted = true; return;}

        if (rollRight.keysPressed(event.key)) {event.accepted = true; return;}
        if (rollLeft.keysPressed(event.key)) {event.accepted = true; return;}

        if (pitchDown.keysPressed(event.key)) {event.accepted = true; return;}
        if (pitchUp.keysPressed(event.key)) {event.accepted = true; return;}

        if (yawRight.keysPressed(event.key)) {event.accepted = true; return;}
        if (yawLeft.keysPressed(event.key)) {event.accepted = true; return;}

        if (shoot.keysPressed(event.key)) {event.accepted = true; return;}

    }

    Keys.onReleased: function(event) {

        if (event.isAutoRepeat && !bAutoRepeat)
            return;

        if (key_pause.keysReleased(event.key)) {event.accepted = true; return;}

        if (key_moveFront.keysReleased(event.key)) {event.accepted = true; return;}
        if (key_moveBack.keysReleased(event.key)) {event.accepted = true; return;}
        if (key_moveRight.keysReleased(event.key)) {event.accepted = true; return;}
        if (key_moveLeft.keysReleased(event.key)) {event.accepted = true; return;}

        if (key_moveUp.keysReleased(event.key)) {event.accepted = true; return;}
        if (key_moveDown.keysReleased(event.key)) {event.accepted = true; return;}
        if (key_A.keysReleased(event.key)) {event.accepted = true; return;}
        if (key_D.keysReleased(event.key)) {event.accepted = true; return;}
        if (key_W.keysReleased(event.key)) {event.accepted = true; return;}
        if (key_S.keysReleased(event.key)) {event.accepted = true; return;}

        if (rollRight.keysReleased(event.key)) {event.accepted = true; return;}
        if (rollLeft.keysReleased(event.key)) {event.accepted = true; return;}

        if (pitchDown.keysReleased(event.key)) {event.accepted = true; return;}
        if (pitchUp.keysReleased(event.key)) {event.accepted = true; return;}

        if (yawRight.keysReleased(event.key)) {event.accepted = true; return;}
        if (yawLeft.keysReleased(event.key)) {event.accepted = true; return;}

        if (shoot.keysReleased(event.key)) {event.accepted = true; return;}

    }

    //-----------------------------------------------------

    property Placement controlledEntity: undefined


    signal sigShoot()
    signal startStop()

    //used for effects like spaceship inclination when turning right or left
    signal startYawRight()
    signal stopYaw()
    signal startYawLeft()
    //signal stopYawLeft()

    Connections { target: key_moveFront; enabled: parent.visible; function onIsPressed() { controlledEntity.moveFront(moveDelta) } }
    Connections { target: key_moveBack; enabled: parent.visible; function onIsPressed() { controlledEntity.moveBack(moveDelta) } }
    Connections { target: key_moveLeft; enabled: parent.visible; function onIsPressed() { controlledEntity.moveLeft(moveDelta) } }
    Connections { target: key_moveRight; enabled: parent.visible; function onIsPressed() { controlledEntity.moveRight(moveDelta) } }
    Connections { target: key_moveUp; enabled: parent.visible; function onIsPressed() { controlledEntity.moveUp(moveDelta) } }
    Connections { target: key_moveDown; enabled: parent.visible; function onIsPressed() { controlledEntity.moveUp(-moveDelta) } }

    //------------------------------------------------------

    Connections { target: rollRight; enabled: parent.visible; function onIsPressed() { controlledEntity.rotateX(rotateDelta) } }
    Connections { target: rollLeft; enabled: parent.visible; function onIsPressed() { controlledEntity.rotateX(-rotateDelta) } }
    Connections { target: yawLeft; enabled: parent.visible; function onIsPressed() { controlledEntity.rotateY(rotateDelta) } }
    Connections { target: yawRight; enabled: parent.visible; function onIsPressed() { controlledEntity.rotateY(-rotateDelta) } }
    Connections { target: pitchUp; enabled: parent.visible; function onIsPressed() { controlledEntity.rotateZ(-rotateDelta) } }
    Connections { target: pitchDown; enabled: parent.visible; function onIsPressed() { controlledEntity.rotateZ(rotateDelta) } }

    Connections { target: shoot; enabled: parent.visible; function onPressed() { sigShoot() } }

    Connections { target: key_pause; enabled: parent.visible; function onPressed() { startStop() } }

    //used for effects like spaceship inclination when turning right or left
    Connections { target: yawRight; enabled: parent.visible; function onPressed() { startYawRight() } }
    Connections { target: yawRight; enabled: parent.visible; function onReleased() { stopYaw() } }
    Connections { target: yawLeft; enabled: parent.visible; function onPressed() { startYawLeft() } }
    Connections { target: yawLeft; enabled: parent.visible; function onReleased() { stopYaw() } }


    //-----------------------------------------------------------------------------------------

    // camera animations

    property CameraNode camera: undefined


    // --Yaw Y animation---------------------------------------------------------------------------
    //start camera animation on right rotation

    //driftYawYRightStart
    Connections { target: yawRight; enabled: parent.visible && camera.driftingY; function onPressed() { driftYawYRightStart() } }

    //start camera animation on left rotation
    Connections { target: yawLeft; enabled: parent.visible && camera.driftingY; function onPressed() { driftYawYLeftStart() } }

    //stop right rotation animation
    Connections { target: yawRight; enabled: parent.visible && camera.driftingY; function onReleased() { driftYawYStop() } }

    //stop left rotation animation
    Connections { target: yawLeft; enabled: parent.visible && camera.driftingY; function onReleased() { driftYawYStop() } }

    // --Pitch Z animation----------------------------------------------------

    //start camera animation on pitch Down
    Connections { target: pitchUp; enabled: parent.visible && camera.driftingZ; function onPressed() { driftPitchZLeftStart() } }

    //start camera animation on pitch Up
    Connections { target: pitchDown; enabled: parent.visible && camera.driftingZ; function onPressed() { driftPitchZRightStart() } }

    //stop camera animation on pitch Down
    Connections { target: pitchUp; enabled: parent.visible && camera.driftingZ; function onReleased() { driftPitchZStop() } }

    //stop camera animation on pitch Up
    Connections { target: pitchDown; enabled: parent.visible && camera.driftingZ; function onReleased() { driftPitchZStop() } }

    // --Roll X animation----------------------------------------------------

    //start camera animation on roll right
    Connections { target: rollRight; enabled: parent.visible && camera.driftingX; function onPressed() { driftRollXRightStart() } }

    //start camera animation on roll left
    Connections { target: rollLeft; enabled: parent.visible && camera.driftingX; function onPressed() { driftRollXLeftStart() } }

    //stop camera animation on roll right
    Connections { target: rollRight; enabled: parent.visible && camera.driftingX; function onReleased() { driftRollXStop() } }

    //stop camera animation on roll left
    Connections { target: rollLeft; enabled: parent.visible && camera.driftingX; function onReleased() { driftRollXStop() } }

    //--move Y up down animation----------------------------------------------------
    Connections { target: key_moveUp; enabled: parent.visible; function onPressed() { driftMoveUpYStart() } }
    Connections { target: key_moveDown; enabled: parent.visible; function onPressed() { driftMoveDownYStart() } }
    Connections { target: key_moveUp; enabled: parent.visible; function onReleased() { driftMoveYStop() } }
    Connections { target: key_moveDown; enabled: parent.visible; function onReleased() { driftMoveYStop() } }

    //--move z left right animation-------------------------------------------------
    Connections { target: key_moveLeft; enabled: parent.visible; function onPressed() { driftMoveLeftZStart() } }
    Connections { target: key_moveRight; enabled: parent.visible; function onPressed() { driftMoveRightZStart() } }
    Connections { target: key_moveRight; enabled: parent.visible; function onReleased() { driftMoveZStop() } }
    Connections { target: key_moveLeft; enabled: parent.visible; function onReleased() { driftMoveZStop() } }

    //--move x front back animation-------------------------------------------------
    Connections { target: key_moveFront; enabled: parent.visible; function onPressed() { driftMoveFrontXStart() } }
    Connections { target: key_moveBack; enabled: parent.visible; function onPressed() { driftMoveBackXStart() } }
    Connections { target: key_moveFront; enabled: parent.visible; function onReleased() { driftMoveXStop() } }
    Connections { target: key_moveBack; enabled: parent.visible; function onReleased() { driftMoveXStop() } }


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
