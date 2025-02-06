import QtQuick
import QtQuick3D

Node {
    id: tree

    property real yOffset: treeTrunk.scale.y*50-50
//    y: treeTrunk.scale.y*50 - 50

    property alias instancingTreeTrunk: treeTrunk.instancing
    property alias instancingTreeTop1: treeTop1.instancing
    property alias instancingTreeTop2: treeTop2.instancing
    property alias instancingTreeTop3: treeTop3.instancing


    property string colorTreeTop: "#20df50"
    Model {
        id: treeTrunk
        source: "#Cylinder"
        scale: Qt.vector3d(0.4, 2, 0.4)
        materials: [ DefaultMaterial {diffuseColor: "brown"}] 
    }
    Model {
        id: treeTop1
        source: "#Cone"
        y: 100
        scale: Qt.vector3d(2.5, 2, 2.5)
        materials: [ DefaultMaterial {diffuseColor: colorTreeTop}]
        //visible: false
    }
    Model {
        id: treeTop2
        source: "#Cone"
        y: 200
        scale: Qt.vector3d(2, 1.8, 2)
        materials: [ DefaultMaterial {diffuseColor: colorTreeTop}]
        //visible: false
    }
    Model {
        id: treeTop3
        source: "#Cone"
        y: 300
        scale: Qt.vector3d(1.5, 1.3, 1.5)
        materials: [ DefaultMaterial {diffuseColor: colorTreeTop}]
        //visible: false
    }

    Timer {
        id: timer
        interval: 5000
        running: false
        repeat: false
        onTriggered: tree.destroy()
    }

    signal timerRunning()

    onTimerRunning: {
        console.log("timer.running = true")
        timer.running = true
    }

}
