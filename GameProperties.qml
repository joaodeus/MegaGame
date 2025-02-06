import QtQuick 2.0

QtObject {

    //property bool releaseMode: true //set false for development mode, true for releasing the app
    property int levelUnlocked: 1//releaseMode ? 100 : 1
    //note that levelUnlocked is overrided with Settings values

    property bool triggerCreateEnemiesSpaceShips: false
    property bool triggerSpace180Rotation: false

}
