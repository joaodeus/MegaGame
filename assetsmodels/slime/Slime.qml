import QtQuick
import QtQuick3D
import QtQuick.Timeline

Node {
    // Materials
    DefaultMaterial {
        id: body_material
        diffuseColor: "#ff36a31d"
    }
    DefaultMaterial {
        id: eyes_material
        diffuseColor: "#ff030303"
    }
    // end of Materials

    Node {
        id: rootNode
        Node {
            id: armature
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            Skeleton {
                id: qmlskeleton
                Joint {
                    id: root
                    rotation: Qt.quaternion(0.707107, 0.707107, 8.42937e-08, 8.42937e-08)
                    index: 0
                    skeletonRoot: qmlskeleton
                    Joint {
                        id: body
                        y: 0.407887
                        index: 1
                        skeletonRoot: qmlskeleton
                        Joint {
                            id: neck
                            y: 0.437564
                            rotation: Qt.quaternion(0.974979, -0.0627444, 0.00212883, -0.213248)
                            scale.x: 1
                            index: 2
                            skeletonRoot: qmlskeleton
                            Joint {
                                id: head
                                x: -0.14818
                                y: 0.38867
                                z: 0.0516637
                                rotation: Qt.quaternion(0.70791, 0.100834, -0.698956, 0.0125016)
                                scale.y: 1
                                index: 3
                                skeletonRoot: qmlskeleton
                                Joint {
                                    id: rightEye
                                    x: 0.727946
                                    y: 0.296123
                                    z: -0.2769
                                    rotation: Qt.quaternion(0.700678, 0.095131, 0.700678, 0.095131)
                                    index: 4
                                    skeletonRoot: qmlskeleton
                                    Joint {
                                        id: rightEye_end
                                        y: 0.270553
                                        index: 5
                                        skeletonRoot: qmlskeleton
                                    }
                                }
                                Joint {
                                    id: leftEye
                                    x: -0.727946
                                    y: 0.296122
                                    z: -0.2769
                                    rotation: Qt.quaternion(0.700678, 0.0951309, 0.700678, 0.0951309)
                                    index: 6
                                    skeletonRoot: qmlskeleton
                                    Joint {
                                        id: leftEye_end
                                        y: 0.255159
                                        index: 7
                                        skeletonRoot: qmlskeleton
                                    }
                                }
                            }
                        }
                        Joint {
                            id: shoulder_L
                            x: -0.0133159
                            y: 0.248814
                            z: -1.02654
                            rotation: Qt.quaternion(0.98171, -0.190384, 0, 0)
                            scale.y: 1
                            scale.z: 1
                            index: 8
                            skeletonRoot: qmlskeleton
                            Joint {
                                id: lowerArm_L
                                y: 0.273606
                                z: -2.98023e-08
                                rotation: Qt.quaternion(0.964134, -0.265415, 0, 0)
                                index: 9
                                skeletonRoot: qmlskeleton
                                Joint {
                                    id: hand_L
                                    x: 3.12961e-10
                                    y: 0.218949
                                    z: -4.84288e-08
                                    rotation: Qt.quaternion(0.990613, 0.136699, 0, 0)
                                    index: 10
                                    skeletonRoot: qmlskeleton
                                    Joint {
                                        id: hand_L_end
                                        y: 0.289401
                                        index: 11
                                        skeletonRoot: qmlskeleton
                                    }
                                }
                            }
                        }
                        Joint {
                            id: shoulder_R
                            x: -0.0133158
                            y: 0.248814
                            z: 1.03687
                            rotation: Qt.quaternion(0.98171, 0.190384, -9.76722e-08, -3.33882e-09)
                            scale.y: 1
                            scale.z: 1
                            index: 12
                            skeletonRoot: qmlskeleton
                            Joint {
                                id: lowerArm_R
                                x: -7.04002e-10
                                y: 0.273606
                                z: -2.72318e-08
                                rotation: Qt.quaternion(0.964134, 0.265415, -4.71922e-08, -3.99652e-08)
                                index: 13
                                skeletonRoot: qmlskeleton
                                Joint {
                                    id: hand_R
                                    x: -1.69791e-10
                                    y: 0.218949
                                    z: 5.56479e-08
                                    rotation: Qt.quaternion(0.990613, -0.136699, 7.15703e-08, 1.65524e-08)
                                    index: 14
                                    skeletonRoot: qmlskeleton
                                    Joint {
                                        id: hand_R_end
                                        y: 0.289401
                                        index: 15
                                        skeletonRoot: qmlskeleton
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        Model {
            id: slime
            pickable: true
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            skeleton: qmlskeleton
            inverseBindPoses: [
                Qt.matrix4x4(1, 2.38419e-07, 3.88433e-14, 0, 0, -1.62921e-07, 1, 0, 2.38419e-07, -1, -1.62921e-07, 0, 0, 0, 0, 1),
                Qt.matrix4x4(1, 0, 0, 0, 0, -1.62921e-07, 1, -0.407887, 0, -1, -1.62921e-07, 0, 0, 0, 0, 1),
                Qt.matrix4x4(0.909041, -0.022609, -0.416092, 0.351786, 0.415558, 0.123257, 0.901177, -0.761901, 0.0309114, -0.992117, 0.121441, -0.102672, 0, 0, 0, 1),
                Qt.matrix4x4(2.39437e-07, -1, -2.40512e-07, 9.3574e-08, 0.266625, -1.60183e-07, 0.9638, -1.22547, -0.9638, -2.97484e-07, 0.266625, -0.309537, 0, 0, 0, 1),
                Qt.matrix4x4(1, 4.59648e-08, 1.0889e-14, -0.374239, -2.98023e-08, -2.75921e-07, 1, -1.47522, 4.47631e-08, -1, -2.36898e-07, -0.727946, 0, 0, 0, 1),
                Qt.matrix4x4(),
                Qt.matrix4x4(1, 5.0703e-08, -2.98023e-08, -0.37424, 1.19209e-07, -2.30849e-07, 1, -1.47522, 4.47632e-08, -1, -2.36898e-07, 0.727946, 0, 0, 0, 1),
                Qt.matrix4x4(),
                Qt.matrix4x4(1, 0, 0, 0.0133159, 0, 0.373804, 0.927508, -0.992819, 0, -0.927508, 0.373804, 0.706645, 0, 0, 0, 1),
                Qt.matrix4x4(1, -2.94923e-10, -2.24398e-10, 0.0133159, 3.70587e-10, 0.795828, 0.605522, -1.44965, 1.13687e-17, -0.605522, 0.795828, -0.0410593, 0, 0, 0, 1),
                Qt.matrix4x4(1, -4.59791e-11, -6.09723e-11, 0.0133159, 7.63655e-11, 0.602092, 0.798427, -1.61736, 2.84217e-18, -0.798427, 0.602092, 0.412384, 0, 0, 0, 1),
                Qt.matrix4x4(),
                Qt.matrix4x4(1, -1.905e-07, -4.3746e-08, 0.0133157, -3.0635e-08, -0.373804, 0.927508, -0.996683, -1.93043e-07, -0.927508, -0.373804, -0.716232, 0, 0, 0, 1),
                Qt.matrix4x4(1, -2.17055e-07, -1.64544e-07, 0.0133157, -7.31038e-08, -0.795829, 0.605522, -1.45788, -2.6238e-07, -0.605522, -0.795829, 0.0348004, 0, 0, 0, 1),
                Qt.matrix4x4(1, -1.3898e-07, -4.00871e-08, 0.0133157, -5.16722e-08, -0.602092, 0.798426, -1.62358, -1.35102e-07, -0.798426, -0.602092, -0.420637, 0, 0, 0, 1),
                Qt.matrix4x4()
            ]
            source: "meshes/slime.mesh"
            materials: [
                body_material,
                eyes_material
            ]
        }
    }

    property alias isRunning: timeLineAnim.running
    Timeline {
        id: timeline0
        startFrame: 0
        endFrame: 625
        currentFrame: 0
        enabled: true
        animations: [
            TimelineAnimation {
                id: timeLineAnim
                duration: 625
                from: 0
                to: 625
                running: false
                loops: Animation.Infinite
            }
        ]

        KeyframeGroup {
            target: hand_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990613, -0.136699, 7.15703e-08, 1.65524e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.989118, -0.146643, -0.00583619, -0.0103293)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.98321, -0.176217, -0.0233092, -0.041254)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.969813, -0.221353, -0.050324, -0.0890662)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.948133, -0.271824, -0.0810639, -0.143471)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.923512, -0.314861, -0.107762, -0.190723)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.904763, -0.342017, -0.124864, -0.22099)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.897998, -0.350964, -0.130544, -0.231044)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.903192, -0.344131, -0.126204, -0.223362)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.917953, -0.323318, -0.113066, -0.200109)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.938777, -0.289436, -0.0919324, -0.162707)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.959827, -0.246748, -0.0657177, -0.116311)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.975877, -0.203127, -0.0393635, -0.0696676)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.985267, -0.167103, -0.0179055, -0.0316902)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.989492, -0.144303, -0.00446106, -0.00789555)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.990613, -0.136699, 7.15703e-08, 1.65524e-08)
            }
        }

        KeyframeGroup {
            target: hand_R
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: lowerArm_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.964134, -0.265415, 0, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.964329, -0.264444, 0.00694504, -0.00954132)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.964108, -0.261338, 0.0275968, -0.0379133)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.96144, -0.25594, 0.0592248, -0.0813649)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.954979, -0.248883, 0.095024, -0.130547)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.946305, -0.241897, 0.12621, -0.173391)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.939152, -0.236959, 0.14635, -0.201061)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.936483, -0.235231, 0.153084, -0.210312)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.938536, -0.236555, 0.147937, -0.20324)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.944225, -0.240406, 0.132437, -0.181946)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.951802, -0.246141, 0.107694, -0.147953)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.958665, -0.252532, 0.0771579, -0.106002)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.96286, -0.258219, 0.0464255, -0.0637808)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.964303, -0.262331, 0.0212303, -0.0291669)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.964295, -0.264676, 0.00531095, -0.00729638)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.964134, -0.265415, 0, 0)
            }
        }

        KeyframeGroup {
            target: lowerArm_L
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: hand_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990613, 0.136699, 0, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.990046, 0.139684, 0.0106322, -0.0135658)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.986523, 0.148387, 0.04253, -0.0542644)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.975618, 0.161116, 0.0919338, -0.117299)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.954981, 0.174429, 0.14803, -0.188873)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.929761, 0.184883, 0.196396, -0.250583)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.909943, 0.190992, 0.227093, -0.289749)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.902713, 0.192915, 0.237228, -0.302681)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.908267, 0.191451, 0.229486, -0.292804)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.923925, 0.186829, 0.205943, -0.262765)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.945544, 0.178815, 0.167773, -0.214063)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.966392, 0.167946, 0.12006, -0.153186)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.980849, 0.156062, 0.0718875, -0.0917219)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.987906, 0.145734, 0.0326566, -0.0416669)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.990207, 0.138984, 0.00812586, -0.0103679)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.990613, 0.136699, 0, 0)
            }
        }

        KeyframeGroup {
            target: hand_L
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: lowerArm_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.964134, 0.265415, -4.71922e-08, -3.99652e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.964986, 0.262063, -0.00521947, -0.00992143)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.966733, 0.25188, -0.0207413, -0.0394263)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.967122, 0.235651, -0.0445191, -0.0846247)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.964182, 0.216342, -0.0714461, -0.135809)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.958624, 0.198686, -0.0949183, -0.180426)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.953507, 0.186856, -0.110087, -0.20926)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.951522, 0.182824, -0.11516, -0.218904)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.953052, 0.18591, -0.111282, -0.211531)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.957172, 0.195064, -0.0996078, -0.18934)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.962266, 0.209264, -0.0809803, -0.153932)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.966103, 0.226105, -0.0580057, -0.110261)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.967299, 0.242312, -0.0348956, -0.0663316)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.966319, 0.255054, -0.015956, -0.0303301)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.964797, 0.262855, -0.0039914, -0.00758704)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.964134, 0.265415, -4.71922e-08, -3.99652e-08)
            }
        }

        KeyframeGroup {
            target: lowerArm_R
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: body
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.407887, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-0.0456659, 0.424055, 0)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-0.143385, 0.490543, 0)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-0.189051, 0.605012, 0)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-0.064858, 0.793585, 0)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0.259998, 1.06324, 0)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0.584854, 1.29017, 0)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0.709047, 1.37087, 0)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0.684442, 1.33745, 0)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0.610997, 1.2377, 0)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0.495373, 1.08067, 0)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(0.354524, 0.889378, 0)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(0.213675, 0.698086, 0)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(0.0980502, 0.541052, 0)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(0.0246054, 0.441304, 0)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(0, 0.407887, 0)
            }
        }

        KeyframeGroup {
            target: body
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, 0, -1.19209e-07, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.998951, 5.45939e-09, -1.19084e-07, 0.0457967)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.989661, 1.70974e-08, -1.17977e-07, 0.143423)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.981899, 2.25791e-08, -1.17051e-07, 0.189407)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.993292, 1.37848e-08, -1.1841e-07, 0.115635)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.995756, -1.09707e-08, -1.18703e-07, -0.0920288)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.955562, -3.51416e-08, -1.13912e-07, -0.294789)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.930771, -4.35833e-08, -1.10957e-07, -0.365603)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.935352, -4.21665e-08, -1.11503e-07, -0.353718)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.948222, -3.78618e-08, -1.13037e-07, -0.317608)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.965849, -3.08879e-08, -1.15138e-07, -0.259106)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.98257, -2.21605e-08, -1.17131e-07, -0.185895)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.993743, -1.33142e-08, -1.18463e-07, -0.111687)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.998703, -6.06848e-09, -1.19055e-07, -0.0509061)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.999919, -1.51351e-09, -1.192e-07, -0.0126962)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(1, 0, -1.19209e-07, 0)
            }
        }

        KeyframeGroup {
            target: body
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: head
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.14818, 0.38867, 0.0516637)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-0.144467, 0.397909, 0.0542986)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-0.13327, 0.425769, 0.0622434)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-0.114913, 0.471445, 0.0752692)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-0.090452, 0.532306, 0.0926256)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-0.0618197, 0.603548, 0.112942)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-0.0316961, 0.678499, 0.134316)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-0.00306384, 0.749741, 0.154633)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0.0213968, 0.810603, 0.171989)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0.0397543, 0.856279, 0.185015)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0.0509512, 0.884138, 0.19296)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(0.0546646, 0.893377, 0.195595)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(0.0266142, 0.823584, 0.175691)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-0.046758, 0.641024, 0.123629)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-0.12013, 0.458463, 0.0715671)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-0.14818, 0.38867, 0.0516637)
            }
        }
    }

    Timeline {
        id: timeline1
        startFrame: 0
        endFrame: 417
        currentFrame: 0
        enabled: false
        animations: [
            TimelineAnimation {
                duration: 417
                from: 0
                to: 417
                running: true
                loops: Animation.Infinite
            }
        ]

        KeyframeGroup {
            target: leftEye
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.727946, 0.296122, -0.2769)
            }
        }

        KeyframeGroup {
            target: leftEye
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: lowerArm_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.273606, -2.98023e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(9.31323e-10, 0.273606, 0)
            }
        }

        KeyframeGroup {
            target: lowerArm_L
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: hand_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(3.62865e-10, 0.218949, -2.98023e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(3.46559e-10, 0.218949, -2.38419e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(3.30253e-10, 0.218949, -1.78814e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(3.13947e-10, 0.218949, -1.19209e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(2.97641e-10, 0.218949, -5.96046e-09)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(2.81335e-10, 0.218949, 0)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(2.65029e-10, 0.218949, 5.96046e-09)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(2.48723e-10, 0.218949, 1.19209e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(2.32417e-10, 0.218949, 1.78814e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(2.16111e-10, 0.218949, 2.38419e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(1.99806e-10, 0.218949, 2.98023e-08)
            }
        }

        KeyframeGroup {
            target: hand_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990613, 0.136699, 0, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.992124, 0.125257, 0, 0)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.995895, 0.0905141, 0, 0)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.999433, 0.0336602, 0, 0)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.999206, -0.0398311, 0, 0)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.992855, -0.119326, 0, 0)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.98141, -0.191921, 0, 0)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.96889, -0.247492, 0, 0)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.95965, -0.281196, 0, 0)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.956341, -0.292252, 0, 0)
            }
        }

        KeyframeGroup {
            target: hand_L
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: lowerArm_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-2.88615e-10, 0.273606, -2.72318e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(5.19648e-10, 0.273606, 1.2178e-07)
            }
        }

        KeyframeGroup {
            target: lowerArm_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.964134, 0.265415, -4.71922e-08, -3.99652e-08)
            }
        }

        KeyframeGroup {
            target: lowerArm_R
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: body
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.185498, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(0, 0.187477, 0)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(0, 0.193433, 0)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(0, 0.203116, 0)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(0, 0.215782, 0)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0, 0.230131, 0)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0, 0.244479, 0)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0, 0.257145, 0)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0, 0.266829, 0)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0, 0.272785, 0)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0, 0.274764, 0)
            }
        }

        KeyframeGroup {
            target: body
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, 0, -1.19209e-07, 0)
            }
        }

        KeyframeGroup {
            target: body
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(0.99455, 0.984509, 0.99455)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(0.97815, 0.937887, 0.97815)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(0.951483, 0.862082, 0.951483)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(0.916604, 0.762933, 0.916604)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0.877091, 0.650614, 0.877091)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0.837579, 0.538294, 0.837579)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0.8027, 0.439145, 0.8027)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0.776033, 0.36334, 0.776033)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0.759633, 0.316718, 0.759633)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0.754183, 0.301227, 0.754183)
            }
        }

        KeyframeGroup {
            target: head
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.14818, 0.38867, 0.0516637)
            }
        }

        KeyframeGroup {
            target: head
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.70791, 0.100834, -0.698956, 0.0125016)
            }
        }

        KeyframeGroup {
            target: head
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: shoulder_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.0133159, 0.248814, -1.02654)
            }
        }

        KeyframeGroup {
            target: shoulder_L
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: hand_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-8.30013e-10, 0.218949, 3.32961e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-5.86276e-10, 0.218949, 2.73357e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-3.42538e-10, 0.218949, 2.13752e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-9.8801e-11, 0.218949, 1.54148e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(1.44937e-10, 0.218949, 9.45428e-09)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(3.88674e-10, 0.218949, 3.49382e-09)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(6.32411e-10, 0.218949, -2.46664e-09)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(8.76149e-10, 0.218949, -8.42711e-09)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(1.11989e-09, 0.218949, -1.43876e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(1.36362e-09, 0.218949, -2.0348e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(1.60736e-09, 0.218949, -2.63085e-08)
            }
        }

        KeyframeGroup {
            target: hand_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990613, -0.136699, 7.15703e-08, 1.65524e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.992036, -0.125954, 7.92189e-08, 7.79142e-09)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.995632, -0.093367, 8.66394e-08, -3.03456e-09)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.999194, -0.0401476, 9.31132e-08, -1.62474e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.999593, 0.0285435, 9.79309e-08, -3.16428e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.994695, 0.102868, 1.00767e-07, -4.83186e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.985286, 0.170913, 1.02011e-07, -6.49493e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.974772, 0.223205, 1.02671e-07, -8.03649e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.966931, 0.255038, 1.03918e-07, -9.38906e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.96411, 0.265503, 1.0672e-07, -1.05257e-07)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.96411, 0.265503, 1.10545e-07, -1.15502e-07)
            }
        }

        KeyframeGroup {
            target: hand_R
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: shoulder_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.0133158, 0.248814, 1.03687)
            }
        }

        KeyframeGroup {
            target: shoulder_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.98171, 0.190384, -9.76722e-08, -3.33882e-09)
            }
        }

        KeyframeGroup {
            target: shoulder_R
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: rightEye
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.727946, 0.296122, -0.2769)
            }
        }

        KeyframeGroup {
            target: neck
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.437564, 0)
            }
        }

        KeyframeGroup {
            target: neck
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.974979, -0.0627444, 0.00212884, -0.213248)
            }
        }
    }

    Timeline {
        id: timeline2
        startFrame: 0
        endFrame: 2500
        currentFrame: 0
        enabled: false
        animations: [
            TimelineAnimation {
                duration: 2500
                from: 0
                to: 2500
                running: true
                loops: Animation.Infinite
            }
        ]

        KeyframeGroup {
            target: hand_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990613, -0.136699, 7.15703e-08, 1.65524e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.990401, -0.138225, 7.15447e-08, 1.66627e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.989746, -0.142841, 7.14662e-08, 1.69961e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.988597, -0.150588, 7.13309e-08, 1.75553e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.986875, -0.161489, 7.11329e-08, 1.83414e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.984474, -0.175532, 7.08643e-08, 1.93529e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.981265, -0.19266, 7.05163e-08, 2.05848e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.977105, -0.212757, 7.00791e-08, 2.20276e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.971843, -0.235629, 6.95428e-08, 2.36661e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.96534, -0.260996, 6.88993e-08, 2.5479e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.957485, -0.288483, 6.81428e-08, 2.74381e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.948217, -0.317624, 6.7272e-08, 2.95087e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.937543, -0.347871, 6.6291e-08, 3.1651e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.925552, -0.37862, 6.52105e-08, 3.38214e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.912425, -0.409244, 6.40475e-08, 3.59751e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.898423, -0.439131, 6.28254e-08, 3.80691e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.883877, -0.467719, 6.15722e-08, 4.00643e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.869163, -0.494525, 6.03184e-08, 4.19282e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.854672, -0.519168, 5.90953e-08, 4.36353e-08)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.840785, -0.541369, 5.79324e-08, 4.51677e-08)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.827849, -0.560952, 5.68565e-08, 4.65148e-08)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.816163, -0.577822, 5.589e-08, 4.76718e-08)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.80597, -0.591957, 5.50508e-08, 4.86385e-08)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.797455, -0.603379, 5.43523e-08, 4.94178e-08)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.790747, -0.612143, 5.38036e-08, 5.00146e-08)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.785929, -0.618317, 5.34102e-08, 5.04345e-08)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.783038, -0.621974, 5.31745e-08, 5.06829e-08)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.782078, -0.62318, 5.30963e-08, 5.07648e-08)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.78272, -0.622374, 5.31486e-08, 5.07101e-08)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.784654, -0.619934, 5.33062e-08, 5.05444e-08)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.787882, -0.615827, 5.35696e-08, 5.02652e-08)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.792392, -0.610012, 5.3938e-08, 4.98697e-08)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.798156, -0.602451, 5.44097e-08, 4.93546e-08)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.805124, -0.593107, 5.49813e-08, 4.8717e-08)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.813226, -0.581948, 5.56478e-08, 4.79542e-08)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.822366, -0.568959, 5.64024e-08, 4.70644e-08)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.832423, -0.554141, 5.72362e-08, 4.60468e-08)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.843249, -0.537524, 5.81381e-08, 4.49026e-08)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.854672, -0.519168, 5.90953e-08, 4.36353e-08)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.866501, -0.499176, 6.00929e-08, 4.22509e-08)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.878526, -0.477695, 6.11147e-08, 4.07588e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.890533, -0.454918, 6.21438e-08, 3.91719e-08)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.902311, -0.431087, 6.31631e-08, 3.75062e-08)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.913659, -0.406482, 6.41561e-08, 3.57811e-08)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.924402, -0.381419, 6.51078e-08, 3.40185e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.934397, -0.356233, 6.60056e-08, 3.2242e-08)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.943536, -0.331271, 6.68393e-08, 3.04762e-08)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.951752, -0.306869, 6.76018e-08, 2.87453e-08)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.959017, -0.283348, 6.82889e-08, 2.70725e-08)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.96534, -0.260996, 6.88993e-08, 2.5479e-08)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.970757, -0.240065, 6.9434e-08, 2.39835e-08)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.975327, -0.220766, 6.9896e-08, 2.26018e-08)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.979124, -0.203265, 7.02895e-08, 2.13465e-08)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.982229, -0.187688, 7.06197e-08, 2.02274e-08)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.984723, -0.174127, 7.08919e-08, 1.92517e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.986686, -0.162636, 7.11115e-08, 1.84241e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.988188, -0.153248, 7.12834e-08, 1.77472e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.989289, -0.145972, 7.14121e-08, 1.72221e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.990038, -0.140802, 7.15011e-08, 1.68488e-08)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.990471, -0.137719, 7.15532e-08, 1.66262e-08)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.990613, -0.136699, 7.15703e-08, 1.65524e-08)
            }
        }

        KeyframeGroup {
            target: hand_R
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: lowerArm_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.964134, -0.265415, 0, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.964256, -0.264974, 0, 0)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.964621, -0.263642, 0, 0)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.965228, -0.261409, 0, 0)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.966071, -0.258276, 0, 0)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.967139, -0.254249, 0, 0)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.968413, -0.249351, 0, 0)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.969871, -0.243618, 0, 0)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.971485, -0.237101, 0, 0)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.973221, -0.229873, 0, 0)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.975041, -0.222024, 0, 0)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.976907, -0.213664, 0, 0)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.978779, -0.204919, 0, 0)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.980618, -0.195931, 0, 0)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.982389, -0.186849, 0, 0)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.984062, -0.177828, 0, 0)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.985613, -0.16902, 0, 0)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.987024, -0.160571, 0, 0)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.988286, -0.152613, 0, 0)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.989393, -0.145263, 0, 0)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.990346, -0.138618, 0, 0)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.991149, -0.132756, 0, 0)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.991808, -0.127738, 0, 0)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.992331, -0.123606, 0, 0)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.992727, -0.120385, 0, 0)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.993003, -0.118088, 0, 0)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.993165, -0.116716, 0, 0)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.993219, -0.116262, 0, 0)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.993183, -0.116566, 0, 0)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.993075, -0.117482, 0, 0)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.992892, -0.119017, 0, 0)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.992632, -0.121172, 0, 0)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.992289, -0.123944, 0, 0)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.991861, -0.127326, 0, 0)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.991342, -0.131302, 0, 0)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.990729, -0.135852, 0, 0)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.990017, -0.140947, 0, 0)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.989203, -0.14655, 0, 0)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.988286, -0.152613, 0, 0)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.987265, -0.159084, 0, 0)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.986143, -0.165899, 0, 0)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.984924, -0.172988, 0, 0)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.983617, -0.180273, 0, 0)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.982231, -0.187674, 0, 0)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.980782, -0.195106, 0, 0)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.979285, -0.202486, 0, 0)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.97776, -0.209729, 0, 0)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.976226, -0.216756, 0, 0)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.974706, -0.223493, 0, 0)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.973221, -0.229873, 0, 0)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.971792, -0.235838, 0, 0)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.970442, -0.241335, 0, 0)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.969187, -0.246324, 0, 0)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.968046, -0.250772, 0, 0)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.967033, -0.254652, 0, 0)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.966159, -0.257946, 0, 0)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.965435, -0.260644, 0, 0)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.964867, -0.262739, 0, 0)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.96446, -0.26423, 0, 0)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.964215, -0.26512, 0, 0)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.964134, -0.265415, 0, 0)
            }
        }

        KeyframeGroup {
            target: hand_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990613, 0.136699, 0, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.990411, 0.138152, 0, 0)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.989788, 0.142545, 0, 0)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.988699, 0.149916, 0, 0)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.987071, 0.160283, 0, 0)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.984811, 0.173633, 0, 0)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.981802, 0.189905, 0, 0)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.977919, 0.208987, 0, 0)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.973027, 0.230691, 0, 0)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.967006, 0.254753, 0, 0)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.959761, 0.28082, 0, 0)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.951239, 0.308455, 0, 0)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.941451, 0.33715, 0, 0)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.93048, 0.366342, 0, 0)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.918489, 0.395448, 0, 0)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.905711, 0.423895, 0, 0)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.892445, 0.451156, 0, 0)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.879026, 0.476774, 0, 0)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.865806, 0.50038, 0, 0)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.853129, 0.521699, 0, 0)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.841312, 0.54055, 0, 0)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.830627, 0.556829, 0, 0)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.821299, 0.570498, 0, 0)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.8135, 0.581565, 0, 0)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.807352, 0.59007, 0, 0)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.802933, 0.59607, 0, 0)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.80028, 0.599626, 0, 0)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.799399, 0.6008, 0, 0)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.799988, 0.600016, 0, 0)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.801763, 0.597643, 0, 0)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.804724, 0.59365, 0, 0)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.80886, 0.588002, 0, 0)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.814142, 0.580666, 0, 0)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.820525, 0.571611, 0, 0)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.82794, 0.560816, 0, 0)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.8363, 0.548272, 0, 0)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.845491, 0.533989, 0, 0)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.855379, 0.518003, 0, 0)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.865806, 0.50038, 0, 0)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.876597, 0.481225, 0, 0)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.887564, 0.460684, 0, 0)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.898515, 0.438943, 0, 0)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.909258, 0.416233, 0, 0)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.919615, 0.39282, 0, 0)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.929429, 0.369, 0, 0)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.938571, 0.345086, 0, 0)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.946944, 0.3214, 0, 0)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.954486, 0.298255, 0, 0)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.961172, 0.27595, 0, 0)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.967006, 0.254753, 0, 0)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.97202, 0.2349, 0, 0)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.976263, 0.216588, 0, 0)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.979801, 0.199975, 0, 0)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.982704, 0.185183, 0, 0)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.985045, 0.172297, 0, 0)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.986893, 0.161374, 0, 0)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.988312, 0.152446, 0, 0)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.989355, 0.145524, 0, 0)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.990066, 0.140604, 0, 0)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.990478, 0.13767, 0, 0)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.990613, 0.136699, 0, 0)
            }
        }

        KeyframeGroup {
            target: hand_L
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: lowerArm_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.964134, 0.265415, -4.71922e-08, -3.99652e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.964291, 0.264844, -4.71685e-08, -3.99931e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.964763, 0.263121, -4.7097e-08, -4.00773e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.965546, 0.260233, -4.69769e-08, -4.02181e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.96663, 0.256175, -4.68075e-08, -4.0415e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.967998, 0.250959, -4.65889e-08, -4.06668e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.969622, 0.24461, -4.63214e-08, -4.09713e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.971468, 0.23717, -4.6006e-08, -4.13251e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.973495, 0.228708, -4.56447e-08, -4.17239e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.975654, 0.219313, -4.52403e-08, -4.21619e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.977894, 0.209103, -4.47972e-08, -4.26325e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.980158, 0.198219, -4.43205e-08, -4.31279e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.982393, 0.186827, -4.38168e-08, -4.36395e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.984549, 0.175112, -4.32939e-08, -4.41583e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.986581, 0.163271, -4.27602e-08, -4.46753e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.988456, 0.151507, -4.2225e-08, -4.51815e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.990148, 0.140022, -4.16977e-08, -4.56686e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.991644, 0.129007, -4.11874e-08, -4.61293e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.992938, 0.118634, -4.0703e-08, -4.65573e-08)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.994035, 0.109057, -4.02523e-08, -4.69475e-08)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.994947, 0.100403, -3.98423e-08, -4.7296e-08)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.995687, 0.0927744, -3.94786e-08, -4.76e-08)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.996274, 0.0862465, -3.91658e-08, -4.78577e-08)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.996724, 0.0808731, -3.89071e-08, -4.80682e-08)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.997055, 0.0766866, -3.87049e-08, -4.82312e-08)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.99728, 0.0737021, -3.85604e-08, -4.83468e-08)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.99741, 0.0719202, -3.8474e-08, -4.84156e-08)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.997453, 0.0713302, -3.84453e-08, -4.84384e-08)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.997424, 0.0717247, -3.84645e-08, -4.84232e-08)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.997338, 0.0729153, -3.85222e-08, -4.83772e-08)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.99719, 0.0749093, -3.86189e-08, -4.83001e-08)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.996976, 0.0777095, -3.87544e-08, -4.81914e-08)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.996689, 0.0813128, -3.89283e-08, -4.8051e-08)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.99632, 0.0857097, -3.914e-08, -4.78788e-08)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.995862, 0.0908821, -3.93881e-08, -4.76749e-08)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.995304, 0.0968034, -3.96709e-08, -4.74398e-08)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.994636, 0.103436, -3.99863e-08, -4.71743e-08)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.99385, 0.110733, -4.03314e-08, -4.68796e-08)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.992938, 0.118634, -4.0703e-08, -4.65573e-08)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.991894, 0.127068, -4.10972e-08, -4.62097e-08)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.990715, 0.135953, -4.15097e-08, -4.58395e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.989403, 0.145196, -4.19358e-08, -4.545e-08)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.987962, 0.154696, -4.23706e-08, -4.5045e-08)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.986403, 0.164347, -4.28089e-08, -4.46286e-08)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.984739, 0.174038, -4.32457e-08, -4.42055e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.982991, 0.183656, -4.36758e-08, -4.37806e-08)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.98118, 0.193094, -4.40944e-08, -4.33589e-08)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.979335, 0.202245, -4.44973e-08, -4.29454e-08)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.977483, 0.211014, -4.48804e-08, -4.25449e-08)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.975654, 0.219313, -4.52403e-08, -4.21619e-08)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.973879, 0.227066, -4.55742e-08, -4.18008e-08)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.972187, 0.234207, -4.58798e-08, -4.14652e-08)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.970604, 0.240683, -4.61552e-08, -4.11584e-08)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.969155, 0.246452, -4.63992e-08, -4.08832e-08)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.967862, 0.251481, -4.66108e-08, -4.06417e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.966743, 0.255749, -4.67897e-08, -4.04356e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.965813, 0.259242, -4.69356e-08, -4.02662e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.965081, 0.261953, -4.70485e-08, -4.01343e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.964555, 0.263882, -4.71286e-08, -4.00401e-08)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.964239, 0.265033, -4.71764e-08, -3.99838e-08)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.964134, 0.265415, -4.71922e-08, -3.99652e-08)
            }
        }

        KeyframeGroup {
            target: body
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.407887, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(0, 0.408213, 0)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(0, 0.4092, 0)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(0, 0.410852, 0)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(0, 0.41317, 0)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0, 0.416148, 0)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0, 0.419775, 0)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0, 0.424029, 0)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0, 0.428879, 0)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0, 0.434284, 0)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0, 0.440193, 0)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(0, 0.446543, 0)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(0, 0.453261, 0)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(0, 0.460264, 0)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(0, 0.467462, 0)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(0, 0.474759, 0)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(0, 0.482055, 0)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(0, 0.489253, 0)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(0, 0.496256, 0)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(0, 0.502974, 0)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(0, 0.509324, 0)
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(0, 0.515233, 0)
            }
            Keyframe {
                frame: 916.667
                value: Qt.vector3d(0, 0.520639, 0)
            }
            Keyframe {
                frame: 958.333
                value: Qt.vector3d(0, 0.525489, 0)
            }
            Keyframe {
                frame: 1000
                value: Qt.vector3d(0, 0.529742, 0)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.vector3d(0, 0.533369, 0)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.vector3d(0, 0.536348, 0)
            }
            Keyframe {
                frame: 1125
                value: Qt.vector3d(0, 0.538666, 0)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.vector3d(0, 0.540317, 0)
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(0, 0.541631, 0)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(0, 0.540317, 0)
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(0, 0.538666, 0)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(0, 0.536348, 0)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(0, 0.533369, 0)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(0, 0.529742, 0)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(0, 0.525489, 0)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(0, 0.520639, 0)
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(0, 0.515233, 0)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(0, 0.509324, 0)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(0, 0.502974, 0)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(0, 0.496256, 0)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(0, 0.489253, 0)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(0, 0.482055, 0)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(0, 0.474759, 0)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(0, 0.467462, 0)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(0, 0.460264, 0)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(0, 0.453261, 0)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(0, 0.446543, 0)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(0, 0.440193, 0)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(0, 0.434284, 0)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(0, 0.428879, 0)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(0, 0.424029, 0)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(0, 0.419775, 0)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(0, 0.416148, 0)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(0, 0.41317, 0)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(0, 0.410852, 0)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(0, 0.4092, 0)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(0, 0.408213, 0)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(0, 0.407887, 0)
            }
        }

        KeyframeGroup {
            target: body
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, 0, -1.19209e-07, 0)
            }
        }
    }

    Timeline {
        id: timeline3
        startFrame: 0
        endFrame: 834
        currentFrame: 0
        enabled: false
        animations: [
            TimelineAnimation {
                duration: 834
                from: 0
                to: 834
                running: true
                loops: Animation.Infinite
            }
        ]

        KeyframeGroup {
            target: neck
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.0294398, 0.515839, 0.0129336)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(0.0268229, 0.508881, 0.0117839)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(0.019452, 0.489283, 0.00854572)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(0.00998779, 0.46412, 0.00438787)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(0.00261687, 0.444522, 0.00114965)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0, 0.437564, 0)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0.00261687, 0.444522, 0.00114965)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0.00998778, 0.46412, 0.00438787)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0.019452, 0.489283, 0.00854572)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0.0268229, 0.508881, 0.0117839)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0.0294398, 0.515839, 0.0129336)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(0.0268229, 0.508881, 0.0117839)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(0.019452, 0.489283, 0.00854572)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(0.00998778, 0.46412, 0.00438787)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(0.00261687, 0.444522, 0.00114965)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(0, 0.437564, 0)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(0.00261687, 0.444522, 0.00114965)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(0.00998778, 0.46412, 0.00438787)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(0.019452, 0.489283, 0.00854572)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(0.0268229, 0.508881, 0.0117839)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(0.0294398, 0.515839, 0.0129336)
            }
        }

        KeyframeGroup {
            target: neck
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.975166, 0.0607018, -0.0161566, -0.212382)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.975588, 0.0536432, -0.0151082, -0.212419)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.976541, 0.0320343, -0.0119106, -0.212603)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.977064, -0.000324629, -0.00713074, -0.212827)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.976449, -0.0344409, -0.00208647, -0.212972)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.975031, -0.0627449, 0.00211358, -0.213011)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.972823, -0.0906334, 0.00627541, -0.212983)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.969268, -0.12353, 0.0111739, -0.212449)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.964948, -0.154262, 0.0157576, -0.211731)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.961556, -0.174578, 0.0187915, -0.21114)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.960327, -0.181173, 0.0198067, -0.211083)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.961556, -0.174578, 0.0187915, -0.21114)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.964948, -0.154262, 0.0157576, -0.211731)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.969268, -0.12353, 0.0111739, -0.212449)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.972823, -0.0906334, 0.00627541, -0.212983)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.97499, -0.0627445, 0.00212552, -0.213197)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.976368, -0.0344417, -0.00207337, -0.213343)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.977003, -0.00032667, -0.00713065, -0.213105)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.9765, 0.032032, -0.0119167, -0.212788)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.975568, 0.0536418, -0.0151133, -0.212512)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.975166, 0.0607018, -0.0161566, -0.212382)
            }
        }

        KeyframeGroup {
            target: neck
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: hand_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.13232e-10, 0.218949, 2.58456e-08)
            }
        }

        KeyframeGroup {
            target: hand_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.962315, 0.271937, 4.42755e-08, -6.43569e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.965981, 0.258613, 4.51606e-08, -6.3739e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.976063, 0.217486, 4.78185e-08, -6.17699e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.989039, 0.147655, 5.20824e-08, -5.82199e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.998644, 0.0520638, 5.74289e-08, -5.29533e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.998246, -0.0591985, 6.29561e-08, -4.62457e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.985491, -0.169728, 6.77039e-08, -3.89656e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.964656, -0.263514, 7.11306e-08, -3.22888e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.943518, -0.331322, 7.32431e-08, -2.71584e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.928645, -0.370969, 7.43272e-08, -2.40333e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.92343, -0.383767, 7.46522e-08, -2.30039e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.928645, -0.370969, 7.43272e-08, -2.40333e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.943518, -0.331322, 7.32431e-08, -2.71584e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.964656, -0.263514, 7.11306e-08, -3.22888e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.985491, -0.169728, 6.77039e-08, -3.89656e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.998246, -0.0591985, 6.29561e-08, -4.62457e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.998644, 0.0520638, 5.74289e-08, -5.29533e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.989039, 0.147655, 5.20824e-08, -5.82199e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.976063, 0.217486, 4.78185e-08, -6.17699e-08)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.965981, 0.258613, 4.51606e-08, -6.3739e-08)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.962315, 0.271937, 4.42755e-08, -6.43569e-08)
            }
        }

        KeyframeGroup {
            target: hand_R
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: lowerArm_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.964134, -0.265415, 0, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.963685, -0.267042, 0, 0)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.962315, -0.271938, 0, 0)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.960033, -0.279886, 0, 0)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.956949, -0.290256, 0, 0)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.953318, -0.301967, 0, 0)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.949545, -0.313632, 0, 0)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.946096, -0.323887, 0, 0)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.943385, -0.331699, 0, 0)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.941687, -0.33649, 0, 0)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.941117, -0.33808, 0, 0)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.941687, -0.33649, 0, 0)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.943385, -0.331699, 0, 0)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.946096, -0.323887, 0, 0)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.949545, -0.313632, 0, 0)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.953318, -0.301967, 0, 0)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.956949, -0.290256, 0, 0)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.960033, -0.279886, 0, 0)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.962315, -0.271938, 0, 0)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.963685, -0.267042, 0, 0)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.964134, -0.265415, 0, 0)
            }
        }

        KeyframeGroup {
            target: hand_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(3.4637e-10, 0.218949, -1.49012e-08)
            }
        }

        KeyframeGroup {
            target: hand_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.940162, 0.340727, 0, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.943332, 0.33185, 0, 0)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.952434, 0.304745, 0, 0)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.96573, 0.259547, 0, 0)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.980058, 0.198712, 0, 0)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.991745, 0.128222, 0, 0)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.99837, 0.057077, 0, 0)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.999985, -0.00540141, 0, 0)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.998621, -0.0524947, 0, 0)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.996712, -0.0810232, 0, 0)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.995904, -0.0904152, 0, 0)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.996712, -0.0810233, 0, 0)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.998621, -0.0524946, 0, 0)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.999985, -0.00540141, 0, 0)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.99837, 0.057077, 0, 0)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.991745, 0.128222, 0, 0)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.980058, 0.198712, 0, 0)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.96573, 0.259547, 0, 0)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.952434, 0.304745, 0, 0)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.943332, 0.33185, 0, 0)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.940162, 0.340727, 0, 0)
            }
        }

        KeyframeGroup {
            target: lowerArm_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-7.10322e-10, 0.273606, -2.72318e-08)
            }
        }

        KeyframeGroup {
            target: lowerArm_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.964134, 0.265415, -4.71922e-08, -3.99652e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.965674, 0.259756, -4.6957e-08, -4.02413e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.970121, 0.242621, -4.62373e-08, -4.10662e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.976733, 0.21446, -4.50302e-08, -4.23863e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.984181, 0.177164, -4.33858e-08, -4.4068e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.990919, 0.134463, -4.14407e-08, -4.59019e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.995804, 0.0915097, -3.94181e-08, -4.76501e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.998564, 0.0535774, -3.75777e-08, -4.91145e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.999696, 0.0246731, -3.61414e-08, -5.01808e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.999976, 0.00697288, -3.52474e-08, -5.08128e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.999999, 0.0011079, -3.49488e-08, -5.10186e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.999976, 0.00697282, -3.52474e-08, -5.08128e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.999696, 0.0246731, -3.61414e-08, -5.01808e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.998564, 0.0535774, -3.75777e-08, -4.91145e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.995804, 0.0915097, -3.94181e-08, -4.76501e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.990919, 0.134463, -4.14407e-08, -4.59019e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.984181, 0.177164, -4.33858e-08, -4.4068e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.976733, 0.21446, -4.50302e-08, -4.23863e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.970121, 0.242621, -4.62373e-08, -4.10662e-08)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.965674, 0.259756, -4.6957e-08, -4.02413e-08)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.964134, 0.265415, -4.71922e-08, -3.99652e-08)
            }
        }

        KeyframeGroup {
            target: body
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.259006, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(0, 0.273633, 0)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(0, 0.314832, 0)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(0, 0.367732, 0)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(0, 0.408931, 0)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0, 0.423558, 0)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0, 0.408931, 0)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0, 0.367732, 0)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0, 0.314832, 0)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0, 0.273633, 0)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0, 0.259006, 0)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(0, 0.273633, 0)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(0, 0.314832, 0)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(0, 0.367732, 0)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(0, 0.408931, 0)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(0, 0.423558, 0)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(0, 0.408931, 0)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(0, 0.367732, 0)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(0, 0.314832, 0)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(0, 0.273633, 0)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(0, 0.259006, 0)
            }
        }

        KeyframeGroup {
            target: body
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, 0, -1.19209e-07, 0)
            }
        }

        KeyframeGroup {
            target: head
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.70791, 0.100834, -0.698956, 0.0125015)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.707985, 0.101428, -0.698805, 0.0119073)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.708162, 0.102018, -0.698549, 0.0113305)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.708432, 0.102604, -0.698198, 0.0107706)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.708804, 0.103876, -0.69765, 0.00952617)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.709222, 0.105316, -0.697027, 0.00811641)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.709637, 0.106756, -0.696401, 0.00670662)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.71, 0.108027, -0.695845, 0.00546209)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.710264, 0.108809, -0.695459, 0.00470222)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.710402, 0.109598, -0.695199, 0.00391583)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.71046, 0.109195, -0.695201, 0.0043372)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.710237, 0.108411, -0.695546, 0.00510487)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.71, 0.108027, -0.695845, 0.00546214)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.709637, 0.106756, -0.696401, 0.00670662)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.709222, 0.105316, -0.697027, 0.00811641)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.708804, 0.103876, -0.69765, 0.00952617)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.708432, 0.102604, -0.698198, 0.0107706)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.708154, 0.101821, -0.698583, 0.0115304)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.707969, 0.101033, -0.698871, 0.0123072)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.70791, 0.100834, -0.698956, 0.0125015)
            }
        }

        KeyframeGroup {
            target: head
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }
    }
}
