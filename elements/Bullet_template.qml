import QtQuick 2.3
import QtQuick3D //1.15
import QtQuick
import Placement 1.0
import "../libraries"

Node {
    id: root
    property vector3d p0: root.position
    property vector3d p1: Qt.vector3d(p0.x + l*d.x, p0.y + l*d.y, p0.z + l*d.z) //startPosition +  direction * 500 //Qt.vector3d(500,000,000)
    property vector3d d: bulletaux.front//Qt.vector3d(1,0,0) //bullet direction vector
    property real l: 5000 //distance of the bullet shot before it's destroyed

    //property real l: 0 //distance of the bullet shot before it's destroyed

    position: bulletaux.position
    rotation: bulletaux.direction

    Placement {
        id: bulletaux
        //position: root.p1
        //direction: root.rotation
    }

    property alias bulletPosition: bulletaux.position
    property alias bulletRotation: bulletaux.direction

    property alias shotDuration: anim.duration

    signal fire()
    onFire: fireBullet.start()

    //onPositionChanged: console.log("bullet position: "+position)

    SequentialAnimation on position {
        id: fireBullet
        running: false
        loops: 1//Animation.Infinite
        onStopped: root.destroy() //destroy bullets whem shot ends
        PropertyAnimation {
            id: anim
            duration: 500
            to: p1
            from: p0
        }
    }

    /*FrameAnimation {
        id: fireBullet
        running: false
        //loops: 1//Animation.Infinite

        //onStopped: root.destroy() //destroy bullets when shot ends
        onTriggered: {
            l++
            //bulletaux.position = p1
            //root.position = p1
            if (l>5000) {
                fireBullet.stop()
                root.destroy()
            }
        }
    }*/


    onPositionChanged: {
        //console.log("bullet moved------------------------------------------------")
        checkTargetHit()
    }




    function moveRight(dist){
        bulletaux.moveRight(dist)
    }

    function moveLeft(dist){
        bulletaux.moveLeft(dist)
    }

    function moveUp(dist){
        bulletaux.moveUp(dist)
    }

    function roll(angle){
        bulletaux.roll(angle)
    }

    /*CheckEntityNear {
        id: checkCollison
        me: root
        distanceNear: 300
    }*/


    function checkTargetHit(){
        if (listOfEnemies == null) //remove TypeError: Cannot read property 'listOfEnemies' of null
            return;
        for (var i=0;i< listOfEnemies.listOfEnemies.length;i++) {
            //checkCollison.target = listOfEnemies.listOfEnemies[i]

            if ( lib.distance3Dnear(listOfEnemies.listOfEnemies[i].x, listOfEnemies.listOfEnemies[i].y, listOfEnemies.listOfEnemies[i].z,
                              root.x, root.y, root.z, 300) ) {
                console.log("Target on sight.................................................................")
                listOfEnemies.listOfEnemies[i].iamHit()
                fireBullet.stop()
                fireBullet.destroy()
            }
            else
                ;//console.log("Target failled")
        }//for
    }//checkTargetHit()

}
