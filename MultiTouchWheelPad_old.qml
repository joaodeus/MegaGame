import QtQuick 2.3
//import com.Timer 1.0

Item {
    id: root
    width: mainRoot.width
    height: mainRoot.height

    //property real velocity: 16
    //signal move(real cx, real cy)// not used anymore, it was used for moving the spaceship with the touchpad

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


    Timer {
        id: timerMultiTouchPad
        interval: fps_ms
        running: showCommand
        repeat: true
        onTriggered: {
            _move()
        }
    }

    function _move() {

        var dx = (point1.x-touchPadCenterX)
        var dy = (-(point1.y-touchPadCenterY))
        console.log("dx: "+dx)
        console.log("dy: "+dy)
        console.log("Point1IsPressed _move: "+ point1.x + " : "+point1.y)

        if (bPoint1IsPressed)
            point1IsPressed(point1.x, point1.y)

        if (bPoint2IsPressed)
            point2IsPressed(point2.x, point2.y)

        var radius = Math.sqrt(dx*dx+dy*dy)
        if (radius < radiusLower) {
            touchPad.arrowVisible = false
            checkWheelPadTransitions("center")
            return;
        }


        var angle = Math.atan2(dy, dx) * 180 / Math.PI;
        //var angleABS = Math.abs(angle);
        //console.log("angle: "+angle)

        mode2(angle)



    }//function _move()




    signal moveUp()
    signal wheelChangeToMoveUp()
    signal moveDown()
    signal wheelChangeToMoveDown()
    signal moveLeft()
    signal wheelChangeToMoveLeft()
    signal moveRight()
    signal wheelChangeToMoveRight()
    signal moveUpRight()
    signal wheelChangeToMoveUpRight()
    signal moveUpLeft()
    signal wheelChangeToMoveUpLeft()
    signal moveDownRight()
    signal wheelChangeToMoveDownRight()
    signal moveDownLeft()
    signal wheelChangeToMoveDownLeft()
    signal wheelChangeToCenter()


    signal point1Clicked(real cx, real cy)
    signal point1Pressed(real cx, real cy)
    signal point1Released(real cx, real cy)
    signal point1IsPressed(real cx, real cy)

    signal point2Clicked(real cx, real cy)
    signal point2Pressed(real cx, real cy)
    signal point2Released(real cx, real cy)
    signal point2IsPressed(real cx, real cy)

    onPoint1Released: wheelPadPosition = "none"

    //mode1 divides the TouchPad2 in 4 slices
    //Up, Down, Left, Right
    function mode1(ang) {
        if (ang < 45 && ang > -45){
            touchPad.rotation = 90
            moveRight()
        }

        if (ang > 135 || ang < -135){
            touchPad.rotation = -90
            moveLeft()
        }
        if (ang >= 45 && ang <= 135){
            touchPad.rotation = 0
            moveUp()
        }
        if (ang <= -45 && ang >= -135){
            touchPad.rotation = 180
            moveDown()
        }

        touchPad.arrowVisible = true
    }

    //mode2 divides the TouchPad2 in 8 slices
    //Up, Down, Left, Right, UpRight, UpLeft, DownRight, DownLeft
    function mode2(ang) {


        if (ang <= 30 && ang >= -30) {
            touchPad.rotation = 90
            checkWheelPadTransitions("right")
            moveRight()
        }
        if (ang >= 150 || ang <= -150){
            touchPad.rotation = -90
            checkWheelPadTransitions("left")
            moveLeft()
        }
        if (ang >= 60 && ang <= 120) {
            touchPad.rotation = 0
            checkWheelPadTransitions("up")
            moveUp()
        }
        if (ang <= -60 && ang >= -120){
            touchPad.rotation = 180
            checkWheelPadTransitions("down")
            moveDown()
        }

        if (ang > 30 && ang < 60){
            touchPad.rotation = 45
            checkWheelPadTransitions("upRight")
            moveUpRight()
        }
        if (ang > 120 && ang < 150) {
            touchPad.rotation = -45
            checkWheelPadTransitions("upLeft")
            moveUpLeft()
        }
        if (ang < -30 && ang > -60){
            touchPad.rotation = 135
            checkWheelPadTransitions("downRight")
            moveDownRight()
        }
        if (ang < -120 && ang > -150){
            touchPad.rotation = -135
            checkWheelPadTransitions("downLeft")
            moveDownLeft()
        }

        touchPad.arrowVisible = true
    }//mode2

    property string wheelPadPosition: "none"

    function checkWheelPadTransitions(position){


        if (position === "center") {
            if (wheelPadPosition != "center") {
                wheelPadPosition = "center"
                wheelChangeToCenter()
                return;
            }
        }

        if (position === "up") {
            if (wheelPadPosition != "up") {
                wheelPadPosition = "up"
                wheelChangeToMoveUp()
                return;
            }
        }

        if (position === "down") {
            if (wheelPadPosition != "down") {
                wheelPadPosition = "down"
                wheelChangeToMoveDown()
                return;
            }
        }

        if (position === "left") {
            if (wheelPadPosition != "left") {
                wheelPadPosition = "left"
                wheelChangeToMoveLeft()
                return;
            }
        }

        if (position === "right") {
            if (wheelPadPosition != "right") {
                wheelPadPosition = "right"
                wheelChangeToMoveRight()
                return;
            }
        }

        if (position === "upRight") {
            if (wheelPadPosition != "upRight") {
                wheelPadPosition = "upRight"
                wheelChangeToMoveUpRight()
                return;
            }
        }

        if (position === "upLeft") {
            if (wheelPadPosition != "upLeft") {
                wheelPadPosition = "upLeft"
                wheelChangeToMoveUpLeft()
                return;
            }
        }

        if (position === "downRight") {
            if (wheelPadPosition != "downRight") {
                wheelPadPosition = "downRight"
                wheelChangeToMoveDownRight()
                return;
            }
        }

        if (position === "downLeft") {
            if (wheelPadPosition != "downLeft") {
                wheelPadPosition = "downLeft"
                wheelChangeToMoveDownLeft()
                return;
            }
        }

    }
}

