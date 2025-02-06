import QtQuick 2.0
import QtQml 2.15
import QtQuick
import Placement 1.0

Item {
    id: root
    width: btnSize
    height: btnSize * 3

    Column {
        anchors.fill: parent

        /*Image {
            width: parent.width
            height: parent.height / 4
            fillMode: Image.PreserveAspectFit
            source: !isPressed ? "qrc:/images/ArrowBlue.png" :
                                 ma.mouseY < parent.height * 0.25 ? "qrc:/images/ArrowBlueSolid.png"
                                                                  : "qrc:/images/ArrowBlue.png"
        }
        Image {
            width: parent.width
            height: parent.height / 4
            fillMode: Image.PreserveAspectFit
            source: !isPressed ? "qrc:/images/ArrowBlue.png" :
                                 ma.mouseY < parent.height * 0.5 ? "qrc:/images/ArrowBlueSolid.png"
                                                                 : "qrc:/images/ArrowBlue.png"
        }
        Image {
            width: parent.width
            height: parent.height / 4
            fillMode: Image.PreserveAspectFit
            source: !isPressed ? "qrc:/images/ArrowBlueSolid.png" :
                                 ma.mouseY < parent.height * 0.75 ? "qrc:/images/ArrowBlueSolid.png"
                                                                  : "qrc:/images/ArrowBlue.png"
        }
        Image {
            width: parent.width
            height: parent.height / 4
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/ArrowBlueSolid.png"
        }*/

        Image {
            width: parent.width
            height: parent.height / 4
            fillMode: Image.PreserveAspectFit
            source: !isPressed ? "qrc:/images/ArrowBlue.png" : "qrc:/images/ArrowBlueSolid.png"
        }
        Image {
            width: parent.width
            height: parent.height / 4
            fillMode: Image.PreserveAspectFit
            source: !isPressed ? "qrc:/images/ArrowBlue.png" : "qrc:/images/ArrowBlueSolid.png"
        }
        Image {
            width: parent.width
            height: parent.height / 4
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/ArrowBlueSolid.png"
        }
        Image {
            width: parent.width
            height: parent.height / 4
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/ArrowBlueSolid.png"
        }
    }

    property bool isPressed: false

    property real accelerationMax: 10
    property real scaleFactor: -accelerationMax * 2 / parent.height
    //property real heightNormalized: parent.height * scaleFactor

    property real accelerationCurrent: ma.mouseY * scaleFactor + accelerationMax

   // onAccelerationCurrentChanged: console.log("accelerationCurrent: "+accelerationCurrent)

    MouseArea {
        id: ma
        anchors.fill: parent
        onPressed: {
            //simulate first a sig released, lets see if this fixes a bug where sometimes onReleased seems to be lost ???
           // isPressed = false
           // sigReleased()

            isPressed = true
            sigPressed()
        }
        onReleased: {
            isPressed = false
            sigReleased()
        }
        onMouseYChanged: {
            /*scaleFactor = -accelerationMax * 2 / parent.height
            console.log("mouseY: "+ mouseY)
            console.log("parent.height: "+ parent.height)
            console.log("scaleFactor: "+ scaleFactor)
            console.log("ma.mouseY: "+ ma.mouseY)
            console.log("ma.mouseY * scaleFactor: "+ ma.mouseY * scaleFactor)

            accelerationCurrent = ma.mouseY * scaleFactor + accelerationMax

            if (accelerationCurrent > accelerationMax)
                accelerationCurrent = accelerationMax

            if (accelerationCurrent < -accelerationMax)
                accelerationCurrent = -accelerationMax

            console.log("accelerationCurrent: "+ accelerationCurrent)
            */
        }
    }

    property Placement controlledEntity: undefined

    TimerFrameAnimation {
        //id: timer
        running: isPressed
        //interval: fps_ms
        //repeat: true
        onTriggered: {
            console.log("accelerationCurrent: "+accelerationCurrent)
            /*if (accelerationCurrent >= 5)
                sigMoveFront()
            else
                sigMoveBack()*/
            sigMoveFront()
        }
    }

    signal sigPressed()
    signal sigReleased()
    signal sigMoveFront()
    signal sigMoveBack()

   // Connections { target: root; enabled: true; function onMoveFront() { controlledEntity.moveFront(accelerationCurrent) } }


}
