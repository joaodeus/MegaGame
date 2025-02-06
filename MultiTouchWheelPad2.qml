import QtQuick //2.3
import QtQml 2.15
import Placement 1.0
import "./elements"

Item {
    id: root
    width: mainRoot.width
    height: mainRoot.height

    //property real velocity: 16
    //signal move(real cx, real cy)// not used anymore, it was used for moving the spaceship with the touchpad

    property CameraNode camera//: undefined
    property Placement controlledEntity//: undefined

    property real touchPadCenterX: touchPad.x + touchPad.width/2
    property real touchPadCenterY: touchPad.y + touchPad.height/2
    property bool showCommand: false
    property bool bPoint1IsPressed: false
    property bool bPoint2IsPressed: false

    //pressedX2 and pressedY2 save the point2 press position
    //if the point2 release point is near enought it fires point2Clicked()
    //mobile phone accuracy isnt that good, so we allow press and release distance to be a bit diferent to fire point2Clicked()
    property real pressedX2
    property real pressedY2

    //between the press and realese, check if the distance has gone above delta "radiusLower"
    property bool checkIsClickP1
    property bool checkIsClickP2

    property real radiusLower: touchPad.width*0.25//only above this value the touch press will make action
    property alias touchPad: touchPad

    //property string wheelPadPosition: "none"

    //Dont merge WheelPad in MultiTouchWheelPad
    //We will need to decouple WheelPad outside MultiTouchWheelPad
    //for cases where there are MouseAreas and images in Windows, and
    //MultiTouchWheelPad needs to be z order lower than thoose images and MouseAreas
    //and WheelPad needs to be z order above thoose images
    WheelPad {
        id: touchPad
        width: 20*mm //22*mm
        height: width
        anchors.margins: defaultMargins * 4
        visible: showCommand
        transformOrigin: Item.Center
    }

    /*Image  {
        id: touchPad
        width: 20*mm //22*mm
        height: width
        property real centerX
        property real centerY
        x: centerX-width*0.5
        y: centerY-height*0.5
        property bool arrowVisible: false
        //source: arrowVisible ? "qrc:/images/wheelArrowBlack.png" : "qrc:/images/wheelCommand.png"
        source: arrowVisible ? "qrc:/images/wheelArrowBlue.png" : "qrc:/images/wheelCommandBlue.png"
        mipmap: true
        visible: showCommand
        transformOrigin: Item.Center
    }*/

    MultiPointTouchArea {
        anchors.fill: parent
        //mouseEnabled: false
        touchPoints: [
            TouchPoint {
                id: point1
                onPressedChanged: {
                    if (pressed) { //pressed
                        //touch1Pressed(x, y)
                        touchPad.centerX = x
                        touchPad.centerY = y
                        showCommand = false//only show command when we move, in xChanged() / yChanged()
                        //fireOnReleaseP1 = true
                        checkIsClickP1 = true
                        point1Pressed(x, y)
                        bPoint1IsPressed = true
                        //console.log("pressed XY: " +x +" : " + y)
                    }
                    else { //released
                        bPoint1IsPressed = false
                        showCommand = false
                        point1Released(x, y)

                        if (lib.distance2Dnear(touchPad.centerX, touchPad.centerY, x, y, radiusLower) && checkIsClickP1){
                            //shotFiredXY(x, y)
                            point1Clicked(x, y)
                        }
                        //console.log("released XY: " +x +" : " + y)
                    }
                }
                onXChanged: {
                    showCommand = true
                    if (checkIsClickP1)
                        if (!lib.distance2Dnear(touchPad.centerX, touchPad.centerY, x, y, radiusLower))
                            checkIsClickP1 = false


                    //fireOnReleaseP1 = false
                    //console.log("showCommand: "+showCommand)
                    //console.log("point x1 changed:"+x)
                }
                onYChanged: {
                    showCommand = true
                    if (checkIsClickP1)
                        if (!lib.distance2Dnear(touchPad.centerX, touchPad.centerY, x, y, radiusLower))
                            checkIsClickP1 = false
                    //fireOnReleaseP1 = false
                    //console.log("showCommand: "+showCommand)
                }
            },
            TouchPoint {
                id: point2
                onPressedChanged: {
                    if (pressed) { //pressed
                        pressedX2 = x
                        pressedY2 = y
                        //point2Clicked(x, y)
                        //startFlying()
                        point2Pressed(x, y)
                        bPoint2IsPressed = true
                        checkIsClickP2 = true
                    }
                    else { //released
                        bPoint2IsPressed = false
                        point2Released(x, y)
                        if (lib.distance2Dnear(pressedX2, pressedY2, x, y, radiusLower) && checkIsClickP2){
                            point2Clicked(x, y)
                            //shotFiredXY(x, y)
                            point1Clicked(x, y)
                        }
                    }//released
                }//onPressedChanged

                onXChanged: {
                    if (checkIsClickP2)
                        if (!lib.distance2Dnear(pressedX2, pressedY2, x, y, radiusLower))
                            checkIsClickP2 = false
                }
                onYChanged: {
                    if (checkIsClickP2)
                        if (!lib.distance2Dnear(pressedX2, pressedY2, x, y, radiusLower))
                            checkIsClickP2 = false
                }
            }//TouchPoint
        ]//touchPoints
    }//MultiPointTouchArea


    //Testing: using FrameAnimation may cause bug
    TimerFrameAnimation{
      //  id: timerMultiTouchPad
        //interval: fps_ms
        //repeat: true
        running: showCommand
        onTriggered: {
            //console.log("timerMultiTouchPad _move()..........................")
            _move()
        }
    }

    function _move() {

        var dx = (point1.x-touchPadCenterX)
        var dy = (-(point1.y-touchPadCenterY))
        //console.log("_move ------------------------------------- ")
        //console.log("dy: "+dy)
        //console.log("Point1IsPressed _move: "+ point1.x + " : "+point1.y)

        if (bPoint1IsPressed)
            point1IsPressed(point1.x, point1.y)

        if (bPoint2IsPressed)
            point2IsPressed(point2.x, point2.y)

        var radius = Math.sqrt(dx*dx+dy*dy)
        if (radius < radiusLower) {
            touchPad.arrowVisible = false
            wheelRotationPosition = "center"
            stopCameraDriftMove()
            return;
        }

        var angle = Math.atan2(dy, dx) * 180 / Math.PI;
        //var angleABS = Math.abs(angle);


        // if touch is made on the right side of the screen show touchPad Rotation - rotates ships
        // if touch is made on the left side of the screen show touchPad Movement - moves ship
        if (touchPad.centerX >= mainRoot.width*0.5) {
            modeRotation(angle)
        }
        else {
            touchPad.mirrorImage = false
            touchPad.imagePressed = "qrc:/images/wheelArrowBlue.png"
            modeMovement(angle)
        }

    }//function _move()

    // --- signals to move the controlled entity (spaceship or other)
    // --- and to drift the camera
    signal moveUp()
    signal wheelMoveChangeToUp()
    signal moveDown()
    signal wheelMoveChangeToDown()
    signal moveLeft()
    signal wheelMoveChangeToLeft()
    signal moveRight()
    signal wheelMoveChangeToRight()
    //-------------------------------
    signal moveUpRight()
    signal wheelChangeToMoveUpRight()
    signal moveUpLeft()
    signal wheelChangeToMoveUpLeft()
    signal moveDownRight()
    signal wheelChangeToMoveDownRight()
    signal moveDownLeft()
    signal wheelChangeToMoveDownLeft()
    signal wheelMoveChangeToCenter()


    //move the ship up, down , left, right, UpRight, UpLeft, DownRight, DownLeft
    onMoveUp: controlledEntity.moveUp(moveDelta)
    onMoveDown: controlledEntity.moveDown(moveDelta)
    onMoveRight: controlledEntity.moveRight(moveDelta)
    onMoveLeft: controlledEntity.moveLeft(moveDelta)
    onMoveUpRight: {
        controlledEntity.moveUp(moveDelta);
        controlledEntity.moveRight(moveDelta)
    }
    onMoveUpLeft: {
        controlledEntity.moveUp(moveDelta)
        controlledEntity.moveLeft(moveDelta)
    }
    onMoveDownRight: {
        controlledEntity.moveDown(moveDelta)
        controlledEntity.moveRight(moveDelta)
    }
    onMoveDownLeft: {
        controlledEntity.moveDown(moveDelta)
        controlledEntity.moveLeft(moveDelta)
    }

    //drift the camera
    onWheelMoveChangeToUp: { camera.driftMoveUpYStart() }
    onWheelMoveChangeToDown: { camera.driftMoveDownYStart() }
    onWheelMoveChangeToLeft: { camera.driftMoveLeftZStart() }
    onWheelMoveChangeToRight: { camera.driftMoveRightZStart() }
    onWheelChangeToMoveUpRight: { camera.driftMoveUpYStart(); camera.driftMoveRightZStart() }
    onWheelChangeToMoveUpLeft: { camera.driftMoveUpYStart(); camera.driftMoveLeftZStart() }
    onWheelChangeToMoveDownRight: { camera.driftMoveDownYStart(); camera.driftMoveRightZStart() }
    onWheelChangeToMoveDownLeft: { camera.driftMoveDownYStart(); camera.driftMoveLeftZStart() }
    onWheelMoveChangeToCenter: { stopCameraDriftMove() }


    // --- signals to rotate / pitch / yaw / row the controlled entity (spaceship or other)
    signal rotateUp()
    signal wheelRotationChangeToUp()
    signal rotateDown()
    signal wheelRotationChangeToDown()
    signal rotateLeft()
    signal wheelRotationChangeToLeft()
    signal rotateRight()
    signal wheelRotationChangeToRight()
    signal rotateUpRight()
    signal wheelRotationChangeToUpRight()
    signal rotateUpLeft()
    signal wheelRotationChangeToUpLeft()
    signal rotateDownRight()
    signal wheelRotationChangeToDownRight()
    signal rotateDownLeft()
    signal wheelRotationChangeToDownLeft()
    signal wheelRotationChangeToCenter()


    //property string wheelPadPositionRotation: "none"
    property string wheelPadPositionMovement: "none"
    property string wheelRotationPosition: "none"

    onWheelRotationChangeToUp: {
        stopSpaceShipDriftingRotation();
        camera.driftPitchZRightStart() }
    onWheelRotationChangeToDown: {
        stopSpaceShipDriftingRotation();
        camera.driftPitchZLeftStart() }
    onWheelRotationChangeToRight: {
        stopSpaceShipDriftingRotation();
        camera.driftYawYRightStart(); startYawRight() }
    onWheelRotationChangeToLeft: {
        stopSpaceShipDriftingRotation();
        camera.driftYawYLeftStart(); startYawLeft() }

    onWheelRotationChangeToUpRight: {
        stopSpaceShipDriftingRotation()
        camera.driftYawYRightStart()//rotate right
        camera.driftPitchZRightStart()//rotate up
    }

    onWheelRotationChangeToUpLeft: {
        stopSpaceShipDriftingRotation()
        camera.driftYawYLeftStart()//rotate left
        camera.driftPitchZRightStart()//rotate up
    }

    onWheelRotationChangeToDownRight: {
        stopSpaceShipDriftingRotation()
        camera.driftRollXRightStart()
    }

    onWheelRotationChangeToDownLeft: {
        stopSpaceShipDriftingRotation()
        camera.driftRollXLeftStart()
    }

    /*Connections { target: yawRight; enabled: parent.visible; function onPressed() { startYawRight() } }
    Connections { target: yawRight; enabled: parent.visible; function onReleased() { stopYawRight() } }
    Connections { target: yawLeft; enabled: parent.visible; function onPressed() { startYawLeft() } }
    Connections { target: yawLeft; enabled: parent.visible; function onReleased() { stopYawLeft() } }*/

    onRotateRight: controlledEntity.rotateY(-rotateDelta)
    onRotateLeft: controlledEntity.rotateY(rotateDelta)
    onRotateUp: controlledEntity.rotateZ(rotateDelta)
    onRotateDown: controlledEntity.rotateZ(-rotateDelta)

    onRotateUpRight: {controlledEntity.rotateZ(rotateDelta); controlledEntity.rotateY(-rotateDelta)}
    onRotateUpLeft: {controlledEntity.rotateZ(rotateDelta); controlledEntity.rotateY(rotateDelta)}
    onRotateDownRight: {controlledEntity.rotateX(rotateDelta)}
    onRotateDownLeft: {controlledEntity.rotateX(-rotateDelta)}

    onWheelRotationChangeToCenter: stopSpaceShipDriftingRotation()


    //---------------------------------

    signal point1Clicked(real cx, real cy)
    signal point1Pressed(real cx, real cy)
    signal point1Released(real cx, real cy)
    signal point1IsPressed(real cx, real cy)

    signal point2Clicked(real cx, real cy)
    signal point2Pressed(real cx, real cy)
    signal point2Released(real cx, real cy)
    signal point2IsPressed(real cx, real cy)

    //onPoint1Released: wheelPadPosition = "none"
    onPoint1Released: {
        stopSpaceShipDriftingRotation()
        stopCameraDriftMove()
    }

    //mode1 divides the TouchPad2 in 4 slices
    //Up, Down, Left, Right
    /*function mode1(ang) {
        if (ang < 45 && ang > -45){
            touchPad.rotation = 90
            rotateRight()
        }

        if (ang > 135 || ang < -135){
            touchPad.rotation = -90
            rotateLeft()
        }
        if (ang >= 45 && ang <= 135){
            touchPad.rotation = 0
            rotateUp()
        }
        if (ang <= -45 && ang >= -135){
            touchPad.rotation = 180
            rotateDown()
        }

        touchPad.arrowVisible = true
    }*/




    //modeRotation divides the TouchPad2 in 8 slices
    //and rotates spaceship pitch, yaw , roll // Up, Down, Left, Right, UpRight, UpLeft, DownRight, DownLeft
    function modeRotation(ang) {

        //console.log("ang: "+ang)

        touchPad.arrowVisible = true

        if (ang <= 30 && ang >= -30) {
            //console.log("ang: right")
            wheelRotationPosition = "right"
            rotateRight()
            return;
        }
        if (ang >= 150 || ang <= -150){
            //console.log("ang: left")
            wheelRotationPosition = "left"
            rotateLeft()
            return;
        }
        if (ang >= 60 && ang <= 120) {
            //console.log("ang: up")
            wheelRotationPosition = "up"
            rotateUp()
            return;
        }
        if (ang <= -60 && ang >= -120){
            //console.log("ang: down")
            wheelRotationPosition = "down"
            rotateDown()
            return;
        }

        if (ang > 30 && ang < 60){
            //console.log("ang: upRight")
            wheelRotationPosition = "upRight"
            rotateUpRight()
            return;
        }
        if (ang > 120 && ang < 150) {
            //console.log("ang: upLeft")
            wheelRotationPosition = "upLeft"
            rotateUpLeft()
            return;
        }
        if (ang < -30 && ang > -60){
            //console.log("ang: downRight")
            wheelRotationPosition = "downRight"
            rotateDownRight()
            return;
        }
        if (ang < -120 && ang > -150){
            //console.log("ang: downLeft")
            wheelRotationPosition = "downLeft"
            rotateDownLeft()
            return;
        }
    }//modeRotation

    onWheelRotationPositionChanged: {
        //console.log("wheelRotationPosition: "+wheelRotationPosition)

        if (wheelRotationPosition === "center") {
            //wheelPadPositionRotation = "center"
            touchPad.imagePressed = "qrc:/images/wheelCommandBlue.png"
            wheelRotationChangeToCenter()
            return;
        }

        if (wheelRotationPosition === "up") {
            //console.log("padState === PadState.Up")
            touchPad.rotation = 180
            touchPad.mirrorImage = true
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateUpDown.png"
            wheelRotationChangeToUp()
            return;
        }

        if (wheelRotationPosition === "down") {
            //console.log("padState === PadState.Down")
            touchPad.rotation = 0
            touchPad.mirrorImage = false
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateUpDown.png"
            wheelRotationChangeToDown()
            return;
        }

        if (wheelRotationPosition === "left") {
            //console.log("padState === PadState.Left")
            touchPad.rotation = 0
            touchPad.mirrorImage = false
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRightLeft.png"
            wheelRotationChangeToLeft()
            return;
        }

        if (wheelRotationPosition === "right") {
            //console.log("padState === PadState.Right")
            touchPad.rotation = 0
            touchPad.mirrorImage = true
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRightLeft.png"
            wheelRotationChangeToRight()
            return;
        }

        if (wheelRotationPosition === "upRight") {
            //console.log("padState === PadState.UpRight")
            touchPad.rotation = -30
            touchPad.mirrorImage = true
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRightLeft.png"
            wheelRotationChangeToUpRight()
            return;
        }

        if (wheelRotationPosition === "upLeft") {
            touchPad.rotation = 30
            touchPad.mirrorImage = false
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRightLeft.png"
            wheelRotationChangeToUpLeft()
            return;
        }

        if (wheelRotationPosition === "downRight") {
            touchPad.mirrorImage = false
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRoll.png"
            wheelRotationChangeToDownRight()
            return;
        }

        if (wheelRotationPosition === "downLeft") {
            touchPad.mirrorImage = true
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRoll.png"
            wheelRotationChangeToDownLeft()
            return;
        }
    }


     //modeMovement divides the TouchPad2 in 8 slices
    //and moves spaceship Up, Down, Left, Right, //UpRight, UpLeft, DownRight, DownLeft
    function modeMovement(ang) {

        if (ang <= 30 && ang >= -30) {
            touchPad.rotation = 90
            checkWheelPadTransitionsMovement("right")
            moveRight()
        }
        if (ang >= 150 || ang <= -150){
            touchPad.rotation = -90
            checkWheelPadTransitionsMovement("left")
            moveLeft()
        }
        if (ang >= 60 && ang <= 120) {
            touchPad.rotation = 0
            checkWheelPadTransitionsMovement("up")
            moveUp()
        }
        if (ang <= -60 && ang >= -120){
            touchPad.rotation = 180
            checkWheelPadTransitionsMovement("down")
            moveDown()
        }

        if (ang > 30 && ang < 60){
            touchPad.rotation = 45
            checkWheelPadTransitionsMovement("upRight")
            moveUpRight()
        }
        if (ang > 120 && ang < 150) {
            touchPad.rotation = -45
            checkWheelPadTransitionsMovement("upLeft")
            moveUpLeft()
        }
        if (ang < -30 && ang > -60){
            touchPad.rotation = 135
            checkWheelPadTransitionsMovement("downRight")
            moveDownRight()
        }
        if (ang < -120 && ang > -150){
            touchPad.rotation = -135
            checkWheelPadTransitionsMovement("downLeft")
            moveDownLeft()
        }

        touchPad.arrowVisible = true
    }//modeMovement




    function checkWheelPadTransitionsMovement(position){


        if (position === "center") {
            if (wheelPadPositionMovement != "center") {
                wheelPadPositionMovement = "center"
                touchPad.imagePressed = "qrc:/images/wheelCommandBlue.png"
                //wheelChangeToCenter()
                wheelMoveChangeToCenter()
                stopCameraDriftMove()
                return;
            }
        }

        if (position === "up") {
            if (wheelPadPositionMovement != "up") {
                wheelPadPositionMovement = "up"
                wheelMoveChangeToUp()
                return;
            }
        }

        if (position === "down") {
            if (wheelPadPositionMovement != "down") {
                wheelPadPositionMovement = "down"
                wheelMoveChangeToDown()
                //wheelChangeToMovementDown()
                return;
            }
        }

        if (position === "left") {
            if (wheelPadPositionMovement != "left") {
                wheelPadPositionMovement = "left"
                wheelMoveChangeToLeft()
                //wheelChangeToMoveLeft()
                return;
            }
        }

        if (position === "right") {
            if (wheelPadPositionMovement != "right") {
                wheelPadPositionMovement = "right"
                wheelMoveChangeToRight()
                return;
            }
        }

        if (position === "upRight") {
            if (wheelPadPositionMovement != "upRight") {
                wheelPadPositionMovement = "upRight"
                wheelChangeToMoveUpRight()
                return;
            }
        }

        if (position === "upLeft") {
            if (wheelPadPositionMovement != "upLeft") {
                wheelPadPositionMovement = "upLeft"
                wheelChangeToMoveUpLeft()
                return;
            }
        }

        if (position === "downRight") {
            if (wheelPadPositionMovement != "downRight") {
                wheelPadPositionMovement = "downRight"
                wheelChangeToMoveDownRight()
                return;
            }
        }

        if (position === "downLeft") {
            if (wheelPadPositionMovement != "downLeft") {
                wheelPadPositionMovement = "downLeft"
                wheelChangeToMoveDownLeft()
                return;
            }
        }

    }//checkWheelPadTransitionsMovement

    //------------------------------------------------------------------------------

    //-----------------------------------------------------




    signal sigShoot()
    signal startStop()

    //used for effects like spaceship inclination when turning right or left
    signal startYawRight()
    signal startYawLeft()
    signal stopYaw()

    property real rotateDelta: 0.5
    property real moveDelta: 5


/*
    Connections { target: key_moveFront; enabled: parent.visible; function onIsPressed() { controlledEntity.moveFront(moveDelta) } }
    Connections { target: key_moveBack; enabled: parent.visible; function onIsPressed() { controlledEntity.moveBack(moveDelta) } }
    Connections { target: key_moveLeft; enabled: parent.visible; function onIsPressed() { controlledEntity.moveLeft(moveDelta) } }
    Connections { target: wheelChangeToRotateUpRight; enabled: parent.visible; function onIsPressed() { controlledEntity.moveRight(moveDelta) } }
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
    Connections { target: yawRight; enabled: parent.visible; function onReleased() { stopYawRight() } }
    Connections { target: yawLeft; enabled: parent.visible; function onPressed() { startYawLeft() } }
    Connections { target: yawLeft; enabled: parent.visible; function onReleased() { stopYawLeft() } }
*/

    //-----------------------------------------------------------------------------------------

    // camera animations




    // --Yaw Y animation---------------------------------------------------------------------------
    //start camera animation on right rotation
/*
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

*/

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


    function stopSpaceShipDriftingRotation() {
        stopYaw()
        camera.driftPitchZStop()
        camera.driftRollXStop()
        camera.driftYawYStop()
    }

    function stopCameraDriftMove() {
        wheelPadPositionMovement = "none"
        camera.driftMoveXStop()
        camera.driftMoveYStop()
        camera.driftMoveZStop()
    }


}

