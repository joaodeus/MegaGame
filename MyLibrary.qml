import QtQuick 2.0
//import QtMultimedia 5.6

Item {
    id: root

    //property variant myStarship

    //property var enemies: new Array()

    property bool errorCreateObject: false
    function createItem(itemName, parentName) {
        var component = Qt.createComponent(itemName);
        //finish creation
        if (component.status === Component.Ready) {
            var myItem = component.createObject(parentName);
            if (myItem === null) {// Error handling
                errorCreateObject = true
                console.log("Error creating item")
            }
            else {
                //console.log("Ok creating Item.")
                errorCreateObject = false
                return myItem
            }
        }
        else if (component.status === Component.Error) {
            //Error handling
            errorCreateObject = true
            console.log("Error handling component:",component.errorString());
        }
    }

    /*function createItem(itemName, parentName) {
        var component = Qt.createComponent(itemName);
        //finish creation
        if (component.status === Component.Ready) {
            //var myItem = component.createObject(parentName, {"spaceWidth": parentName.width});
            var myItem = component.createObject(parentName);
            if (myItem === null) {// Error handling
                console.log("Error creating item")
            }
            else {
                //console.log("Ok creating")
                return myItem
            }
        }
        else if (component.status === Component.Error) {
            //Error handling
            console.log("Error handling component:",component.errorString());
        }
    }*/


    /*function distName(name, x1,y1,x2,y2, delta) {
        console.log("dist:------")
        return distance2Dnear(x1,y1,x2,y2, delta)
    }*/

    function distance2Dnear(x1,y1,x2,y2, delta) {
        //console.log("dist:"+Math.sqrt( Math.pow(x2-x1, 2) + Math.pow(y2-y1,2) ) )
        //console.log("delta:"+delta)
        //console.log("distX:"+  Math.abs(x2-x1))
        //console.log("distY:"+  Math.abs(y2-y1))
        if ( Math.sqrt( Math.pow(x2-x1, 2) + Math.pow(y2-y1,2) ) < delta)
            return true
        else
            return false
    }

    function distance3D(x1, y1, z1, x2, y2, z2){
        var dist = Math.sqrt( Math.pow(x2-x1, 2) + Math.pow(y2-y1, 2) + Math.pow(z2-z1, 2) )
        return dist;
    }

    function distance3Dnear(x1, y1, z1, x2, y2, z2, delta) {
        //console.log("dist:"+Math.sqrt( Math.pow(x2-x1, 2) + Math.pow(y2-y1,2) ) )
        //console.log("delta:"+delta)
        //console.log("distX:"+  Math.abs(x2-x1))
        //console.log("distY:"+  Math.abs(y2-y1))
        var dist = Math.sqrt( Math.pow(x2-x1, 2) + Math.pow(y2-y1, 2) + Math.pow(z2-z1, 2) )
        //console.log("distance3Dnear: "+ dist)
        if ( dist < delta)
            return true
        else
            return false
    }


    function checkCollison(obj1TopLeft, obj1BottomRight , obj2TopLeft, obj2BottomRight) {
        return rectanglesOverlap(obj1TopLeft, obj1BottomRight , obj2TopLeft, obj2BottomRight) //obj2 bottom right
    }

    function rectanglesOverlap(pL_, pR_, oL, oR) {
        // If one rectangle is on left side of other
        //console.log("rectangles overlap---------------")
        //console.log("obstacle top left xy: "+oL.x+" : "+oL.y)
        //console.log("obstacle bottom right xy: "+oR.x+" : "+oR.y)
        if (pR_.x < oL.x || oR.x < pL_.x) {
            return false;
        }

        // If one rectangle is above other
        if (pR_.y < oL.y || oR.y < pL_.y) {
            return false;
        }
        return true;
    }


    function randomMinMax(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    function randomMinMaxPosNeg(min, max) {
        var n = randomMinMax(min, max)
        if (Math.random() < 0.5)
            return -n;
        else
            return n;
    }

    //var randomnumber = Math.floor(Math.random() * (maximum - minimum + 1)) + minimum;

    //create a array of random numbers between 0-n
    function createOrderedArray(size) {
        //console.log("createOrderedArray...................................................")
        var arr = [];
        for (var i=0;i<size;i++) {
            //console.log("array push: "+i)
            arr.push(i);
        }
        //console.log("array lenght: "+size)
        //console.log("array: "+arr)
        return arr;
    }

    function shuffleArray(arr) {
        //shuffle array
        var i = arr.length;
        //console.log("shuffle array lenght: "+arr.lenght)
        var j = 0;
        var temp;

        while (i--) {
            j = Math.floor(Math.random() * (i+1));
            // swap randomly chosen element with current element
            temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
        }
        //console.log("shuffle array: "+arr)
        return arr;
    }

    /*
    //todo: break removeEnemy() in several functions??? removeInactiveEnemy(), removeDestroyedEnemy() ???
    function removeEnemy() {
        //console.log("removing enemies: "+activeEnemiesList.count)
        for(var i = activeEnemiesList.count-1; i >= 0; i--) {

            //remove object if it doenst exist
            if (!activeEnemiesList.get(i).obj) {
                console.log("removing enemy index : "+ i)
                activeEnemiesList.remove(i,1)
                break;
            }

            //remove object if it is not alive
            if (activeEnemiesList.get(i).obj.alive === false) {
                console.log("removing enemy index : "+ i)
                activeEnemiesList.get(i).obj.destroy()
                activeEnemiesList.remove(i,1)
                break;
            }

            //remove inactive object
            if (activeEnemiesList.get(i).obj.active === false) {
                console.log("removing enemy index : "+ i)
                activeEnemiesList.remove(i,1)
            }

        }
    }

    function addEnemy(enemy) {
        console.log("adding enemies to list")
        activeEnemiesList.append({"obj": enemy})
        //listOfEnemies.append({"obj": enemyTemplate})
    }

    function clearEnemies() {
        console.log("removing all enemies: "+activeEnemiesList.count)
        for(var i = activeEnemiesList.count-1; i >= 0; i--) {
            console.log("removing enemy at :"+i)
            activeEnemiesList.get(i).obj.destroy()
            activeEnemiesList.remove(i,1)
        }
    }*/



    //--Touch and Keyboard connections----------------------------------------------------
    function connectCommandWalk(command, person) {
        if (command === null || person === null)
            return;

        command.startWalking.connect( person.startWalking )
        command.stopWalking.connect( person.stopWalking )
        command.walk.connect( person.walk )
        command.direction.connect( person.direction )
        command.jump.connect( person.jump)
    }

    function disconnectCommandWalk(command, person) {
        if (command === null || person === null)
            return;

        command.startWalking.disconnect( person.startWalking )
        command.stopWalking.disconnect( person.stopWalking )
        command.walk.disconnect( person.walk )
        command.direction.disconnect( person.direction )
        command.jump.disconnect( person.jump)
    }

    function connectCommandFly(command, person) {
        command.startFlying.connect( person.startFlying )
        command.stopFlying.connect( person.stopFlying )
        command.fly.connect( person.fly )
    }

    function disconnectCommandFly(command, person) {
        command.startFlying.disconnect( person.startFlying )
        command.stopFlying.disconnect( person.stopFlying )
        command.fly.disconnect( person.fly )
    }

    function connectSwordAttack(command, sword) {
        command.swordAttack.connect( sword.startAttack )
        command.swordDefenseStart.connect( sword.startDefense )
        command.swordDefenseStop.connect( sword.stopDefense )
    }

    function disconnectSwordAttack(command, sword) {
        command.swordAttack.disconnect( sword.startAttack )
        command.swordDefenseStart.disconnect( sword.startDefense )
        command.swordDefenseStop.disconnect( sword.stopDefense )
    }
    //--Touch and Keyboard connections----------------------------------------------------




    //--leader follower connection-------------------
    function createLeaderFollowerConnection(interfaceWalk, leader, follower) {
        interfaceWalk.leader = leader
        interfaceWalk.follower = follower
        interfaceWalk.connect()
    }

    function deleteLeaderFollowerConnection(interfaceWalk, leader, follower) {
        interfaceWalk.disconnect()
        //interfaceWalk.leader = 0
        //interfaceWalk.follower = 0
    }
    //--leader follower connection-------------------



    //--sword-------------------------------------------
    function createSword(sword, swordHolder, parent) {
        sword = lib.createItem("Sword.qml", parent)
        sword.x = Qt.binding(
                    function(){ return swordHolder.dir === 1 ?
                                    swordHolder.x+swordHolder.width*0.8 : swordHolder.x+swordHolder.width*0.2 } )
        sword.y = Qt.binding(
                    function(){ return swordHolder.y+swordHolder.height*0.4 } )

        sword.direction = Qt.binding(
                    function(){ return swordHolder.dir === 1 ? 1 : -1 } )
        return sword;
    }
    //--sword-------------------------------------------



    //--bow------------------------------------------------
    property var bowObj: null
    function createBow(bowHolder, parent) {
        bowObj = createItem("BowArrow.qml", parent)
        bowObj.x = Qt.binding( function(){ return bowHolder.dir === 1 ?
                                                    bowHolder.x+bowHolder.width*0.5 : bowHolder.x-bowHolder.width *0.9 } )
        bowObj.y = Qt.binding( function(){ return bowHolder.y+bowHolder.height*0.1 } )
        bowObj.isRight = Qt.binding( function(){ return bowHolder.dir === 1 ? true : false } )
        //return bowObj; //delete later
    }

    function destroyBow(){
        if (lib.bowObj !== null){
            bowObj.destroy()
            bowObj = null
        }
    }
    //--bow------------------------------------------------


    //--arrows-----------------------------------------------------
    //todo: delete this function and use the generic createProjectile(...)
    function createArrow(touchX, touchY, bow, screenNumber, screenRow, parentObj) {
        if (timerProjectileFireWait.running === true)
            return;
        //timerProjectileFireWait.running = true // comment to disable arrow waiting

        var arrow = createItem("Projectile.qml", parentObj);
        if (errorCreateObject) {
            console.log("Error creating arrow")
            arrow = null;
            return;
        }

        arrow.imageName = "arrow.png"
        arrow.width = 20*mm
        arrow.height = 20*mm*0.273

        //arrow.setPosXY(bow.x, bow.y + bow.height/2)
        arrow.setMidPosXY(bow.midX, bow.midY)

        touchX = touchX + screenNumber * mainRoot.width
        touchY = touchY + screenRow * mainRoot.height
        arrow.setAngle(touchX - bow.midX, touchY - bow.midY)
        //arrowObj.setAngle(xx- bowArrowObj.midX, yy - bowArrowObj.midY)

        arrow.xMinBulletDestroy = mainRoot.width * screenNumber
        arrow.xMaxBulletDestroy = mainRoot.width * (screenNumber + 1)
        arrow.yMinBulletDestroy = mainRoot.height * screenRow//0
        arrow.yMaxBulletDestroy = mainRoot.height * (screenRow + 1)//mainRoot.height

        return arrow;
    }
    //--arrows-----------------------------------------------------


    /*property alias soundSource: sound.source

    Audio {
        id: sound
        source: "qrc:/sounds/shoot.ogg"
        //"qrc:/images/"+imgName+".png"
        onError: console.log("error play music: "+errorString)
        onPlaying: console.log("start play music")
        onPlaybackStateChanged: console.log("playbackState: "+playbackState)
        onStatusChanged: console.log("status: "+status)
    }*/


    // enable/disable delay between shots fired by hero/girl------------------------------
    property bool projectileShotDelay: true
    property real shootingDelayTime: 1500
    Timer {
        id: timerProjectileFireWait//use a timer to get some delay between arrow shotting
        interval: shootingDelayTime //interval between shoting 2 arrows
        running: false
        repeat: false
        onRunningChanged: console.log("timer running: "+ running)
    }
    // enable/disable delay between shots fired by hero/girl------------------------------

    //--Projetile shot by the hero/girl-----------------------------------------------------
    function createProjectile(touchX, touchY, posX, posY, screenNumber, screenRow, parentObj) {
        if (timerProjectileFireWait.running === true)//dont create projectile if delay time wasnt passed yet
            return null;

        if (projectileShotDelay) {
            timerProjectileFireWait.running = true // comment to disable arrow waiting
            //sound.stop()
            //sound.play()
        }

        var projectileObj = lib.createItem("Projectile.qml", parentObj)
        if (errorCreateObject) {
            console.log("Error creating projectile")
            projectileObj = null;
            return projectileObj;
        }


        //projectileObj.imageName = "arrow.png"
        projectileObj.width = 20*mm
        projectileObj.height = 20*mm*0.273
        projectileObj.setMidPosXY(posX, posY)

        touchX = touchX + screenNumber * mainRoot.width
        touchY = touchY + screenRow * mainRoot.height
        projectileObj.setAngle(touchX - posX, touchY - posY)

        projectileObj.xMinBulletDestroy = mainRoot.width * screenNumber
        projectileObj.xMaxBulletDestroy = mainRoot.width * (screenNumber + 1)
        projectileObj.yMinBulletDestroy = mainRoot.height * screenRow//0
        projectileObj.yMaxBulletDestroy = mainRoot.height * (screenRow + 1)//mainRoot.height

        return projectileObj;
    }
    //--Projetile shot by the hero/girl-----------------------------------------------------



    //--Projetile shot by enemies-----------------------------------------------------
    function createProjectileEnemy(touchX, touchY, posX, posY, screenNumber, screenRow, parentObj) {
        var projectileEnemyObj = lib.createItem("ProjectileEnemy.qml", parentObj)
        if (errorCreateObject) {
            console.log("Error creating projectileEnemy")
            projectileEnemyObj = null;
            return projectileEnemyObj;
        }


        //projectileEnemyObj.imageName = "arrow.png"
        projectileEnemyObj.width = 20*mm
        projectileEnemyObj.height = 20*mm*0.273
        projectileEnemyObj.setMidPosXY(posX, posY)

        touchX = touchX + screenNumber * mainRoot.width
        touchY = touchY + screenRow * mainRoot.height
        projectileEnemyObj.setAngle(touchX - posX, touchY - posY)

        projectileEnemyObj.xMinBulletDestroy = mainRoot.width * screenNumber
        projectileEnemyObj.xMaxBulletDestroy = mainRoot.width * (screenNumber + 1)
        projectileEnemyObj.yMinBulletDestroy = mainRoot.height * screenRow//0
        projectileEnemyObj.yMaxBulletDestroy = mainRoot.height * (screenRow + 1)//mainRoot.height

        return projectileEnemyObj;
    }
    //--Projetile shot by enemies-----------------------------------------------------

}

