import QtQuick 2.3
import QtQuick3D //1.15

Node {
    id: cloud

    scale: Qt.vector3d(1.5,1,1.5)

    property color colorCloud: "white"

    Model {
        source: "#Sphere"
        materials: [ DefaultMaterial {
                diffuseColor: colorCloud
            }
        ]
         scale: Qt.vector3d(2, 2, 2)
    }

    Model {
        id: cloud1
        x:140
        source: "#Sphere"
        materials: [ DefaultMaterial {
                diffuseColor: colorCloud
            }
        ]
        scale: Qt.vector3d(1.5, 1.5, 1.5)
    }

    Model {
        x:-140
        source: "#Sphere"
        materials: [ DefaultMaterial {
                diffuseColor: colorCloud
            }
        ]
        scale: Qt.vector3d(1.5, 1.5, 1.5)
    }
/*
    Model {
        id: cloud2
        x:250
        source: "#Sphere"
        materials: [ PrincipledMaterial {
                baseColorMap: Texture {
                    source: "qrc:/images/cloudTexture.png"
                    scaleU: 1.0
                    scaleV: 1.0
                }
            }
        ]
        property real sc: 1
        scale: Qt.vector3d(1.5, 1, 1)
    }

    Model {
        id: cloud3
        x:-250
        source: "#Sphere"
        materials: [ PrincipledMaterial {
                baseColorMap: Texture {
                    source: "qrc:/images/cloudTexture.png"
                    scaleU: 1.0
                    scaleV: 1.0
                }
            }
        ]
        property real sc: 1
        scale: Qt.vector3d(1.5, 1, 1)
    }
*/

}
