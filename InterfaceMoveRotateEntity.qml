import QtQuick //2.0

import Placement 1.0


Item {
/*
    property bool moveFront: false
    signal startMoveFront()
    signal stopMoveFront()
    onStartMoveFront: moveFront = true
    onStopMoveFront: moveFront = false

    property bool moveBack: false
    signal startMoveBack()
    signal stopMoveBack()
    onStartMoveBack: moveBack = true
    onStopMoveBack: moveBack = false

    property bool moveLeft: false
    signal startMoveLeft()
    signal stopMoveLeft()
    onStartMoveLeft: moveLeft = true
    onStopMoveLeft: moveLeft = false

    property bool moveRight: false
    signal startMoveRight()
    signal stopMoveRight()
    onStartMoveRight: moveRight = true
    onStopMoveRight: moveRight = false

    signal startMoveUp()
    signal stopMoveUp()

    signal startMoveDown()
    signal stopMoveDown()

    property bool yawRight: false
    signal startYawRight()
    signal stopYawRight()
    onStartYawRight: yawRight = true
    onStopYawRight: yawRight = false

    property bool yawLeft: false
    signal startYawLeft()
    signal stopYawLeft()
    onStartYawLeft: yawLeft = true
    onStopYawLeft: yawLeft = false

    signal startPitchUp()
    signal stopPitchUp()
    signal startPitchDown()
    signal stopPitchDown()

    signal startRollRight()
    signal stopRollRight()
    signal startRollLeft()
    signal stopRollLeft()


   // onStartStop: isFlying = !isFlying
    FrameAnimation {
        id: timerMove
        running: moveFront || moveBack
        //interval: fps_ms
        //repeat: true
        onTriggered: {
            //console.log("spaceship move:"+position)
            shipPlacement.moveFront(velocity)
        }
    }//Timer


    FrameAnimation {
        id: timerRotation
        running: yawRight || yawLeft //|| pitchUp || pitchDown || rollRight || rollLeft
        //interval: fps_ms
        //repeat: true
        onTriggered: {

            if ( yawRight ) entityPlacement.rotateY(-rotateDelta)
            if ( yawLeft ) entityPlacement.rotateY(rotateDelta)
            if ( pitchUp ) entityPlacement.rotateZ(-rotateDelta)
            if ( pitchDown ) entityPlacement.rotateZ(rotateDelta)
            if ( rollRight ) entityPlacement.rotateX(rotateDelta)
            if ( rollLeft ) entityPlacement.rotateX(-rotateDelta)

        }
    }//Timer



    property alias shipPlacement: entityPlacement
    Placement{
        id: entityPlacement
    }

*/

}
