import QtQuick 2.15
import QtQuick3D //1.15
import Placement 1.0
//import "Placement"
import "./elements"
import "./menuOptions"

Image {
    id: backGround
    signal sigSpace()
    signal sigEarth()
    signal sigViaLactea()
    signal sigViaLacteaDynamic
    signal sigPluto()
    signal sigBadStar()
    signal sigOcean()
    signal sigWorms()
    signal sigOptions()
    signal sigIslandResort()

    source: "qrc:/images/skybox/galaxy5.png"

    Grid {
        id: grid
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: defaultMargins
        spacing: defaultMargins * 2

        columns: (grid.width)/(btn1.width+spacing)

        ButtonA {
            id: btn1
            source: "qrc:/images/spaceshipAlpha.png"
            onClick: backGround.sigSpace()
            width: btnSize
            height: btnSize
        }

        ButtonA {
            source: "qrc:/images/buttons/viaLacteaPlanet.png"
            onClick: backGround.sigViaLactea()
            width: btnSize
            height: btnSize
           // enabled: currentGame.levelUnlocked >= 2
        }

        ButtonA {
            source: "qrc:/images/buttons/viaLacteaPlanet.png"
            onClick: backGround.sigViaLacteaDynamic()
            width: btnSize
            height: btnSize
           // enabled: currentGame.levelUnlocked >= 2
        }


        ButtonA {
            source: "qrc:/images/planetsTextures/planetEarth.png"
            onClick: backGround.sigEarth()
            width: btnSize
            height: btnSize
           // enabled: currentGame.levelUnlocked >= 3
        }

        ButtonA {
            source: "qrc:/images/planetsTextures/planetPluto.png"
            onClick: backGround.sigPluto()
            width: btnSize
            height: btnSize
        }

        ButtonA {
            source: "qrc:/images/planetsTextures/planetPluto.png" //todo: change icon
            onClick: backGround.sigBadStar()
            width: btnSize
            height: btnSize
        }

        ButtonA {
            source: "qrc:/images/buttons/sea.png"
            onClick: backGround.sigOcean()
            width: btnSize
            height: btnSize
        }

        ButtonA {
            source: "qrc:/images/buttons/sea.png"
            onClick: backGround.sigWorms()
            width: btnSize
            height: btnSize
        }

        ButtonA {
            source: "qrc:/images/planetsTextures/planetPluto.png" //todo: change icon
            onClick: backGround.sigIslandResort()
            width: btnSize
            height: btnSize
        }

        ButtonA {
            source: "qrc:/images/buttons/btn_help.png"
            onClick: backGround.sigOptions()
            width: btnSize
            height: btnSize
        }

        ButtonA {
            source: "qrc:/images/buttons/btn_close.png"
            onClick: close () //todo: add a Dialog asking confirmation to quit
            width: btnSize
            height: btnSize
        }

    }//Row

}
