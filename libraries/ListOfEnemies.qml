import QtQuick 2.0

QtObject {

    property var listOfEnemies: []

    //signal addEnemy(enemy: var)
    signal enemyDestroyed()

    signal destroyAll()

    /*onAddEnemy: function(enemy){
        listOfEnemies.push(enemy)
    }*/

    onEnemyDestroyed: {
        console.log("enemy destroyed, list length: "+listOfEnemies.lenght)
        for(var i=listOfEnemies.lenght; i>=0;i--){
            if (listOfEnemies[i].energy <= 0){
                listOfEnemies[i].destroy
                listOfEnemies.splice(i,1)
            }
        }//for
        console.log("enemy destroyed, list length: "+listOfEnemies.lenght)
    }//onEnemyDestroyed

    onDestroyAll: {
        for(var i=listOfEnemies.lenght; i>=0;i--){
            listOfEnemies[i].destroy
            listOfEnemies.splice(i,1)
        }//for

    }

    function addEnemy(enemy){
        listOfEnemies.push(enemy)
    }

}
