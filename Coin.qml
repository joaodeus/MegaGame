import QtQuick 2.3
import QtQuick3D //1.15


Node {
    id: root


    //eulerRotation.y: -90
    Model {
        id: coin
        source: "#Cylinder"
        //source: "#Sphere"
        scale: Qt.vector3d(1, 1, 0.1)
        materials: [ PrincipledMaterial {baseColor: "yellow"}]
    }

    Node {
        z: 10
        Text {
            id: name
            text: qsTr("text")
            font.pointSize: 30
            font.bold: true
            color: "orange"
        }
    }

}
