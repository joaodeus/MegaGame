import QtQuick 2.3
import QtQuick3D //1.15

Node {
    id: mountain

    //scale: Qt.vector3d(1.5,1,1.5)

    Model {
        source: "#Sphere"
        materials: [ PrincipledMaterial {
                baseColorMap: Texture {
                    //source: "qrc:/images/mountainTexture.png"
                    source: "qrc:/images/textures/mountainTexture.png"
                    scaleU: 1.0
                    scaleV: 1.0
                }
            }
        ]
        /*materials: [ DefaultMaterial {
                diffuseColor: "brown"
            }
        ]*/
        scale: Qt.vector3d(30, 50, 30)
    }


    Model {
        z: 2000
        source: "#Sphere"
        materials: [ DefaultMaterial {
                diffuseColor: "brown"
            }
        ]
        scale: Qt.vector3d(10, 30, 20)
    }

    Model {
        z: -2000
        source: "#Sphere"
        materials: [ DefaultMaterial {
                diffuseColor: "brown"
            }
        ]
        scale: Qt.vector3d(10, 30, 20)
    }
}
