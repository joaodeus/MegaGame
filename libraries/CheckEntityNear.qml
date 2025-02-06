import QtQuick 2.0
//import "../"

/*
This library is used for collision checking,
for example, collision between the badStar and the spaceship,
when the spaceShip gets near the badStar, a action is triggered

me - should be binded to the badStar
target - should be binded to the spaceship
*/

Item {
    id: root

    property var me: null //({})   // nothing = undefined//the planet who is waiting for the spaceship, or whatever, to arrive
    property var target: null//({})   // nothing = undefined // the spaceship, or whatever
    property real distanceNear: me === null || target === null ? 0 : me.scale.x/2 + me.sacle.z/2
                                + target.scale.x/2 + target.scale.z/2 // just a arbitrary value, change to fit your needs
    property bool isEnabled: true//: screenNum === i//false

    //property int screenNum: -1  //can be binded to the current screenNumber
    //property int i: -2 //it's a auxiliar variable for binding the dynamic created objects to a screen number
    //when CheckPersonNear is dynamically created can be used to set isEnabled in certain screen number with:
    // isEnabled = Qt.binding( function(){ return  screenNum === i } )

    property string debugInfo: "CheckEntityNear default" //change to something more decriptive in the object

    property real _targetX: target !== null && isEnabled ? target.x : 0
    property real _targetY: target !== null && isEnabled ? target.y : 0
    property real _targetZ: target !== null && isEnabled ? target.z : 0


    property bool isEntityNear: false

    signal targetChangedNear() //fired when the target distance to me changes to less than distanceNear
    signal targetChangedFar() //fired when the target distance to me changes to more than distanceNear

    onIsEnabledChanged: console.log(debugInfo + " isEnabled: "+isEnabled)
    //onScreenNumChanged: console.log(debugInfo + " onScreenNumChanged: " + screenNum + " i: " + i + " ;isEnabled: "+isEnabled)

    onIsEntityNearChanged: {
        if (isEntityNear)
            targetChangedNear()
        else
            targetChangedFar()
    }


    function checkDistance() {
        //console.log("on_TargetXYChanged: "+_targetX +" : "+_targetY)

        //console.log("distanceNear:"+distanceNear)
        /*if ( typeof(me) == 'undefined' || me === null ) {
            console.log("I dont exist")
            return;
        }*/
        //console.log(debugInfo)

        //if ( lib.dist(target.x, target.y, me.x, me.y, distanceNear) ) {
        if ( lib.distance3Dnear(target.x, target.y, target.z,
                          me.x, me.y, me.z,
                          distanceNear) ) {
            //console.log("target found")
            if (isEntityNear === false)
                isEntityNear = true
        }
        else {
            //console.log("target not found")
            if (isEntityNear === true) {
                isEntityNear = false
            }
        }
    }

    /*function checkCollision(){
        return lib.distance3Dnear(target.x, target.y, target.z,
                          me.x, me.y, me.z,
                          distanceNear)
    }*/

    on_TargetXChanged: checkDistance()
    on_TargetYChanged: checkDistance()
    on_TargetZChanged: checkDistance()

    //onTargetChangedNear: console.log("I'm near.................")
    //onTargetChangedFar: console.log("I'm far.................")
}
