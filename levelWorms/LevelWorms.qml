import QtQuick 2.15
import QtQuick3D
import "../"
import "../assetsmodels/slime"

Item {
    id: root

    View3D {
        id: view3D
        anchors.fill: parent

        SceneEnvironment {
            backgroundMode: SceneEnvironment.Color
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.VeryHigh
            clearColor: "black"
        }

        DirectionalLight {//The light will always be emitted in the direction of the light's Z axis
            //eulerRotation.y: 90
            eulerRotation.x: -60
           // castsShadow: true
           // shadowFactor: 60
        }

        PerspectiveCamera {
            id: cam
            //fieldOfView: 90 //The default value is 60.0
            clipFar: 1e6 //The default value is 10000.0
            clipNear: 1 //The default value is 10.0
            y: 1300
            x: 550
            //x: 100
            eulerRotation.x: -70
            eulerRotation.y: 90

            //camera by default is loking at -z, let's change it to +x, to align it with moveFront +x direction
            //eulerRotation.y: cameraYrotation// rotate camera -90, to align it with +x axis
        }//PerspectiveCamera

        Model {
           // y: -0.5
            source: "#Rectangle"
            scale: Qt.vector3d(100, 100, 1)//scale z has no effect
            eulerRotation.x: -90
            materials: [
                PrincipledMaterial {
                    baseColorMap: Texture {
                        source: "qrc:/images/textures/muxTexture.png"
                        scaleU: 10
                        scaleV: 10
                    }
                }
            ]
        }//Model

        Slime {
            id: slime
            y: -500
            //position: view3D.pos1
            isRunning: root.visible
            property bool isPicked: false
            SequentialAnimation {
                id: anim
                running: root.visible
                loops: Animation.Infinite
                property int dur: 1000
                ScriptAction {
                    script: slime.position = randomPosition()
                }
                NumberAnimation {
                    target: slime
                    property: "y"
                    duration: anim.dur
                    easing.type: Easing.InOutQuad
                    from: -500; to: 0
                }
                NumberAnimation {
                    target: slime
                    property: "y"
                    duration: anim.dur
                    easing.type: Easing.InOutQuad
                    from: 0; to: -500
                }
            }
        }

        MouseArea{
            anchors.fill: parent
            onClicked: function(mouse) {
                var result = view3D.pick(mouse.x, mouse.y);
                if (result.objectHit) {
                    var pickedObject = result.objectHit;
                    console.log("Worm destroyed...............................")
                }
                else {
                    console.log("fail.....")
                }
            }
        }//MouseArea

    }//View3D

    property vector3d pos1: Qt.vector3d(-500, 0, -500)
    property vector3d pos2: Qt.vector3d(-500, 0, 0)
    property vector3d pos3: Qt.vector3d(-500, 0, 500)

    property vector3d pos4: Qt.vector3d(0, 0, -500)
    property vector3d pos5: Qt.vector3d(0, 0, 0)
    property vector3d pos6: Qt.vector3d(0, 0, 500)

    property vector3d pos7: Qt.vector3d(500, 0, -500)
    property vector3d pos8: Qt.vector3d(500, 0, 0)
    property vector3d pos9: Qt.vector3d(500, 0, 500)

    function randomPosition() {
        var pos = lib.randomMinMax(1,9)

        if (pos === 1)
            return pos1;
        if (pos === 2)
            return pos2;
        if (pos === 3)
            return pos3;
        if (pos === 4)
            return pos4;
        if (pos === 5)
            return pos5;
        if (pos === 6)
            return pos6;
        if (pos === 7)
            return pos7;
        if (pos === 8)
            return pos8;
        if (pos === 9)
            return pos9;
        return pos5; //default
    }
}
