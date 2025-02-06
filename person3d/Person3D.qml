import QtQuick 2.3
import QtQuick3D //1.15

Node {

    //property real bodyDistance: 0.45
    //property real bodyThickness: 0.15

    property bool male: true// true: male, false: female

    y: (body.distance*50 + legRight.distance*100 + legRight.thickness*50)*scale.y

    property real headSize: 0.2
    property real skirtSize: 0.2

    Model {
        id: head
        source: "#Sphere"
        y: body.distance*50 + headSize*50 + body.thickness*25//50
        scale: Qt.vector3d(headSize, headSize, headSize)
        eulerRotation.y: 90
        /*materials: DefaultMaterial {
            diffuseColor: "white"
        }*/
        materials: [ PrincipledMaterial {
            baseColorMap: Texture {
                source: male ? "qrc:/person3d/SEMFace.png" : "qrc:/person3d/GirlFace.png"
                scaleU: 1.0
                scaleV: 1.0
                magFilter: Texture.Linear
            }
        }]
    }

    Tube {
        id: body
        distance: 0.28
        thickness: 0.1
        //z: -thickness*100
        y: distance*50
        //nodeColor: "black"
        bottomVisible: false
        //cube: true
    }

    Model {
        id: skirt//for female
        source: "#Cone"
        y: -body.distance*80
        scale: Qt.vector3d(0.3, 0.3, 0.3)
        materials: DefaultMaterial {
            diffuseColor: "red"
        }
        visible: !male
    }

    Tube {
        id: armLeft
        distance: 0.25
        z: -body.thickness*50 - thickness*50
        y: body.distance*50
        eulerRotation.z: -30
    }

    Tube {
        id: armRight
        distance: 0.25
        z: body.thickness*50 + thickness*50
        y: body.distance*50
        eulerRotation.z: 30
    }


    Tube {
        id: legRight
        z: body.thickness*50 - thickness*50
        y: -body.distance*50
        eulerRotation.z: -20
        //nodeColor: "blue"
    }

    Tube {
        id: legLeft
        z: -body.thickness*50 + thickness*50
        y: -body.distance*50
        eulerRotation.z: 20
        //nodeColor: "blue"
    }

}
