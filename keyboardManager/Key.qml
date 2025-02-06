import QtQuick //2.0
import "../elements"

Item {

    property int value;
    property int value2;//hack to allow set 2 keys to the same action

    property bool keyIsPressed: false


    signal keysPressed(var key)
    signal keysReleased(var key)

    signal pressed()
    signal released()
    signal isPressed()

    //onPressed: console.log("key "+ value + " is pressed..............")

    onKeysPressed: function(key) {
        //console.log("onKeysPressed: is "+key + " value is: "+ value)
        if (key === value || key === value2) { pressed(); keyIsPressed = true; return true }
        return false;
    }

    onKeysReleased: function(key) {
        if (key === value || key === value2) { released(); keyIsPressed = false; return true }
        return false;
    }


    TimerFrameAnimation {
        id: timer
        //interval: fps_ms
        running: keyIsPressed
        //repeat: true
        onTriggered: {
            isPressed()
        }
    }

}
