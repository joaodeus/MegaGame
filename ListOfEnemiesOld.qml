import QtQuick 2.0

Item {
    id: root

    property alias activeEnemiesList: activeEnemiesList
    property alias count: activeEnemiesList.count

    ListModel {
        id: activeEnemiesList //todo: rename to activeEnemiesList
        //onCountChanged: console.log("number of ballons are: "+count)
    }


    signal clearedLastEnemy()
    signal allEnemiesCleared()

    onClearedLastEnemy: allEnemiesCleared() //when last enemy is cleared, send also allEnemiesCleared() signal

    function addEnemy(enemy) {
        console.log("adding enemy " + enemy.type + " to list, enemy id: "+enemy)
        console.log("Total enemies in list are: "+activeEnemiesList.count)
        activeEnemiesList.append({"obj": enemy})
        //listOfEnemies.append({"obj": enemyTemplate})
    }

    function removeEnemyByID(enemy) {
        //console.log("removing enemy from list: "+enemy)
        var i;
        var count = activeEnemiesList.count;
        for(i = 0 ; i < count; i++) {
            console.log("activeEnemiesList.get(i).obj: "+activeEnemiesList.get(i).obj)
            console.log("enemy: "+enemy)
            if (activeEnemiesList.get(i).obj === enemy) {
                console.log("enemy removed..........................................")
                activeEnemiesList.remove(i,1)
                return;
            }
        }
    }

    //todo: break removeEnemy() in several functions??? removeInactiveEnemy(), removeDestroyedEnemy() ???
    function removeEnemy() {
        //console.log("removing enemies: "+activeEnemiesList.count)
        for(var i = activeEnemiesList.count-1; i >= 0; i--) {

            //remove object if it doenst exist
            if (!activeEnemiesList.get(i).obj) {
                //console.log("removing enemy index : "+ i)
                activeEnemiesList.remove(i,1)

                if (activeEnemiesList.count === 0)
                    clearedLastEnemy()

                return;
                //break;
            }

            //remove object if it is not alive
            if (activeEnemiesList.get(i).obj.alive === false) {
                //console.log("removing enemy index : "+ i)
                activeEnemiesList.get(i).obj.destroy()
                activeEnemiesList.remove(i,1)

                if (activeEnemiesList.count === 0)
                    clearedLastEnemy()

                return;
                //break;
            }

            //remove inactive object
            if (activeEnemiesList.get(i).obj.active === false) {
                //console.log("removing enemy index : "+ i)
                activeEnemiesList.remove(i,1)

                if (activeEnemiesList.count === 0)
                    clearedLastEnemy()

                return;
            }
        }
    }

    function clearEnemies() {
        //console.log("removing all enemies: "+activeEnemiesList.count)
        for(var i = activeEnemiesList.count-1; i >= 0; i--) {
            //console.log("removing enemy at :"+i)
            if (activeEnemiesList.get(i).obj)
                activeEnemiesList.get(i).obj.destroy()
            activeEnemiesList.remove(i,1)
        }
        allEnemiesCleared()
    }

    //for debbuging
    function show() {
        for(var i=0;i < activeEnemiesList.count;i++){
            if (activeEnemiesList.get(i).obj)
                activeEnemiesList.get(i).obj.show() //check this function, for now only works with EnemyTemplate.qml objects
        }
    }

    signal addEnemy1(var enemy)
    onAddEnemy1: {
        activeEnemiesList.append({"obj": enemy})
        console.log("ListOfEnemies.qml signal addEnemy1 count"+activeEnemiesList.count)
    }
}
