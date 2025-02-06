import QtQuick 2.0

import "level001Space"
import "levelBadStar"
import "levelViaLactea"
import "levelPluton"
import "levelOcean"
import "levelWorms"
import "levelResortIsland"
import "menuOptions"

Item {
    id: root

    state: "stateSplashScreen" // default state
    //state: "stateLevelIslandResort"

    states: [
        State {
            name: "stateGameMenu"
            PropertyChanges { target: gameMenu; opacity: 1 }
        },
        State {
            name: "stateSplashScreen"
            PropertyChanges { target: splashScreen; opacity: 1 }
        },
        State {
            name: "stateSpace3DIntro"
            PropertyChanges { target: levelSpaceIntro; opacity: 1 }
        },
        State {
            name: "stateSpace3D"
            PropertyChanges { target: spaceView; opacity: 1 }
        },
        State {
            name: "statePlanetEarth"
            PropertyChanges { target: planet; opacity: 1 }
        },
        State {
            name: "stateViaLacteaPlanet"
            PropertyChanges { target: viaLactea; opacity: 1 }
        },
        State {
            name: "stateViaLacteaPlanetDynamic"
            PropertyChanges { target: viaLacteaDynamic; opacity: 1 }
        },
        State {
            name: "statePlanetPluto"
            PropertyChanges { target: planetPluto; opacity: 1 }
        },
        State {
            name: "stateLevelEvilStar"
            PropertyChanges { target: levelBadStar; opacity: 1 }
        },
        State {
            name: "stateLevelOcean"
            PropertyChanges { target: levelOcean; opacity: 1 }
        },
        State {
            name: "stateLevelWorms"
            PropertyChanges { target: levelWorms; opacity: 1 }
        },
        State {
            name: "stateLevelIslandResort"
            PropertyChanges { target: levelIslandResort; opacity: 1 }
        },
        State {
            name: "stateOptions"
            PropertyChanges { target: menuOptions; opacity: 1 }
        }
    ]

    transitions: [
        Transition {
            //NumberAnimation { property: "opacity"; easing.type: Easing.InOutQuad; duration: 4500  }
            NumberAnimation { property: "opacity"; duration: 1000  }
        }
    ]

    GameMenu {
        id: gameMenu
        anchors.fill: parent
        opacity: 0
        visible: opacity
        onSigSpace: root.state = "stateSpace3DIntro"
        onSigEarth: root.state = "statePlanetEarth"
        onSigViaLactea: root.state = "stateViaLacteaPlanet"
        onSigViaLacteaDynamic: root.state = "stateViaLacteaPlanetDynamic"
        onSigPluto: root.state = "statePlanetPluto"
        onSigBadStar: root.state = "stateLevelEvilStar"
        onSigOcean: root.state = "stateLevelOcean"
        onSigWorms: root.state = "stateLevelWorms"
        onSigIslandResort: root.state = "stateLevelIslandResort"
        onSigOptions: root.state = "stateOptions"
    }

    SplashScreen {
        id: splashScreen
        anchors.fill: parent
        opacity: 0
        visible: opacity
        enabled: visible
        onExit: root.state = "stateGameMenu"
    }


    LevelSpaceIntro {
        id: levelSpaceIntro
        anchors.fill: parent
        opacity: 0
        visible: opacity
        enabled: visible
        onExit: root.state = "stateSpace3D"
    }

    //LevelSpace {
    LevelSpace {
        id: spaceView
        anchors.fill: parent
        opacity: 0
        visible: opacity
        enabled: visible
        onLandInBadStar: root.state = "stateLevelEvilStar"
        onLandInEarth: root.state = "statePlanetEarth"
        onLandInPlanetMilkyWay: root.state = "stateViaLacteaPlanet"
        onLandInPluto: root.state = "statePlanetPluto"
        onClick: root.state = "stateGameMenu"
    }

    property alias planet: planet
    PlanetView {
        id: planet
        anchors.fill: parent
        opacity: 0
        visible: opacity
        enabled: visible
        onClick: root.state = "stateGameMenu"
        onClickFlyToSpace: root.state = "stateSpace3D"
    }

    ViaLacteaPlanet {
        id: viaLactea
        anchors.fill: parent
        opacity: 0
        visible: opacity
        enabled: visible
        onClick: root.state = "stateSpace3D"
    }

    Item {
        id: viaLacteaDynamic
        anchors.fill: parent
        opacity: 0
        visible: opacity
       // enabled: visible
        signal sigClick()

        property var planetViaLactea

        onSigClick: {
            root.state = "stateSpace3D"
        }

        onVisibleChanged: {
            if (visible){
                viaLacteaDynamic.planetViaLactea = lib.createItem("qrc:/levelViaLactea/ViaLacteaPlanet.qml", root)
                viaLacteaDynamic.planetViaLactea.anchors.fill = parent
                viaLacteaDynamic.planetViaLactea.onClick.connect(sigClick)
            }
            else
            {
               // viaLacteaDynamic.planetViaLactea.onClick.disconnect(sigClick)
                viaLacteaDynamic.planetViaLactea.destroy()
            }

        }
    }

    PlanetPluto {
        id: planetPluto
        anchors.fill: parent
        opacity: 0
        visible: opacity
        enabled: visible
        onClick: root.state = "stateGameMenu"
        //onClickFlyToSpace: root.state = "stateSpace3D"
    }

    LevelBadStar {
        id: levelBadStar
        anchors.fill: parent
        opacity: 0
        visible: opacity
        enabled: visible
        onClick: root.state = "stateGameMenu"
    }

    LevelOcean {
        id: levelOcean
        anchors.fill: parent
        opacity: 0
        visible: opacity
        enabled: visible
        onClick: root.state = "stateGameMenu"
    }

    LevelWorms {
        id: levelWorms
        anchors.fill: parent
        opacity: 0
        visible: opacity
        enabled: visible
    }

    IslandResort {
        id: levelIslandResort
        anchors.fill: parent
        opacity: 0
        visible: opacity
        enabled: visible
        onClick: root.state = "stateGameMenu"
    }

    property alias menuOptions: menuOptions
    MenuOptions {
        id: menuOptions
        anchors.fill: parent
        opacity: 0
        visible: opacity
        enabled: visible
        onClick: root.state = "stateGameMenu"
    }

}
