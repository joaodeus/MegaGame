import QtQuick 2.3
import QtQml 2.15
import QtQuick3D //1.15
import Placement 1.0

Node {
    id: nodeCamera
    //id: placement


    property bool showForward: true
    property real cameraYrotation: showForward ? -90 : 90
    property real rotateDelta: 1.2
    property real moveDelta: 15

    //camera drifting animations
    property real camAnimationInitialY: 0
    property real camAnimationYRight: 30
    property real camAnimationYLeft: -30
    property real camAnimationDuration: 500

    property real distanceToEye: 500
    property real elevationToEye: 150

    property bool driftingY: true
    //property  real camAnimationYRight: 0
    //property  real camAnimationYLeft: 0
    //property real camAnimationDuration: 1

    //Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_Space() { jump() } }
    //Connections { target: commandKeyb; enabled: parent.visible; function onKeyPressed(v) { keyPressed(v) }}

    signal jump()

    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_Up() { placement.moveFront(moveDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_Down() { placement.moveBack(moveDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_Left() { placement.rotateY(rotateDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_Right() { placement.rotateY(-rotateDelta) } }

    //start camera animation on right rotation
    Connections { target: commandKeyb; enabled: parent.visible && driftingY; function onKeyPressed_Right() {
        camAnimationY.stop();//camAnimationDuration = 500;
        camAnimationY.to = camAnimationYRight; camAnimationY.start() } }

    //start camera animation on left rotation
    Connections { target: commandKeyb; enabled: parent.visible && driftingY; function onKeyPressed_Left() {
        camAnimationY.stop()//camAnimationDuration = 500;
        camAnimationY.to = camAnimationYLeft; camAnimationY.start() } }

    //stop right rotation animation
    Connections { target: commandKeyb; enabled: parent.visible && driftingY; function onKeyReleased_Right() {
        //console.log("stop right animation............")
        camAnimationY.stop();//camAnimationDuration = 100;//camAnimationInitialY = 20;
        camAnimationY.to = camAnimationInitialY; camAnimationY.start() } }

    //stop left rotation animation
    Connections { target: commandKeyb; enabled: parent.visible && driftingY; function onKeyReleased_Left() {
        camAnimationY.stop();//camAnimationDuration = 100;//camAnimationInitialY = -20;
        camAnimationY.to = camAnimationInitialY; camAnimationY.start() } }




    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_W() { placement.moveFront(moveDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_S() { placement.moveBack(moveDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_A() { placement.moveLeft(moveDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_D() { placement.moveRight(moveDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_R() { placement.moveUp(moveDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_F() { placement.moveDown(moveDelta) } }

    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_Y() { placement.rotateX(rotateDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_H() { placement.rotateX(-rotateDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_U() { placement.rotateY(rotateDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_J() { placement.rotateY(-rotateDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_I() { placement.rotateZ(rotateDelta) } }
    Connections { target: commandKeyb; enabled: parent.visible; function onKeyIsPressed_K() { placement.rotateZ(-rotateDelta) } }

    Connections { target: commandKeyb; enabled: parent.visible; function onKeyPressed_7() { speedUp() } }

    signal speedUp()
    onSpeedUp: {
        if (moveDelta == 0.5){
            moveDelta = 1
            //console.log("speedUp....... "+moveDelta)
            return
        }
        if (moveDelta == 1){
            moveDelta = 2
            //console.log("speedUp....... "+moveDelta)
            return
        }
        if (moveDelta == 2){
            moveDelta = 4
            //console.log("speedUp....... "+moveDelta)
            return
        }
        if (moveDelta == 4){
            moveDelta = 6
            //console.log("speedUp....... "+moveDelta)
            return
        }
        if (moveDelta == 6){
            moveDelta = 0.5
            //console.log("speedUp....... "+moveDelta)
            return
        }
        //default
        moveDelta = 0.5
        //moveDelta == 0.5 ? moveDelta = 1 : moveDelta = 0.5
        console.log("speedUp....... "+moveDelta)
    }



    //Camera default orientation is forward vector pointing along the negative Z axis
    //and its up vector along the positive Y axis.
    position: placement.position
    rotation: placement.direction

    property alias placement: placement
    Placement{
        id: placement
    }

    Node {
        id: nodeCameraRotation
        eulerRotation.y: camAnimationInitialY
        PropertyAnimation {id: camAnimationY; duration: 800;
            target: nodeCameraRotation; property: "eulerRotation.y"; to: camAnimationYRight }
        PerspectiveCamera {
            id: cam
            //fieldOfView : 60 //The default value is 60.0
            clipFar: 1e6 //The default value is 10000.0
            clipNear: 1 //The default value is 10.0
            y: elevationToEye
            x: -distanceToEye
            //camera by default is loking at -z, let's change it to +x, to align it with moveFront +x direction
            eulerRotation.y: cameraYrotation// default is -90, rotate camera to align it with +x axis
        }//PerspectiveCamera
    }//NodeCameraRotation



}//NodeCamera
