import QtQuick 2.3
import QtQml 2.15
import QtQuick
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


    property bool wheelPad_SlideUp: false
    property bool wheelPad_SlideDown: false

    onShowCommandChanged: {
        //console.log("onShowCommandChanged: " + showCommand)
        if (!showCommand)
        wheelPad_SlideUp = wheelPad_SlideDown = false
    }

    //between the press and realese, check if the distance has gone above delta "radiusLower"
    property bool checkIsClickP1
    property bool checkIsClickP2

    property real radiusLower: touchPad.width*0.05//only above this value the touch press will make action
    property real radiusUpper: touchPad.width*0.75//above this distance the velocity will be truncated
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


    //point 1
    Timer {
        id: timerTouchPoint1DoubleClick
        interval: 500 // maximum delay used for two consecutive clicks to be interpreted as a double-click
        onRunningChanged: {
            if (!running)
                doubleClickedP1IsPressed = false
        }
    }

    //point 2
    Timer {
        id: timerTouchPoint2DoubleClick
        interval: 500 // maximum delay used for two consecutive clicks to be interpreted as a double-click
        onRunningChanged: {
            if (!running)
                doubleClickedP2IsPressed = false
        }
    }

    signal pressedP1(var x1, var y1)
    //property double startTime: 0
    property bool doubleClickedP1IsPressed: false
    signal doubleClickedP1(var x1, var y1)

    property bool doubleClickedP2IsPressed: false
    signal doubleClickedP2()

    signal pressAndHoldP1() //fire after 500ms pressed
    property bool presseAndHold1IsPressed: false

    signal pressAndHoldP2() //fire after 500ms pressed
    property bool presseAndHold2IsPressed: false

    //onPressAndHoldP1: console.log("onPressAndHoldP1 .......................................................")
    Timer{
        id: timerPressAndHoldP1
        interval: 500
        onTriggered: {
            if(presseAndHold1IsPressed) {
                if (lib.distance2Dnear(touchPad.centerX, touchPad.centerY, point1.x, point1.y, radiusLower))
                    pressAndHoldP1()
            }
        }
    }

    Timer{
        id: timerPressAndHoldP2
        interval: 500
        onTriggered: {
            if(presseAndHold2IsPressed) {
                if (lib.distance2Dnear(point2.pressedX2, point2.pressedY2, point2.x, point2.y, radiusLower))
                    pressAndHoldP2()
            }
        }
    }

    MultiPointTouchArea {
        anchors.fill: parent
        //mouseEnabled: false
        touchPoints: [
            TouchPoint {
                id: point1
                onPressedChanged: {
                    if (pressed) { //pressed
                        pressedP1(x, y)

                        if (doubleClickedP1IsPressed) {
                            doubleClickedP1(x, y)
                            //console.log ("" + (new Date().getTime() - startTime + " ms"))
                            //startTime = 0
                        }
                        //startTime = new Date().getTime()

                        doubleClickedP1IsPressed = true
                        timerTouchPoint1DoubleClick.start()

                        //touch1Pressed(x, y)
                        touchPad.centerX = x
                        touchPad.centerY = y
                        showCommand = false//only show command when we move, in xChanged() / yChanged()
                        //fireOnReleaseP1 = true
                        checkIsClickP1 = true
                        point1Pressed(x, y)
                        bPoint1IsPressed = true
                        //console.log("pressed XY: " +x +" : " + y)
                        presseAndHold1IsPressed = true
                        timerPressAndHoldP1.start()
                    }
                    else { //released
                        presseAndHold1IsPressed = false
                        timerPressAndHoldP1.stop()
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

                //pressedX2 and pressedY2 save the point2 press position
                //if the point2 release point is near enought it fires point2Clicked()
                //mobile phone accuracy isnt that good, so we allow press and release distance to be a bit diferent to fire point2Clicked()
                property real pressedX2
                property real pressedY2

                onPressedChanged: {
                    if (pressed) { //pressed

                        if (doubleClickedP2IsPressed) {
                            doubleClickedP2()
                        }
                        doubleClickedP2IsPressed = true
                        timerTouchPoint2DoubleClick.start()

                        pressedX2 = x
                        pressedY2 = y
                        //point2Clicked(x, y)
                        //startFlying()
                        point2Pressed(x, y)
                        bPoint2IsPressed = true
                        checkIsClickP2 = true

                        presseAndHold2IsPressed = true
                        timerPressAndHoldP2.start()
                    }
                    else { //released
                        presseAndHold2IsPressed = false
                        timerPressAndHoldP2.stop()
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
                        if (!lib.distance2Dnear(point2.pressedX2, point2.pressedY2, x, y, radiusLower))
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


    //Testing FrameAnimation, it will cause a bug, dont know why
    //Timer {
    TimerFrameAnimation {
        id: timerMultiTouchPad
        //interval: fps_ms
        //repeat: true
        running: showCommand
        onTriggered: {
            _move()
        }
    }

    function _move() {

        var dx = point1.x-touchPadCenterX
        var dy = -point1.y+touchPadCenterY
        //console.log("dx: "+dx)
        //console.log("dy: "+dy)
        //console.log("Point1IsPressed _move: "+ point1.x + " : "+point1.y)

        if (bPoint1IsPressed)
            point1IsPressed(point1.x, point1.y)

        if (bPoint2IsPressed)
            point2IsPressed(point2.x, point2.y)

        var radius = Math.sqrt(dx*dx+dy*dy)
        if (radius < radiusLower) {
            touchPad.arrowVisible = false
            checkWheelPadTransitionsRotation("center")
            stopCameraDriftMove()

            wheelPad_SlideUp = wheelPad_SlideDown = false
            return;
        }


        var angle = Math.atan2(dy, dx) * 180 / Math.PI;
        //var angleABS = Math.abs(angle);
        //console.log("angle: "+angle)

        touchPad.rotation = -angle+90
        touchPad.imagePressed = "qrc:/images/wheelArrowYellow.png"
        touchPad.arrowVisible = true


        modeCarAdpativeRotation(dx, dy, angle)

        // if touch is made on the right side of the screen show touchPad Rotation - rotates ships
        // if touch is made on the left side of the screen show touchPad Movement - moves ship
        /*if (touchPad.centerX >= mainRoot.width*0.5) {
            modeRotation(angle)
        }
        else {
            touchPad.mirrorImage = false
            touchPad.imagePressed = "qrc:/images/wheelArrowBlue.png"
            modeMovement(angle)
        }*/

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
    onWheelMoveChangeToUp: { stopCameraDriftMove(); driftMoveUpYStart() }
    onWheelMoveChangeToDown: { stopCameraDriftMove(); driftMoveDownYStart() }
    onWheelMoveChangeToLeft: { stopCameraDriftMove(); driftMoveLeftZStart() }
    onWheelMoveChangeToRight: { stopCameraDriftMove(); driftMoveRightZStart() }
    onWheelChangeToMoveUpRight: {
        stopCameraDriftMove(); driftMoveUpYStart(); driftMoveRightZStart()
    }
    onWheelChangeToMoveUpLeft: {
        stopCameraDriftMove(); driftMoveUpYStart(); driftMoveLeftZStart()
    }
    onWheelChangeToMoveDownRight: {
        stopCameraDriftMove(); driftMoveDownYStart(); driftMoveRightZStart()
    }
    onWheelChangeToMoveDownLeft: {
        stopCameraDriftMove(); driftMoveDownYStart(); driftMoveLeftZStart()
    }

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

    onWheelRotationChangeToUp: { stopSpaceShipDriftingRotation(); camera.driftPitchZRightStart() }
    onWheelRotationChangeToDown: { stopSpaceShipDriftingRotation(); camera.driftPitchZLeftStart() }
    onWheelRotationChangeToRight: { stopSpaceShipDriftingRotation(); camera.driftYawYRightStart(); startYawRight() }
    onWheelRotationChangeToLeft: { stopSpaceShipDriftingRotation(); camera.driftYawYLeftStart(); startYawLeft() }

    onWheelRotationChangeToUpRight: {
        stopSpaceShipDriftingRotation()
        camera.driftYawYRightStart()
        camera.driftPitchZRightStart()
    }

    onWheelRotationChangeToUpLeft: {
        stopSpaceShipDriftingRotation()
        camera.driftYawYLeftStart()
        camera.driftPitchZRightStart()
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
    //onRotateDownRight: {controlledEntity.rotateZ(-rotateDelta); controlledEntity.rotateY(-rotateDelta)}
    //onRotateDownLeft: {controlledEntity.rotateZ(-rotateDelta); controlledEntity.rotateY(rotateDelta)}
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


    property bool adaptativeMode: true
    property real velocity: 0
    //onVelocityChanged: console.log("velocity: "+velocity)

    function modeCarAdpativeRotation(dx, dy, angle) {

        //console.log("modeCarAdpativeRotation angle: "+angle)
        var angleDelta = 20
        var angleAbs = Math.abs(angle)


        if (angleAbs < (90-angleDelta)) {
            camera.driftYawYRightStart()
            startYawRight()
        }
        else if (angleAbs > (90+angleDelta)) {
            camera.driftYawYLeftStart()
            startYawLeft()
        }
        else {
            camera.driftYawYStop()
            stopYaw()
        }

        var velocityAux = 0.2

        if (dy >= 0) {
            if (dy > radiusUpper)dy = radiusUpper

            if (dx > radiusUpper)dx = radiusUpper
            if (dx < -radiusUpper)dx = -radiusUpper

            wheelPad_SlideUp = true
            wheelPad_SlideDown = false

            velocity = dy*velocityAux
            //console.log("dy*velocity: "+dy*velocityAux)
            if (adaptativeMode) {
                controlledEntity.moveFront(dy*velocityAux)
                camera.driftMoveFrontXStart()
            }
            else {
                controlledEntity.moveFront(2)
                camera.driftMoveFrontXStart()
            }

            controlledEntity.rotateY(-dx*0.02)
        }
        if (dy < 0) {
            if (dy < -radiusUpper)dy = -radiusUpper

            if (dx > radiusUpper)dx = radiusUpper
            if (dx < -radiusUpper)dx = -radiusUpper

            wheelPad_SlideUp = false
            wheelPad_SlideDown = true

            velocity = -dy*velocityAux
            //console.log("-dy*velocity: "+dy*velocityAux)
            //controlledEntity.moveFront(dy*velocity)
            if (adaptativeMode)
                controlledEntity.moveBack(-dy*velocityAux)
            else
                controlledEntity.moveBack(2)

            controlledEntity.rotateY(dx*0.02)
        }
    } //function modeCarAdpativeRotation(dx, dy, angle)

    //modeRotation divides the TouchPad2 in 8 slices
    //and rotates spaceship pitch, yaw , roll // Up, Down, Left, Right, UpRight, UpLeft, DownRight, DownLeft
    function modeRotation(ang) {

        if (ang <= 30 && ang >= -30) {
            //touchPad.rotation = 90
            touchPad.rotation = 0
            touchPad.mirrorImage = true
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRightLeft.png"
            checkWheelPadTransitionsRotation("right")
            rotateRight()
        }
        if (ang >= 150 || ang <= -150){
            //touchPad.rotation = -90
            touchPad.rotation = 0
            touchPad.mirrorImage = false
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRightLeft.png"
            checkWheelPadTransitionsRotation("left")
            rotateLeft()
        }
        if (ang >= 60 && ang <= 120) {
            touchPad.rotation = 180
            touchPad.mirrorImage = true
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateUpDown.png"
            checkWheelPadTransitionsRotation("up")
            rotateUp()
        }
        if (ang <= -60 && ang >= -120){
            //touchPad.rotation = 180
            touchPad.rotation = 0
            touchPad.mirrorImage = false
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateUpDown.png"
            checkWheelPadTransitionsRotation("down")
            rotateDown()
        }

        if (ang > 30 && ang < 60){
            //touchPad.rotation = 45
            touchPad.rotation = -30
            touchPad.mirrorImage = true
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRightLeft.png"
            checkWheelPadTransitionsRotation("upRight")
            rotateUpRight()
        }
        if (ang > 120 && ang < 150) {
            //touchPad.rotation = -45
            touchPad.rotation = 30
            touchPad.mirrorImage = false
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRightLeft.png"
            checkWheelPadTransitionsRotation("upLeft")
            rotateUpLeft()
        }
        if (ang < -30 && ang > -60){
            //touchPad.rotation = 135
            touchPad.mirrorImage = false
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRoll.png"
            checkWheelPadTransitionsRotation("downRight")
            rotateDownRight()
        }
        if (ang < -120 && ang > -150){
            //touchPad.rotation = -135
            touchPad.mirrorImage = true
            touchPad.imagePressed = "qrc:/images/wheelCommandRotateRoll.png"
            checkWheelPadTransitionsRotation("downLeft")
            rotateDownLeft()
        }

        touchPad.arrowVisible = true
    }//modeRotation


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


    property string wheelPadPositionRotation: "none"

    function checkWheelPadTransitionsRotation(position){

        if (position === "center") {
            if (wheelPadPositionRotation != "center") {
                wheelPadPositionRotation = "center"
                touchPad.imagePressed = "qrc:/images/wheelCommandBlue.png"
                wheelRotationChangeToCenter()
                return;
            }
        }

        if (position === "up") {
            if (wheelPadPositionRotation != "up") {
                wheelPadPositionRotation = "up"
                wheelRotationChangeToUp()
                return;
            }
        }

        if (position === "down") {
            if (wheelPadPositionRotation != "down") {
                wheelPadPositionRotation = "down"
                wheelRotationChangeToDown()
                return;
            }
        }

        if (position === "left") {
            if (wheelPadPositionRotation != "left") {
                wheelPadPositionRotation = "left"
                wheelRotationChangeToLeft()
                return;
            }
        }

        if (position === "right") {
            if (wheelPadPositionRotation != "right") {
                wheelPadPositionRotation = "right"
                wheelRotationChangeToRight()
                return;
            }
        }

        if (position === "upRight") {
            if (wheelPadPositionRotation != "upRight") {
                wheelPadPositionRotation = "upRight"
                wheelRotationChangeToUpRight()
                return;
            }
        }

        if (position === "upLeft") {
            if (wheelPadPositionRotation != "upLeft") {
                wheelPadPositionRotation = "upLeft"
                wheelRotationChangeToUpLeft()
                return;
            }
        }

        if (position === "downRight") {
            if (wheelPadPositionRotation != "downRight") {
                wheelPadPositionRotation = "downRight"
                wheelRotationChangeToDownRight()
                return;
            }
        }

        if (position === "downLeft") {
            if (wheelPadPositionRotation != "downLeft") {
                wheelPadPositionRotation = "downLeft"
                wheelRotationChangeToDownLeft()
                return;
            }
        }

    }//checkWheelPadTransitionsRotation

    //--------------------------------------------------------
    property string wheelPadPositionMovement: "none"

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

    }//checkWheelPadTransitionsRotation

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




    //-----------------------------------------------------------------------------------------

    // camera animations




    // --Yaw Y animation---------------------------------------------------------------------------
    //start camera animation on right rotation


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
        wheelPadPositionRotation = "none"
        //stopYaw()
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

