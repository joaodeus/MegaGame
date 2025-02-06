import QtQuick //2.15
import QtQuick3D
import OceanEffect 1.0
import "../elements"

Node {

    property bool oceanMovement: false
    property alias distanceX: ocean.distanceX
    property alias distanceZ: ocean.distanceZ
    property alias delta: ocean.delta
    property alias w: ocean.w
    property alias amplitude: ocean.amplitude

    Model {
        id: modelLine
         geometry: OceanEffect {
             id: ocean
         }
         materials: DefaultMaterial {
             id: material
             //diffuseColor: "orange"
             //lighting: DefaultMaterial.FragmentLighting //DefaultMaterial.NoLighting
             lighting: DefaultMaterial.NoLighting
         }
        /*materials: PrincipledMaterial {
             id: material
             baseColor: line.isPicked ? "blue" : "red"
             lighting: PrincipledMaterial.NoLighting
         }*/
         pickable: true
         property bool isPicked: false
        // Component.onCompleted: timerWaves.start()
     }

    TimerFrameAnimation {
        id: timerWaves
        //interval: fps_ms
        running: oceanMovement
        //repeat: true
        onTriggered: {
            ocean.t = ocean.t+0.05
            console.log("ocean.t: "+ocean.t)

        }
    }

}
