import QtQuick 2.3
import QtQuick3D

Node {

    Model {
        source: "#Cube"
        scale: Qt.vector3d(50,5,5)

        materials: PrincipledMaterial {
            cullMode: Material.NoCulling
            baseColorMap: Texture {
                source: "qrc:/images/denWall.png"
                scaleU: 1.0
                scaleV: 1.0
            }
        }

        /*materials: DefaultMaterial {
            diffuseColor: "green"
            cullMode: Material.NoCulling
        }*/
    }

}



/*Node {






    property real width_: 600*1.4
    property real height_: 600

    //front
    Node {
        Item {
            width: width_
            height: height_

            Image{
                anchors.fill: parent
                source: "qrc:/images/denWall.png"
                mipmap: true
            }
        }
    }

    //back
    Node {
        z: -width_
        Item {
            width: width_
            height: height_

            Image{
                anchors.fill: parent
                source: "qrc:/images/denWall.png"
                mipmap: true
            }
        }
    }

    //left ??
    Node {
        z: -width_
        eulerRotation.y: -90
        Item {
            width: width_
            height: height_

            Image{
                anchors.fill: parent
                source: "qrc:/images/denWall.png"
                mipmap: true
            }
        }
    }

    //right
    Node {
        z: -width_
        x: width_
        eulerRotation.y: -90
        Item {
            width: width_
            height: height_

            Image{
                anchors.fill: parent
                source: "qrc:/images/denWall.png"
                mipmap: true
            }
        }
    }

}*/
