import QtQuick 2.0
import QtQuick3D

//import "../assetsmodels/Arrow_Golden"

import "../../elements"

Bullet_template {
    id: root

    property real scaleBall: 1
    property alias fireballColor: material.diffuseColor

    shotDuration: 500

    Arrow_Golden {
        y: 180
        x: -140
        z: -50
        eulerRotation.x: 90
        eulerRotation.y: -90
    }
}

