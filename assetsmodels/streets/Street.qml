import QtQuick
import QtQuick3D

import "Street_Deadend"
import "Street_Straight"
import "Street_Curve"
import "Street_4Way_2"

Node {

    scale: Qt.vector3d(10,0.5, 10)

    Street_Deadend {
        eulerRotation.y: 180

    }

    Street_Straight {
       // eulerRotation.y: -90
        x: 200
    }

    Street_Curve{
        x: 200*2
        eulerRotation.y: -90
    }
    Street_Curve{
        x: 200*2
        z: 200
        eulerRotation.y: 90
    }

    Street_Straight {
       x: 200*3
       z: 200
    }
    Street_Curve{
        x: 200*4
        z: 200
        eulerRotation.y: 180
    }
    Street_Curve{
        x: 200*4
        //z: 200
        eulerRotation.y: 0
    }
    Street_Straight {
       // eulerRotation.y: -90
        x: 200*5
    }

    Street_4Way_2{
        x: 200*6
    }

    Street_Straight {
       // eulerRotation.y: -90
        x: 200*7
    }

    //end
    Street_Deadend {
        x: 200*8
    }

    //right branch
    Street_Straight {
        eulerRotation.y: 90
        x: 200*6
        z: 200
    }


}
