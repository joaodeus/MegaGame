import QtQuick 2.0

Item {
    property vector3d pathCenter;
    property real pathRadius;
    property real pathHeight;

    function chekPath(pos){
        var dist = qSqrt( qPow( pos.x - pathCenter.x,2 )
                           + qPow( pos.z - pathCenter.z,2 ) );
        if ( dist < pathRadius && pos.y >=  pathCenter.y && ( pos.y <= (pathCenter.y + pathHeight )  ) )
            return true;
        return false;
    }
}
