import QtQuick 2.15
import QtQuick.Window 2.15
import QtMultimedia

import Qt.labs.settings 1.0 //to remove from Qt6.5
import QtCore

import "keyboardManager"
import "libraries"

Window {
    id: mainRoot
    width: 800//1920
    height: 600//1024
    visible: true
    //visibility: Qt.WindowFullScreen //Qt.WindowMaximized
    //visibility: Qt.WindowMaximized

    title: qsTr("Mega Epic Galactic Adventures")

    Component.onCompleted: {
        (Qt.platform.os === "windows" || Qt.platform.os === "linux" || Qt.platform.os === "osx" ) ?
                                           show() : showFullScreen()
        //showMaximized() same as visibility: Qt.WindowMaximized
        //showFullScreen()
    }

    property real calibrationFactor: Qt.platform.os === "android"  || Qt.platform.os === "ios" ?
                                         1 : 1
    //property real calibrationFactor: 0.4 //sailfish OS

    property real mm: Screen.pixelDensity * calibrationFactor
    //intex aqua fish: 294 dpi = 11.58 dots per milimeter
    //inch = 25.4mm
    //property real mm: 11.58 * calibrationFactor // for sailfish OS

    /*property real btnSize: 20 * mm
    property real defaultMargins: 2 * mm
    property int fps_ms: 1000/fps*/
    property real btnSize: 8*mm//15 * mm
    property real btnSize2: 12*mm//20 * mm
    property real textSize: 4*mm//6 * mm
    property real textSizeDebug: (Qt.platform.os === "windows" || Qt.platform.os === "linux" || Qt.platform.os === "osx" ) ?
                                   7*mm : 3*mm
    property real defaultMargins: 2 * mm
    property int fps: 60//parseInt(levelStates.menuOptions.textInput_fps)  //120//165
    property int fps_ms: 1000/fps
    onFpsChanged: console.log("fps: "+fps)

    property bool showSkybox: Qt.platform.os === "android" ? false : true
    //property bool showSkybox: false

    property bool showAssets: true

    //check performance between Timer and FrameAnimation, see TimerFrameAnimation component
    property bool useFrameAnimation: levelStates.menuOptions.checkBoxUseFrameAnimation

    LevelStates {
        id: levelStates
        anchors.fill: parent
    }

    property var currentGame: game1
    GameProperties {
        id: game1
    }
    GameProperties {
        id: game2
    }
    GameProperties {
        id: game3
    }


    /*CommandKeyboard {
        id: commandKeyb
        focus: levelStates.planet.visible
    }*/

    //property alias keyb: keyb
    /*CommandKeyboard2{
        id: keyb2
        focus: levelStates.spaceView.visible
        onSigShoot: console.log("shoot fired......................")
    }*/

    MyLibrary{
        id: lib
    }

    ListOfEnemies {
        id: listOfEnemies
    }

    /*MediaPlayer {
        id: soundShots
        source: "qrc:/sounds/SpaceLaserShot.wav"
        audioOutput: AudioOutput {
            volume: levelStates.optionsMenu.sliderVolumeControl.value
        }
    }*/


    Settings {
        id: settings
        property real soundVolume: 1
        //property int fps
      //  property alias soundVolume: mainRoot.levelStates.optionsMenu.sliderVolumeControl.value
    }
    Component.onDestruction: {
        settings.soundVolume = levelStates.menuOptions.volumeValue
       // settings.fps = levelStates.menuOptions.textInput_fps
    }

    //SoundEffect {
    MediaPlayer {
        id: soundShots
        audioOutput: AudioOutput {}
        source: "qrc:/sounds/SpaceLaserShot.wav"
        //volume: levelStates.menuOptions.volumeValue
        //Component.onCompleted: backgroundMusic.play()
    }


    SoundEffect {
        id: arrowShots
        source: "qrc:/sounds/arrowSound.wav"
        volume: levelStates.menuOptions.volumeValue
        //Component.onCompleted: backgroundMusic.play()
    }

    SoundEffect {
        id: fireBallShots
        source: "qrc:/sounds/fireBallShot.wav"
        volume: levelStates.menuOptions.volumeValue
        //Component.onCompleted: backgroundMusic.play()
    }


    MediaPlayer {
    //SoundEffect {
        id: backgroundMusic
        audioOutput: AudioOutput {}
        loops: SoundEffect.Infinite
        source: "qrc:/sounds/backgroundMusic.wav"
        //volume: levelStates.menuOptions.volumeValue
        //Component.onCompleted: backgroundMusic.play()
    }

}
