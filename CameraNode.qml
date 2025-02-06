import QtQuick 2.3
import QtQuick3D //1.15
import Placement 1.0

Node {
    id: rootCamera

    property int cameraType: 0

    //Component.onCompleted: cameraType = 0


    property real cameraAnimationDuration: 800
    ParallelAnimation {
        id: cameraAnimation

        NumberAnimation {
            target: rootCamera; property: "distanceToEye"; to: distanceToEyeAnimation; duration: cameraAnimationDuration
        }
        NumberAnimation {
            target: rootCamera; property: "elevationToEye"; to: elevationToEyeAnimation; duration: cameraAnimationDuration
        }
        NumberAnimation {
            target: rootCamera; property: "cameraYrotation"; to: cameraYrotationAnimation; duration: cameraAnimationDuration
        }
        NumberAnimation {
            target: rootCamera; property: "cameraXrotation"; to: cameraXrotationAnimation; duration: cameraAnimationDuration
        }
        NumberAnimation {
            target: rootCamera; property: "cameraXrotation"; to: cameraXrotationAnimation; duration: cameraAnimationDuration
        }
        NumberAnimation {
            target: rootCamera; property: "distanceToEyeZ"; to: distanceToEyeZAnimation; duration: cameraAnimationDuration
        }
    }



    onCameraTypeChanged: {
        if (cameraType === 0)
        {
            distanceToEyeAnimation = 500
            elevationToEyeAnimation = 300
            cameraYrotationAnimation =  -90
            cameraXrotationAnimation = -15
            distanceToEyeZAnimation = 0
            cameraAnimation.start()
        }

        if (cameraType === 1)
        {
            distanceToEyeAnimation = 500
            elevationToEyeAnimation = 150
            cameraYrotationAnimation =  -90
            cameraXrotationAnimation = 0
            distanceToEyeZAnimation = 0
            cameraAnimation.start()
        }

        if (cameraType === 2)
        {
            /*distanceToEyeAnimation = 500
            elevationToEyeAnimation = 300
            cameraYrotationAnimation = -70
            cameraXrotationAnimation = -15
            cameraAnimation.start()*/

            distanceToEyeAnimation = -200//-200
            elevationToEyeAnimation = 300
            cameraYrotationAnimation = -15//30
            cameraXrotationAnimation = -15
            distanceToEyeZAnimation = 800//500
            cameraAnimation.start()

        }

        if (cameraType === 3)
        {
            distanceToEyeAnimation = -800
            elevationToEyeAnimation = 300
            cameraYrotationAnimation =  90
            cameraXrotationAnimation = -15
            distanceToEyeZAnimation = 0
            cameraAnimation.start()
        }

        if (cameraType === 4)
        {
            distanceToEyeAnimation = -800
            elevationToEyeAnimation = 150
            cameraYrotationAnimation =  90
            cameraXrotationAnimation = 0
            distanceToEyeZAnimation = 0
            cameraAnimation.start()
        }
        //define more camera types, fps, etc
    }


    property real distanceToEyeAnimation: 500
    property real elevationToEyeAnimation: 150
    property real cameraYrotationAnimation: -90
    property real cameraXrotationAnimation: -15
    property real distanceToEyeZAnimation: 0

    property real distanceToEye: 500
    property real distanceToEyeZ: 0//moves the camera to the left or right
    property real elevationToEye: 150
    property real cameraYrotation: -90
    property real cameraXrotation: 0

    property real camRotAnimDuration: 800
    property real camMoveAnimDuration: 800

    //camera yaw animation
    property bool driftingY: true
    property  real camAnimationInitialY: 0
    property  real camAnimationYRight: 30
    property  real camAnimationYLeft: -30
    //camera roll animation
    property bool driftingX: true
    property  real camAnimationInitialX: 0
    property  real camAnimationXRight: -30
    property  real camAnimationXLeft: 30
    //camera pitch animation
    property bool driftingZ: true
    property  real camAnimationInitialZ: 0
    property  real camAnimationZRight: -20
    property  real camAnimationZLeft: 20

    //camera front back animation
    property real camAnimX: -220
    property real camAnimX0: 0
    property real camAnimX_: 60

    //camera up down animation
    property real camAnimY: -30
    property real camAnimY0: 0
    property real camAnimY_: 30

    //camera left right animation
    property real camAnimZ: -30
    property real camAnimZ0: 0
    property real camAnimZ_: 30


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


    property int rotationEasingType: Easing.Linear
    property int movingEasingType: Easing.Linear

    Node {
        id: nodeCam
        eulerRotation.y: camAnimationInitialY
        PropertyAnimation {id: camAnimationY; duration: camRotAnimDuration; target: nodeCam; property: "eulerRotation.y";
            to: camAnimationYRight; easing.type: rotationEasingType }
        PropertyAnimation {id: camAnimationX; duration: camRotAnimDuration; target: nodeCam; property: "eulerRotation.x";
            to: camAnimationXRight; easing.type: rotationEasingType }
        PropertyAnimation {id: camAnimationZ; duration: camRotAnimDuration; target: nodeCam; property: "eulerRotation.z";
            to: camAnimationZRight; easing.type: rotationEasingType }

        PropertyAnimation {id: camAnimMoveX; duration: camMoveAnimDuration; target: nodeCam; property: "position.x";
            to: camAnimX0; easing.type: movingEasingType }
        PropertyAnimation {id: camAnimMoveY; duration: camMoveAnimDuration; target: nodeCam; property: "position.y";
            to: camAnimY0; easing.type: movingEasingType }
        PropertyAnimation {id: camAnimMoveZ; duration: camMoveAnimDuration; target: nodeCam; property: "position.z";
            to: camAnimZ0; easing.type: movingEasingType }

        PerspectiveCamera {
            id: cam
            //fieldOfView : 60 //The default value is 60.0
            clipFar: 1e6 //The default value is 10000.0
            clipNear: 1 //The default value is 10.0
            y: elevationToEye
            x: -distanceToEye
            z: distanceToEyeZ

            //camera by default is loking at -z, let's change it to +x, to align it with moveFront +x direction
            eulerRotation.y: cameraYrotation// rotate camera -90, to align it with +x axis
            eulerRotation.x: cameraXrotation//inclina the camera a bit down

        }//PerspectiveCamera
    }//nodeCam

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

    // --Move X-----------------------------------------------------------------------------------
    onDriftMoveFrontXStart: {
        camAnimMoveX.stop(); camAnimMoveX.to = camAnimX; camAnimMoveX.start()
    }

    onDriftMoveBackXStart: {
        camAnimMoveX.stop(); camAnimMoveX.to = camAnimX_; camAnimMoveX.start()
    }

    onDriftMoveXStop: {
        camAnimMoveX.stop();camAnimMoveX.to = camAnimX0; camAnimMoveX.start()
    }

    // --Move Y-----------------------------------------------------------------------------------
    onDriftMoveUpYStart: {
        console.log("animation move y up..............................")
        camAnimMoveY.stop(); camAnimMoveY.to = camAnimY; camAnimMoveY.start()
    }

    onDriftMoveDownYStart: {
        console.log("animation move y down..............................")
        camAnimMoveY.stop(); camAnimMoveY.to = camAnimY_; camAnimMoveY.start()
    }

    onDriftMoveYStop: {
        console.log("animation stop y stop..............................")
        camAnimMoveY.stop();camAnimMoveY.to = camAnimY0; camAnimMoveY.start()
    }

    // --Move Z-----------------------------------------------------------------------------------
    onDriftMoveRightZStart: {
        console.log("animation move z right..............................")
        camAnimMoveZ.stop(); camAnimMoveZ.to = camAnimZ; camAnimMoveZ.start()
    }

    onDriftMoveLeftZStart: {
        console.log("animation move left z..............................")
        camAnimMoveZ.stop(); camAnimMoveZ.to = camAnimZ_; camAnimMoveZ.start()
    }

    onDriftMoveZStop: {
        console.log("animation stop z stop..............................")
        camAnimMoveZ.stop();camAnimMoveZ.to = camAnimZ0; camAnimMoveZ.start()
    }


}
