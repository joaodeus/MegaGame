import QtQuick 2.3
import QtQuick3D //1.15

Node {
    id: castle

    //position: Qt.vector3d(0, castleHeight, -1000)

    property real castleWidth: 600*1.4
    property real castleHeight: 600

    //front
    Node {
        Item {
            width: castleWidth
            height: castleHeight

            Image{
                anchors.fill: parent
                source: "qrc:/images/castleFront.png"
                mipmap: true
            }
        }
    }

    //back
    Node {
        z: -castleWidth
        Item {
            width: castleWidth
            height: castleHeight

            Image{
                anchors.fill: parent
                source: "qrc:/images/castleBack.png"
                mipmap: true
            }
        }
    }

    //left ??
    Node {
        z: -castleWidth
        eulerRotation.y: -90
        Item {
            width: castleWidth
            height: castleHeight

            Image{
                anchors.fill: parent
                source: "qrc:/images/castleSides.png"
                mipmap: true
            }
        }
    }

    //right
    Node {
        z: -castleWidth
        x: castleWidth
        eulerRotation.y: -90
        Item {
            width: castleWidth
            height: castleHeight

            Image{
                anchors.fill: parent
                source: "qrc:/images/castleSides.png"
                mipmap: true
            }
        }
    }

}
