import QtQuick 2.3
import QtQuick3D //1.15

Node {
    id: trackPlaceHolder
    position: Qt.vector3d(0, 0, 0)
    eulerRotation.x: -90
    property real trackWidth: 300 * mm

    Grid {
        columns: 3


        Item { //1
            width: trackWidth
            height: trackWidth
            Image{
                anchors.fill: parent
                source: "qrc:/images/trackRound03.png"
            }
        }

        Item { //2
            width: trackWidth
            height: trackWidth
            x: trackWidth
            Image{
                anchors.fill: parent
                source: "qrc:/images/trackRound04.png"
            }
        }

        Item { //3
            width: trackWidth
            height: trackWidth
            x: 2*trackWidth
            Image{
                anchors.fill: parent
                source: "qrc:/images/trackHorizontal.png"
            }
        }

        Item { //4
            width: trackWidth
            height: trackWidth
            x: 3*trackWidth
            Image{
                anchors.fill: parent
                source: "qrc:/images/trackRound02.png"
            }
        }


        Item { //5
            width: trackWidth
            height: trackWidth
            x: 3*trackWidth
            Image{
                anchors.fill: parent
                source: "qrc:/images/trackCross.png"
            }
        }

        Item { //6
            width: trackWidth
            height: trackWidth
            x: trackWidth
            Image{
                anchors.fill: parent
                source: "qrc:/images/trackRound04.png"
            }
        }

        Item { //7
            width: trackWidth
            height: trackWidth
            x: 2*trackWidth
            Image{
                anchors.fill: parent
                source: "qrc:/images/trackHorizontal.png"
            }
        }

        Item { //8
            width: trackWidth
            height: trackWidth
            x: 3*trackWidth
            Image{
                anchors.fill: parent
                source: "qrc:/images/trackRound02.png"
            }
        }

        Item { //9
            width: trackWidth
            height: trackWidth
            x: 3*trackWidth
            Image{
                anchors.fill: parent
                source: "qrc:/images/trackRound01.png"
            }
        }
    }

}
