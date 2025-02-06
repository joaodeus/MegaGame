import QtQuick 2.0
import QtQuick3D //1.15

Node {

    property color colorBody: "chocolate"
    property color colorEye: "lime"

    Node {
        id: horsy


        Node {
            id: head
            y: 160

            Model {
                id: horseHead
                //y: 190
                x: 70
                eulerRotation.z: -20
                source: "#Sphere"
                scale: Qt.vector3d(1, 0.5, 0.5)
                //castsShadows: true
                materials: DefaultMaterial {
                    diffuseColor: colorBody
                }
            }//horse head

            Model {
                id: rightEye
                y: 20
                x: 70
                z: 20
                source: "#Sphere"
                scale: Qt.vector3d(0.15, 0.25, 0.15)
                //castsShadows: true
                materials: DefaultMaterial {
                    diffuseColor: colorEye
                }
            }//right eye

            Model {
                id: leftEye
                y: rightEye.y
                x: rightEye.x
                z: -rightEye.z
                source: "#Sphere"
                scale: rightEye.scale
                //castsShadows: true
                materials: DefaultMaterial {
                    diffuseColor: colorEye
                }
            }//right eye



            Model {
                id: rightEar
                y: 30
                x: 45
                z: 18
                eulerRotation.x: 10
                eulerRotation.z: 10
                source: "#Sphere"
                scale: Qt.vector3d(0.2, 0.5, 0.2)
                materials: DefaultMaterial {
                    diffuseColor: colorBody
                }
            }//rightEar

            Model {
                id: leftEar
                y: rightEar.y
                x: rightEar.x
                z: -rightEar.z
                eulerRotation.x: -rightEar.eulerRotation.x
                eulerRotation.z: rightEar.eulerRotation.z
                source: "#Sphere"
                scale: rightEar.scale
                materials: DefaultMaterial {
                    diffuseColor: colorBody
                }
            }//rightEar
        }

        Model {
            id: horseBody
            y: 80
            source: "#Sphere"
            scale: Qt.vector3d(1.5, 0.8, 0.8)
            //castsShadows: true
            receivesShadows: true
            materials: DefaultMaterial {
                diffuseColor: colorBody
            }
        }//Body

        //front feet ----------------------------------
        Model {
            id: rightFrontFoot
            source: "#Sphere"
            x: 60
            y: 20
            z: 30
            eulerRotation.z: 15
            //position: Qt.vector3d(1.4,0.05,0.6)
            scale: Qt.vector3d(0.6, 0.2, 0.3)
            //castsShadows: true
            receivesShadows: true
            materials: DefaultMaterial {
                diffuseColor: colorBody
            }
        }

        Model {
            id: leftFrontFoot
            source: "#Sphere"
            x: rightFrontFoot.x
            y: rightFrontFoot.y
            z: -rightFrontFoot.z
            eulerRotation.z: rightFrontFoot.eulerRotation.z
            //position: Qt.vector3d(1.4,0.05,0.6)
            scale: rightFrontFoot.scale
            //castsShadows: true
            receivesShadows: true
            materials: DefaultMaterial {
                diffuseColor: colorBody
            }
        }

        // backfeet --------------------------
        Model {
            id: rightBackFoot
            source: "#Sphere"
            x: -50
            y: rightFrontFoot.y
            z: rightFrontFoot.z
            eulerRotation.z: -rightFrontFoot.eulerRotation.z
            //position: Qt.vector3d(1.4,0.05,0.6)
            scale: rightFrontFoot.scale
            //castsShadows: true
            receivesShadows: true
            materials: DefaultMaterial {
                diffuseColor: colorBody
            }
        }

        Model {
            id: leftBackFoot
            source: "#Sphere"
            x: rightBackFoot.x
            y: rightFrontFoot.y
            z: -rightFrontFoot.z
            eulerRotation.z: -rightFrontFoot.eulerRotation.z
            //position: Qt.vector3d(1.4,0.05,0.6)
            scale: rightFrontFoot.scale
            //castsShadows: true
            receivesShadows: true
            materials: DefaultMaterial {
                diffuseColor: colorBody
            }
        }

    }//horse
}
