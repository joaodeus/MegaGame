import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node0

    // Resources
    PrincipledMaterial {
        id: black_material36
        objectName: "Black"
        //baseColor: "#ff000000"
        baseColor: "green"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: shirt_material37
        objectName: "Shirt"
        baseColor: "#ff9d9d9d"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: belt_material38
        objectName: "Belt"
        baseColor: "#ff020205"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: skin_material39
        objectName: "Skin"
        baseColor: "#ff030303"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: details_material40
        objectName: "Details"
        baseColor: "#ff242424"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: black_Head_material41
        objectName: "Black_Head"
        baseColor: "#ff070707"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: white_material42
        objectName: "White"
        baseColor: "#ffcccccc"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: pink_material43
        objectName: "Pink"
        baseColor: "#ffcc2d37"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: face_material44
        objectName: "Face"
        baseColor: "#ff030303"
        roughness: 0.5
    }
    Skin {
        id: skin46
        joints: [
            bone3,
            foot_L4,
            body6,
            hips7,
            abdomen8,
            torso9,
            neck10,
            head11,
            shoulder_L13,
            upperArm_L14,
            lowerArm_L15,
            fist_L16,
            shoulder_R18,
            upperArm_R19,
            lowerArm_R20,
            fist_R21,
            upperLeg_L23,
            lowerLeg_L24,
            upperLeg_R26,
            lowerLeg_R27,
            poleTarget_L29,
            foot_R31,
            poleTarget_R33
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 4.76837e-07, 0, 0.00131147, -5.68434e-14, 1.19209e-07, 1, 0.00241513, 4.76837e-07, -1, 0, 0.000114685, 0, 0, 0, 1),
            Qt.matrix4x4(-1, -3.73394e-07, 1.48924e-05, 0.264113, 1.98871e-07, -0.999931, -0.0117174, 0.0454278, 1.48957e-05, -0.0117172, 0.999931, -0.0217209, 0, 0, 0, 1),
            Qt.matrix4x4(1, 7.15256e-07, 0, -0.000841577, -5.68434e-14, 1.19209e-07, 1, -1.01427, 7.15256e-07, -1, 0, -0.019196, 0, 0, 0, 1),
            Qt.matrix4x4(1, 1.78975e-07, -1.83006e-08, 0.000638389, 5.69271e-11, 0.101407, 0.994845, -0.945357, 1.79908e-07, -0.994845, 0.101407, -0.0691758, 0, 0, 0, 1),
            Qt.matrix4x4(1, 1.05256e-06, 8.48677e-08, 0.000638208, -4.65661e-14, -0.0803689, 0.996765, -1.2514, 1.05598e-06, -0.996765, -0.080369, 0.160014, 0, 0, 0, 1),
            Qt.matrix4x4(1, -6.07333e-07, -4.06149e-08, 0.000638461, -6.57747e-13, -0.0667261, 0.997771, -1.55203, -6.08689e-07, -0.997772, -0.0667261, 0.138796, 0, 0, 0, 1),
            Qt.matrix4x4(1, 7.47343e-07, -1.50466e-11, 0.000638375, 1.49927e-11, 1.04308e-07, 1, -2.03366, 7.47343e-07, -1, -1.49011e-08, 0.00310478, 0, 0, 0, 1),
            Qt.matrix4x4(1, -0.000550203, 1.4053e-11, 0.000640085, -1.41096e-11, 1.11759e-07, 1, -2.16715, -0.000550203, -1, -8.64193e-15, 0.00310439, 0, 0, 0, 1),
            Qt.matrix4x4(0.663951, 2.70316e-06, -0.747776, 1.18639, 0.747777, 4.82813e-08, 0.663951, -1.22118, 1.82995e-06, -1, -2.10536e-06, 0.0120704, 0, 0, 0, 1),
            Qt.matrix4x4(0.0428185, -0.997138, 0.0623071, -0.118181, 0.999079, 0.0429019, -3.71933e-08, -0.31976, -0.00267313, 0.0622499, 0.998057, -1.86653, 0, 0, 0, 1),
            Qt.matrix4x4(-0.0297133, -0.999558, -0.00146904, 0.0626398, 0.999252, -0.0296678, -0.0248136, -0.799249, 0.0247588, -0.0022051, 0.999691, -1.8906, 0, 0, 0, 1),
            Qt.matrix4x4(-0.0432129, -0.998355, -0.0376881, 0.147147, 0.999065, -0.0432436, -1.76048e-07, -1.2702, -0.00162977, -0.0376528, 0.999289, -1.85549, 0, 0, 0, 1),
            Qt.matrix4x4(0.663951, -2.70455e-06, 0.747776, -1.18639, -0.747776, 4.98394e-08, 0.663951, -1.22118, -1.83343e-06, -1, -2.10469e-06, 0.0120704, 0, 0, 0, 1),
            Qt.matrix4x4(0.0428185, 0.997138, -0.0623071, 0.118181, -0.999079, 0.0429018, -6.48498e-08, -0.319759, 0.00267303, 0.0622499, 0.998057, -1.86653, 0, 0, 0, 1),
            Qt.matrix4x4(-0.0297133, 0.999557, 0.00146904, -0.0626398, -0.999252, -0.0296678, -0.0248134, -0.799249, -0.0247588, -0.00220511, 0.999691, -1.8906, 0, 0, 0, 1),
            Qt.matrix4x4(-0.0432129, 0.998355, 0.0376881, -0.147147, -0.999065, -0.0432437, 1.16348e-08, -1.2702, 0.00162977, -0.0376528, 0.999289, -1.85549, 0, 0, 0, 1),
            Qt.matrix4x4(0.999807, 0.00262982, 0.0194825, -0.273354, 0.0196491, -0.102443, -0.994545, 0.990904, -0.000612969, 0.994753, -0.102475, 0.0658462, 0, 0, 0, 1),
            Qt.matrix4x4(1, 2.08597e-07, 2.06118e-08, -0.262788, 9.97193e-07, 0.104208, -0.994556, 0.544285, 6.37397e-06, 0.994573, 0.104205, -0.0472153, 0, 0, 0, 1),
            Qt.matrix4x4(0.999807, -0.00262974, -0.0194825, 0.273354, -0.0196491, -0.102443, -0.994545, 0.990904, 0.000613, 0.994753, -0.102475, 0.0658462, 0, 0, 0, 1),
            Qt.matrix4x4(1, -2.09516e-07, -2.07812e-08, 0.262788, -9.76878e-07, 0.104208, -0.994556, 0.544285, -6.2615e-06, 0.994573, 0.104205, -0.0472153, 0, 0, 0, 1),
            Qt.matrix4x4(1, 7.15256e-07, 0, -0.260682, -5.68434e-14, 1.19209e-07, 1, -0.722118, 7.15256e-07, -1, 0, -0.963032, 0, 0, 0, 1),
            Qt.matrix4x4(-1, 5.33379e-07, -1.50505e-05, -0.264113, -3.56992e-07, -0.999931, -0.0117174, 0.0454277, -1.50557e-05, -0.0117172, 0.999931, -0.0217209, 0, 0, 0, 1),
            Qt.matrix4x4(1, -7.15256e-07, 0, 0.260682, -5.68434e-14, 1.19209e-07, 1, -0.722118, -7.15256e-07, -1, 0, -0.963032, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: rootNode1
        objectName: "RootNode"
        Node {
            id: characterArmature2
            objectName: "CharacterArmature"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            Node {
                id: bone3
                objectName: "Bone"
                position: Qt.vector3d(-0.00131147, 0.000114684, -0.00241537)
                rotation: Qt.quaternion(0.707107, 0.707107, 1.68587e-07, 1.68587e-07)
                Node {
                    id: foot_L4
                    objectName: "Foot.L"
                    position: Qt.vector3d(0.265425, 0.0246629, -0.0450554)
                    rotation: Qt.quaternion(5.34679e-06, 5.21179e-06, 0.702952, 0.711237)
                    scale: Qt.vector3d(1, 1, 1)
                    Node {
                        id: foot_L_end5
                        objectName: "Foot.L_end"
                        position: Qt.vector3d(0, 0.107229, 0)
                    }
                }
                Node {
                    id: body6
                    objectName: "Body"
                    position: Qt.vector3d(0.00320909, 0.974601, 0.0655694)
                    rotation: Qt.quaternion(0.999998, -0.000358229, 0.00187804, 1.71891e-05)
                    Node {
                        id: hips7
                        objectName: "Hips"
                        position: Qt.vector3d(-0.00147993, -0.0667749, -0.0462423)
                        rotation: Qt.quaternion(0.99871, -0.0507688, -2.67314e-07, -2.27431e-08)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: abdomen8
                            objectName: "Abdomen"
                            position: Qt.vector3d(-4.36557e-11, 0.314338, 3.74672e-09)
                            rotation: Qt.quaternion(0.997211, 0.0746338, 4.36944e-07, 4.61628e-08)
                            Node {
                                id: torso9
                                objectName: "Torso"
                                position: Qt.vector3d(3.41061e-11, 0.298578, 3.91265e-09)
                                rotation: Qt.quaternion(0.999977, -0.00683997, -8.32334e-07, -1.53526e-09)
                                Node {
                                    id: neck10
                                    objectName: "Neck"
                                    position: Qt.vector3d(7.27596e-12, 0.476891, 2.48377e-09)
                                    rotation: Qt.quaternion(0.999287, -0.0377642, 1.9668e-05, 0.000108926)
                                    Node {
                                        id: head11
                                        objectName: "Head"
                                        position: Qt.vector3d(6.54836e-11, 0.133498, 5.79377e-09)
                                        rotation: Qt.quaternion(1, -5.28786e-09, -0.000275475, -1.45667e-12)
                                        scale: Qt.vector3d(1, 1, 1)
                                        Node {
                                            id: head_end12
                                            objectName: "Head_end"
                                            position: Qt.vector3d(0, 0.640419, 0)
                                        }
                                    }
                                }
                                Node {
                                    id: shoulder_L13
                                    objectName: "Shoulder.L"
                                    position: Qt.vector3d(0.143419, 0.140124, 0.0136132)
                                    rotation: Qt.quaternion(0.911618, -0.0304479, -0.0136819, -0.40968)
                                    Node {
                                        id: upperArm_L14
                                        objectName: "UpperArm.L"
                                        position: Qt.vector3d(1.83354e-08, 0.259532, -7.10133e-09)
                                        rotation: Qt.quaternion(-0.483355, 0.427288, 0.230488, 0.72847)
                                        scale: Qt.vector3d(1, 1, 1)
                                        Node {
                                            id: lowerArm_L15
                                            objectName: "LowerArm.L"
                                            position: Qt.vector3d(2.6077e-08, 0.528271, 6.89179e-08)
                                            rotation: Qt.quaternion(0.965268, -0.0380439, 0.224584, -0.127958)
                                            scale: Qt.vector3d(1, 1, 1)
                                            Node {
                                                id: fist_L16
                                                objectName: "Fist.L"
                                                position: Qt.vector3d(3.14321e-08, 0.425347, 2.6077e-08)
                                                rotation: Qt.quaternion(0.994503, 0.011847, 0.103692, -0.00843748)
                                                scale: Qt.vector3d(1, 1, 1)
                                                Node {
                                                    id: fist_L_end17
                                                    objectName: "Fist.L_end"
                                                    position: Qt.vector3d(0, 0.280096, 0)
                                                }
                                            }
                                        }
                                    }
                                }
                                Node {
                                    id: shoulder_R18
                                    objectName: "Shoulder.R"
                                    position: Qt.vector3d(-0.146844, 0.139791, 0.0134943)
                                    rotation: Qt.quaternion(0.911618, -0.0304476, 0.0136824, 0.40968)
                                    scale: Qt.vector3d(1, 1, 1)
                                    Node {
                                        id: upperArm_R19
                                        objectName: "UpperArm.R"
                                        position: Qt.vector3d(9.88948e-08, 0.259532, 1.28057e-09)
                                        rotation: Qt.quaternion(0.483355, -0.427288, 0.230488, 0.72847)
                                        Node {
                                            id: lowerArm_R20
                                            objectName: "LowerArm.R"
                                            position: Qt.vector3d(2.79397e-09, 0.528271, -6.56582e-08)
                                            rotation: Qt.quaternion(0.965268, -0.0380438, -0.224584, 0.127958)
                                            Node {
                                                id: fist_R21
                                                objectName: "Fist.R"
                                                position: Qt.vector3d(3.37604e-08, 0.425347, -2.6077e-08)
                                                rotation: Qt.quaternion(0.987639, 0.0113776, -0.15604, 0.00957493)
                                                scale: Qt.vector3d(1, 1, 1)
                                                Node {
                                                    id: fist_R_end22
                                                    objectName: "Fist.R_end"
                                                    position: Qt.vector3d(0, 0.280096, 0)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Node {
                        id: upperLeg_L23
                        objectName: "UpperLeg.L"
                        position: Qt.vector3d(0.253029, -0.016702, -0.0559237)
                        rotation: Qt.quaternion(0.136523, 0.990591, 0.00949006, 0.00117306)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: lowerLeg_L24
                            objectName: "LowerLeg.L"
                            position: Qt.vector3d(3.77186e-08, 0.453805, -2.23517e-08)
                            rotation: Qt.quaternion(0.954452, 0.298203, 0.00322557, 0.00928568)
                            Node {
                                id: lowerLeg_L_end25
                                objectName: "LowerLeg.L_end"
                                position: Qt.vector3d(0, 0.526985, 0)
                            }
                        }
                    }
                    Node {
                        id: upperLeg_R26
                        objectName: "UpperLeg.R"
                        position: Qt.vector3d(-0.254712, -0.016702, -0.0559241)
                        rotation: Qt.quaternion(0.135271, 0.990742, -0.0110674, 0.00307113)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: lowerLeg_R27
                            objectName: "LowerLeg.R"
                            position: Qt.vector3d(-1.74623e-10, 0.453805, 4.29573e-08)
                            rotation: Qt.quaternion(0.954564, 0.297844, -0.00322204, -0.0092869)
                            Node {
                                id: lowerLeg_R_end28
                                objectName: "LowerLeg.R_end"
                                position: Qt.vector3d(0, 0.526985, 0)
                            }
                        }
                    }
                }
                Node {
                    id: poleTarget_L29
                    objectName: "PoleTarget.L"
                    position: Qt.vector3d(0.261994, 0.724533, 0.963147)
                    Node {
                        id: poleTarget_L_end30
                        objectName: "PoleTarget.L_end"
                        position: Qt.vector3d(0, 0.273672, 0)
                    }
                }
                Node {
                    id: foot_R31
                    objectName: "Foot.R"
                    position: Qt.vector3d(-0.262802, 0.0246629, -0.0450557)
                    rotation: Qt.quaternion(-4.95537e-06, -5.60782e-06, 0.702952, 0.711237)
                    scale: Qt.vector3d(1, 1, 1)
                    Node {
                        id: foot_R_end32
                        objectName: "Foot.R_end"
                        position: Qt.vector3d(0, 0.107229, 0)
                    }
                }
                Node {
                    id: poleTarget_R33
                    objectName: "PoleTarget.R"
                    position: Qt.vector3d(-0.259372, 0.724533, 0.963147)
                    Node {
                        id: poleTarget_R_end34
                        objectName: "PoleTarget.R_end"
                        position: Qt.vector3d(0, 0.273672, 0)
                    }
                }
            }
        }
        Model {
            id: body3536
            objectName: "Body"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/body_mesh45.mesh"
            skin: skin46
            materials: [
                black_material36,
                shirt_material37,
                belt_material38,
                skin_material39,
                details_material40,
                black_Head_material41,
                white_material42,
                pink_material43,
                face_material44
            ]
        }
    }

    // Animations:
    Timeline {
        id: characterArmature_Idle_timeline1
        objectName: "characterArmature_Idle_timeline1"
        property real framesPerSecond: 24
        startFrame: 0
        endFrame: 4167
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 4167
            from: 0
            to: 4167
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: abdomen8
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(2.54659e-11, 0.314338, -2.42395e-08)
            }
        }
        KeyframeGroup {
            target: abdomen8
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.997211, 0.0746338, 4.36654e-07, 4.61218e-08)
            }
        }
        KeyframeGroup {
            target: body6
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.00345641, 0.965299, 0.0988149)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(0.00344688, 0.965596, 0.0976304)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(0.00343734, 0.965893, 0.095854)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(0.00342781, 0.966189, 0.0939208)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(0.00341827, 0.966486, 0.0919162)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0.00340874, 0.966783, 0.0898747)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0.00339921, 0.967079, 0.0878145)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0.00338967, 0.967376, 0.0857464)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0.00338014, 0.967966, 0.0836775)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0.0033706, 0.968556, 0.0816128)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0.00336107, 0.969146, 0.079556)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(0.00335154, 0.969736, 0.0775101)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(0.003342, 0.970489, 0.0754773)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(0.00331628, 0.971241, 0.0734596)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(0.00329057, 0.971994, 0.0714586)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(0.00326485, 0.972863, 0.0694757)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(0.00323913, 0.973732, 0.0675123)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(0.0032069, 0.974601, 0.0655694)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(0.00317466, 0.975561, 0.0636483)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(0.00314243, 0.976521, 0.06175)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(0.0031102, 0.977481, 0.0598755)
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(0.00307369, 0.978496, 0.0580258)
            }
            Keyframe {
                frame: 916.667
                value: Qt.vector3d(0.00303718, 0.97951, 0.0562018)
            }
            Keyframe {
                frame: 958.333
                value: Qt.vector3d(0.00300068, 0.980552, 0.0544045)
            }
            Keyframe {
                frame: 1000
                value: Qt.vector3d(0.00296191, 0.981593, 0.052635)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.vector3d(0.00292313, 0.982647, 0.0508941)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.vector3d(0.00288436, 0.983701, 0.0491829)
            }
            Keyframe {
                frame: 1125
                value: Qt.vector3d(0.00284474, 0.984753, 0.0475025)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.vector3d(0.00280511, 0.985805, 0.0458538)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.vector3d(0.00276549, 0.986841, 0.0442381)
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(0.00272646, 0.987877, 0.0426564)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.vector3d(0.00268744, 0.988882, 0.0411098)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(0.00264842, 0.989887, 0.0395998)
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(0.00261139, 0.990836, 0.0381275)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(0.00257436, 0.991785, 0.0366944)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(0.00253734, 0.992734, 0.0353018)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(0.00250355, 0.993593, 0.0339513)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(0.00246976, 0.994451, 0.0326445)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(0.00243597, 0.99531, 0.0313831)
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(0.00240725, 0.996057, 0.0301689)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(0.00237854, 0.996804, 0.0290038)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(0.00234983, 0.99755, 0.02789)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(0.00232111, 0.998146, 0.0268296)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(0.00230032, 0.998742, 0.025825)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(0.00227953, 0.999338, 0.0248787)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(0.00225874, 0.999933, 0.0239936)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(0.00223794, 1.00029, 0.0231725)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(0.00221715, 1.00064, 0.0224187)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(0.00222242, 1.001, 0.0217357)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(0.00222768, 1.00135, 0.0211273)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(0.00223294, 1.00171, 0.0205977)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(0.00223821, 1.00206, 0.0201516)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(0.00224347, 1.00189, 0.0197938)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(0.00224874, 1.00173, 0.0195302)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(0.002254, 1.00156, 0.0193668)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(0.00225927, 1.00139, 0.0193804)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(0.00226453, 1.00122, 0.0193941)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(0.0022698, 1.00105, 0.0196352)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(0.00227506, 1.00088, 0.0200217)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(0.00228032, 1.00071, 0.0205428)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(0.00228559, 1.00054, 0.0211889)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(0.00229085, 1.00037, 0.0219518)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(0.00229612, 1.0002, 0.0228238)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(0.00230138, 1.00003, 0.0237982)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(0.00230665, 0.999861, 0.024869)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(0.00231191, 0.999256, 0.0260307)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(0.00231717, 0.998652, 0.0272783)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(0.00232244, 0.998048, 0.0286072)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(0.0023277, 0.997444, 0.0300135)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(0.00235352, 0.996717, 0.0314931)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(0.00237934, 0.995989, 0.0330426)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(0.00240515, 0.995262, 0.0346588)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(0.00243097, 0.994445, 0.0363387)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(0.00246078, 0.993628, 0.0380794)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(0.0024906, 0.992812, 0.0398783)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(0.00252041, 0.991916, 0.0417329)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(0.00255023, 0.991021, 0.0436411)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(0.00258342, 0.990126, 0.0456005)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(0.00261661, 0.989161, 0.0476091)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(0.0026498, 0.988197, 0.049665)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(0.00268298, 0.987233, 0.0517662)
            }
            Keyframe {
                frame: 3375
                value: Qt.vector3d(0.00271872, 0.986217, 0.0539109)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.vector3d(0.00275445, 0.985201, 0.0560975)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.vector3d(0.00279019, 0.984148, 0.0583241)
            }
            Keyframe {
                frame: 3500
                value: Qt.vector3d(0.00282782, 0.983095, 0.060589)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.vector3d(0.00286546, 0.982009, 0.0628905)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.vector3d(0.00290309, 0.980922, 0.0652269)
            }
            Keyframe {
                frame: 3625
                value: Qt.vector3d(0.00294237, 0.979805, 0.0675963)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.vector3d(0.00298166, 0.978688, 0.0699968)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.vector3d(0.00302094, 0.977544, 0.0724265)
            }
            Keyframe {
                frame: 3750
                value: Qt.vector3d(0.00306157, 0.976401, 0.0748828)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.vector3d(0.0031022, 0.975236, 0.0773633)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.vector3d(0.00314283, 0.974071, 0.0798645)
            }
            Keyframe {
                frame: 3875
                value: Qt.vector3d(0.00318432, 0.972892, 0.0823826)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.vector3d(0.00322582, 0.971714, 0.0849123)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.vector3d(0.00326731, 0.970535, 0.0874461)
            }
            Keyframe {
                frame: 4000
                value: Qt.vector3d(0.00330836, 0.969355, 0.0899727)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.vector3d(0.00334941, 0.96821, 0.0924737)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.vector3d(0.00339046, 0.967064, 0.0949126)
            }
            Keyframe {
                frame: 4125
                value: Qt.vector3d(0.00342343, 0.966182, 0.0971988)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.vector3d(0.00345641, 0.965299, 0.0988149)
            }
        }
        KeyframeGroup {
            target: body6
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.999996, -0.000513423, 0.00269969, 2.46358e-05)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.999996, -0.00050704, 0.00266428, 2.42682e-05)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.999996, -0.000498761, 0.00261977, 2.38915e-05)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.999997, -0.000490029, 0.00257319, 2.35133e-05)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.999997, -0.000481061, 0.00252554, 2.30762e-05)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.999997, -0.000471942, 0.0024772, 2.26393e-05)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.999997, -0.000462716, 0.00242839, 2.22028e-05)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.999997, -0.000453411, 0.00237922, 2.17528e-05)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.999997, -0.000444044, 0.00232977, 2.13035e-05)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.999997, -0.000434626, 0.00228009, 2.08549e-05)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.999997, -0.000425167, 0.00223023, 2.03987e-05)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.999998, -0.000415674, 0.00218022, 1.99432e-05)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.999998, -0.000406152, 0.00213009, 1.94886e-05)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.999998, -0.000396605, 0.00207984, 1.90286e-05)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.999998, -0.000387036, 0.0020295, 1.85695e-05)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.999998, -0.000377449, 0.00197908, 1.81113e-05)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.999998, -0.000367846, 0.00192859, 1.7649e-05)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.999998, -0.000358229, 0.00187804, 1.71875e-05)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.999998, -0.000348599, 0.00182744, 1.6727e-05)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.999998, -0.00033896, 0.0017768, 1.62631e-05)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.999998, -0.000329311, 0.00172612, 1.58002e-05)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.999999, -0.000319654, 0.00167541, 1.53381e-05)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.999999, -0.000309991, 0.00162468, 1.48733e-05)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.999999, -0.000300323, 0.00157393, 1.44094e-05)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.999999, -0.00029065, 0.00152316, 1.39464e-05)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.999999, -0.000280974, 0.00147238, 1.34811e-05)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.999999, -0.000271296, 0.0014216, 1.30167e-05)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.999999, -0.000261616, 0.00137082, 1.25533e-05)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.999999, -0.000251936, 0.00132004, 1.20883e-05)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.999999, -0.000242256, 0.00126927, 1.16243e-05)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.999999, -0.000232577, 0.00121852, 1.11594e-05)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.999999, -0.0002229, 0.00116778, 1.06956e-05)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.999999, -0.000213227, 0.00111706, 1.0231e-05)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.999999, -0.000203558, 0.00106637, 9.76743e-06)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.999999, -0.000193894, 0.00101571, 9.30339e-06)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(1, -0.000184237, 0.000965094, 8.84033e-06)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(1, -0.000174587, 0.000914518, 8.377e-06)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(1, -0.000164945, 0.000863993, 7.91467e-06)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(1, -0.000155315, 0.000813528, 7.45234e-06)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(1, -0.000145696, 0.000763127, 6.99099e-06)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(1, -0.00013609, 0.000712803, 6.52999e-06)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(1, -0.000126501, 0.000662566, 6.06997e-06)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(1, -0.00011693, 0.000612428, 5.61073e-06)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(1, -0.00010738, 0.000562405, 5.15247e-06)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(1, -9.78546e-05, 0.000512513, 4.69561e-06)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(1, -8.83579e-05, 0.000462777, 4.23972e-06)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(1, -7.88953e-05, 0.00041322, 3.78616e-06)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(1, -6.94734e-05, 0.00036388, 3.33357e-06)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(1, -6.01009e-05, 0.000314803, 2.88485e-06)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(1, -5.07899e-05, 0.000266049, 2.43707e-06)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(1, -4.15578e-05, 0.000217711, 1.99614e-06)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(1, -3.24305e-05, 0.000169925, 1.55613e-06)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(1, -2.34524e-05, 0.000122921, 1.13911e-06)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(1, -1.4708e-05, 7.71417e-05, 7.22975e-07)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(1, -6.41205e-06, 3.37065e-05, 3.07669e-07)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(1, -6.74736e-14, 1.19209e-07, 5.66009e-07)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(1, -7.50893e-06, 4.24133e-05, 8.24884e-07)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(1, -1.74757e-05, 9.63209e-05, 1.08481e-06)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(1, -2.80506e-05, 0.000152931, 1.34597e-06)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(1, -3.89448e-05, 0.000210947, 1.87293e-06)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(1, -5.00432e-05, 0.000269859, 2.40125e-06)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(1, -6.12859e-05, 0.000329401, 2.94261e-06)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(1, -7.2637e-05, 0.000389414, 3.48538e-06)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(1, -8.4073e-05, 0.000449795, 4.03504e-06)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(1, -9.55774e-05, 0.000510472, 4.58614e-06)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(1, -0.000107138, 0.00057139, 5.14127e-06)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(1, -0.000118746, 0.00063251, 5.69786e-06)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(1, -0.000130394, 0.000693799, 6.25684e-06)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(1, -0.000142076, 0.000755233, 6.81731e-06)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(1, -0.000153787, 0.000816789, 7.37913e-06)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(1, -0.000165524, 0.00087845, 7.94244e-06)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(1, -0.000177283, 0.0009402, 8.50637e-06)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.999999, -0.000189061, 0.00100203, 9.0718e-06)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.999999, -0.000200855, 0.00106392, 9.63731e-06)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.999999, -0.000212663, 0.00112586, 1.02043e-05)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.999999, -0.000224483, 0.00118785, 1.0771e-05)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.999999, -0.000236312, 0.00124988, 1.13391e-05)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.999999, -0.00024815, 0.00131193, 1.19065e-05)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.999999, -0.000259995, 0.001374, 1.24755e-05)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.999999, -0.000271843, 0.00143608, 1.30433e-05)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.999999, -0.000283695, 0.00149816, 1.36127e-05)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.999999, -0.000295548, 0.00156023, 1.41807e-05)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.999999, -0.0003074, 0.00162229, 1.47501e-05)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.999999, -0.000319249, 0.00168433, 1.53179e-05)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.999998, -0.000331095, 0.00174633, 1.58871e-05)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.999998, -0.000342934, 0.00180829, 1.64543e-05)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.999998, -0.000354764, 0.0018702, 1.70228e-05)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.999998, -0.000366583, 0.00193203, 1.75889e-05)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.999998, -0.000378388, 0.00199379, 1.81564e-05)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.999998, -0.000390175, 0.00205544, 1.87208e-05)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.999998, -0.00040194, 0.00211697, 1.92865e-05)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.999998, -0.000413678, 0.00217835, 1.98483e-05)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.999997, -0.000425383, 0.00223955, 2.04114e-05)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.999997, -0.000437046, 0.00230052, 2.09691e-05)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.999997, -0.000448656, 0.00236121, 2.15281e-05)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.999997, -0.000460195, 0.00242152, 2.20791e-05)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.999997, -0.00047164, 0.00248134, 2.2631e-05)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.999997, -0.000482949, 0.00254043, 2.31683e-05)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.999996, -0.00049404, 0.00259839, 2.37058e-05)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.999996, -0.000504707, 0.00265413, 2.41755e-05)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.999996, -0.000513423, 0.00269969, 2.46358e-05)
            }
        }
        KeyframeGroup {
            target: fist_L16
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-2.65427e-08, 0.425347, 2.98023e-08)
            }
        }
        KeyframeGroup {
            target: fist_L16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.987639, 0.0113776, 0.15604, -0.00957493)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.988035, 0.0114011, 0.153514, -0.00952044)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.988436, 0.0114252, 0.15091, -0.00946422)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.988842, 0.0114499, 0.148228, -0.00940628)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.989252, 0.0114753, 0.145469, -0.00934663)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.989665, 0.0115012, 0.142635, -0.00928531)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.99008, 0.0115277, 0.139727, -0.00922233)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.990496, 0.0115548, 0.136747, -0.00915774)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.990913, 0.0115823, 0.133698, -0.00909157)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.991329, 0.0116104, 0.130581, -0.0090239)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.991743, 0.0116389, 0.1274, -0.00895476)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.992154, 0.0116677, 0.124159, -0.00888425)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.992561, 0.011697, 0.120861, -0.00881243)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.992964, 0.0117266, 0.11751, -0.00873941)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.99336, 0.0117564, 0.114113, -0.00866529)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.99375, 0.0117865, 0.110673, -0.00859017)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.994131, 0.0118167, 0.107197, -0.00851419)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.994503, 0.011847, 0.103692, -0.00843748)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.994865, 0.0118774, 0.100163, -0.00836018)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.995216, 0.0119077, 0.096618, -0.00828246)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.995555, 0.011938, 0.0930647, -0.00820447)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.995881, 0.0119681, 0.089511, -0.00812639)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.996193, 0.011998, 0.085965, -0.00804841)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.996492, 0.0120275, 0.0824354, -0.00797071)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.996776, 0.0120567, 0.0789306, -0.00789348)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.997045, 0.0120855, 0.0754595, -0.00781691)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.997299, 0.0121137, 0.072031, -0.00774121)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.997537, 0.0121414, 0.0686537, -0.00766658)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.99776, 0.0121685, 0.0653364, -0.0075932)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.997968, 0.0121949, 0.0620874, -0.00752126)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.99816, 0.0122205, 0.058915, -0.00745096)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.998338, 0.0122453, 0.055827, -0.00738247)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.998501, 0.0122693, 0.0528306, -0.00731595)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.998651, 0.0122923, 0.049933, -0.00725158)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.998787, 0.0123144, 0.0471404, -0.00718948)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.99891, 0.0123356, 0.0444587, -0.00712981)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.999021, 0.0123557, 0.0418933, -0.00707269)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.99912, 0.0123749, 0.0394487, -0.00701821)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.999209, 0.0123929, 0.0371291, -0.00696649)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.999288, 0.0124099, 0.0349379, -0.0069176)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.999359, 0.0124259, 0.0328779, -0.00687161)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.99942, 0.0124407, 0.0309516, -0.00682859)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.999474, 0.0124545, 0.0291607, -0.00678857)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.999521, 0.0124662, 0.0275063, -0.00675155)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.999562, 0.0124788, 0.0259891, -0.00671764)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.999597, 0.0124883, 0.0246096, -0.00668674)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.999627, 0.0124987, 0.0233675, -0.00665896)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.999652, 0.0125062, 0.0222624, -0.00663492)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.999673, 0.0125145, 0.0212933, -0.00661251)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.999691, 0.012519, 0.0204592, -0.00659449)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.999705, 0.0125243, 0.0197587, -0.00657809)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.999716, 0.0125304, 0.01919, -0.00656673)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.999724, 0.0125243, 0.0187515, -0.00655671)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.99973, 0.012519, 0.018441, -0.00654827)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.999734, 0.0125146, 0.0182563, -0.0065481)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.999735, 0.0125109, 0.0181953, -0.00654945)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.999733, 0.0125081, 0.0182866, -0.00655267)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.999728, 0.0125065, 0.0185634, -0.00655817)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.999719, 0.0125061, 0.0190296, -0.00656599)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.999706, 0.0125068, 0.0196892, -0.00657617)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.999689, 0.0125089, 0.0205454, -0.00659657)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.999667, 0.0125122, 0.0216013, -0.00661941)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.999638, 0.0125012, 0.0228595, -0.00664755)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.999604, 0.0124915, 0.0243217, -0.00668032)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.999562, 0.0124788, 0.0259892, -0.00671764)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.999511, 0.0124645, 0.027862, -0.00675953)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.999451, 0.0124485, 0.0299399, -0.00680598)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.99938, 0.0124309, 0.0322209, -0.00685694)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.999297, 0.0124118, 0.0347025, -0.00691235)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.9992, 0.012391, 0.0373806, -0.0069721)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.999088, 0.0123686, 0.0402499, -0.00703607)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.99896, 0.0123447, 0.0433039, -0.0071041)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.998815, 0.0123192, 0.0465346, -0.00717601)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.998651, 0.0122923, 0.0499329, -0.00725157)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.998466, 0.012264, 0.0534882, -0.00733055)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.998261, 0.0122344, 0.0571885, -0.00741267)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.998034, 0.0122035, 0.0610211, -0.00749764)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.997784, 0.0121715, 0.0649719, -0.00758513)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.997512, 0.0121384, 0.0690262, -0.00767481)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.997216, 0.0121044, 0.0731686, -0.00776634)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.996897, 0.0120696, 0.0773832, -0.00785936)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.996556, 0.012034, 0.081654, -0.0079535)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.996193, 0.011998, 0.085965, -0.00804841)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.995809, 0.0119614, 0.0903003, -0.00814374)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.995406, 0.0119246, 0.0946444, -0.00823915)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.994983, 0.0118875, 0.0989826, -0.00833431)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.994544, 0.0118504, 0.103301, -0.00842892)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.994089, 0.0118133, 0.107585, -0.00852267)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.993621, 0.0117764, 0.111824, -0.00861531)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.993141, 0.0117398, 0.116006, -0.0087066)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.992651, 0.0117035, 0.120121, -0.00879631)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.992154, 0.0116677, 0.124159, -0.00888425)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.991651, 0.0116325, 0.128112, -0.00897024)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.991144, 0.0115979, 0.131974, -0.00905416)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.990635, 0.0115639, 0.135738, -0.00913585)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.990126, 0.0115307, 0.1394, -0.00921523)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.989619, 0.0114983, 0.142954, -0.0092922)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.989115, 0.0114668, 0.146397, -0.0093667)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.988616, 0.0114361, 0.149727, -0.00943867)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.988124, 0.0114064, 0.152942, -0.00950809)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.987639, 0.0113776, 0.15604, -0.00957493)
            }
        }
        KeyframeGroup {
            target: fist_R21
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.39698e-08, 0.425347, 5.58794e-08)
            }
        }
        KeyframeGroup {
            target: head11
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(8.73115e-11, 0.133498, -4.54656e-09)
            }
        }
        KeyframeGroup {
            target: head11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, -4.25991e-09, -0.000275475, -1.1735e-12)
            }
        }
        KeyframeGroup {
            target: hips7
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.99871, -0.0507688, -2.67326e-07, -2.27509e-08)
            }
        }
        KeyframeGroup {
            target: lowerArm_L15
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.49012e-08, 0.528271, -7.91624e-08)
            }
        }
        KeyframeGroup {
            target: lowerArm_R20
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(4.65661e-08, 0.528271, -6.51926e-08)
            }
        }
        KeyframeGroup {
            target: lowerLeg_L24
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.42027e-08, 0.453805, 4.36557e-09)
            }
        }
        KeyframeGroup {
            target: lowerLeg_L24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.947574, 0.319385, 0.00343158, 0.00921153)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.947812, 0.318677, 0.0034247, 0.00921409)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.947993, 0.318141, 0.00341948, 0.00921603)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.94823, 0.317432, 0.00341259, 0.00921858)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.948524, 0.316551, 0.00340403, 0.00922175)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.948875, 0.315498, 0.00339379, 0.00922552)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.949282, 0.314273, 0.00338188, 0.00922989)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.949742, 0.31288, 0.00336833, 0.00923485)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.950255, 0.311317, 0.00335313, 0.00924037)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.950819, 0.309591, 0.00333635, 0.00924645)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.951572, 0.307269, 0.00331376, 0.00925457)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.952229, 0.305226, 0.0032939, 0.00926165)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.95293, 0.303032, 0.00327255, 0.00926922)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.953672, 0.300689, 0.00324976, 0.00927723)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.954452, 0.298203, 0.00322557, 0.00928567)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.955268, 0.295579, 0.00320005, 0.0092945)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.956115, 0.292826, 0.00317326, 0.00930368)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.956992, 0.289949, 0.00314527, 0.00931318)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.958024, 0.286519, 0.00311189, 0.00932439)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.958944, 0.283425, 0.00308177, 0.00933438)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.959882, 0.28023, 0.00305067, 0.00934459)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.960835, 0.276947, 0.0030187, 0.00935497)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.961798, 0.273583, 0.00298595, 0.00936547)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.962768, 0.270149, 0.00295251, 0.00937607)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.963863, 0.266218, 0.00291423, 0.00938804)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.964832, 0.262685, 0.00287981, 0.00939866)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.965797, 0.259114, 0.00284503, 0.00940924)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.966754, 0.255518, 0.00280999, 0.00941976)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.9677, 0.251912, 0.00277485, 0.00943018)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.968743, 0.247871, 0.00273546, 0.00944168)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.969653, 0.244287, 0.00270053, 0.00945173)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.970542, 0.24073, 0.00266586, 0.00946156)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.971408, 0.237214, 0.00263158, 0.00947115)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.972352, 0.233314, 0.00259356, 0.00948164)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.973157, 0.229931, 0.00256056, 0.0094906)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.973932, 0.226628, 0.00252835, 0.00949923)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.974672, 0.223424, 0.0024971, 0.0095075)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.975476, 0.219887, 0.0024626, 0.00951649)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.976139, 0.216923, 0.00243368, 0.00952393)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.976764, 0.214094, 0.00240608, 0.00953094)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.977347, 0.211414, 0.00237992, 0.0095375)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.977983, 0.208454, 0.00235103, 0.00954466)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.978478, 0.206119, 0.00232824, 0.00955025)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.978928, 0.203969, 0.00230726, 0.00955534)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.979333, 0.202017, 0.00228821, 0.00955992)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.979692, 0.200268, 0.00227114, 0.00956399)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.980004, 0.198736, 0.00225617, 0.00956753)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.980358, 0.196983, 0.00223906, 0.00957155)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.980574, 0.195906, 0.00222854, 0.00957401)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.980742, 0.195062, 0.00222031, 0.00957592)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.980862, 0.194457, 0.0022144, 0.00957729)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.980959, 0.193967, 0.00220962, 0.00957839)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.980921, 0.194156, 0.00221146, 0.00957797)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.980814, 0.194696, 0.00221673, 0.00957675)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.980643, 0.195555, 0.00222512, 0.0095748)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.980414, 0.196704, 0.00223633, 0.00957219)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.980129, 0.198116, 0.00225012, 0.00956896)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.979702, 0.20022, 0.00227066, 0.0095641)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.979317, 0.202093, 0.00228894, 0.00955975)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.978889, 0.204158, 0.0023091, 0.0095549)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.978419, 0.206399, 0.00233098, 0.00954958)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.97791, 0.208794, 0.00235436, 0.00954385)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.977267, 0.211783, 0.00238352, 0.00953661)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.976686, 0.214449, 0.00240953, 0.00953007)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.976073, 0.217223, 0.0024366, 0.00952318)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.97543, 0.220091, 0.00246458, 0.00951598)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.974656, 0.223494, 0.00249778, 0.00950732)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.973955, 0.226528, 0.00252737, 0.00949949)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.973229, 0.229625, 0.00255758, 0.00949141)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.972481, 0.232777, 0.00258831, 0.00948307)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.971602, 0.236417, 0.00262381, 0.00947331)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.970807, 0.239659, 0.00265541, 0.0094645)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.969994, 0.242931, 0.00268732, 0.00945549)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.969162, 0.246228, 0.00271945, 0.0094463)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.968314, 0.249542, 0.00275175, 0.00943694)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.967333, 0.253318, 0.00278855, 0.00942613)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.966451, 0.256662, 0.00282113, 0.00941643)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.965556, 0.260009, 0.00285374, 0.0094066)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.964648, 0.263358, 0.00288636, 0.00939664)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.96373, 0.266699, 0.00291891, 0.00938658)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.962676, 0.270479, 0.00295572, 0.00937506)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.961734, 0.273808, 0.00298814, 0.00936477)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.960784, 0.277124, 0.00302043, 0.00935441)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.959827, 0.280422, 0.00305253, 0.00934398)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.958863, 0.283699, 0.00308443, 0.0093335)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.957895, 0.286951, 0.00311609, 0.00932298)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.956788, 0.29062, 0.0031518, 0.00931097)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.95581, 0.29382, 0.00318294, 0.00930037)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.954832, 0.296985, 0.00321373, 0.00928978)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.953854, 0.30011, 0.00324413, 0.0092792)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.95288, 0.303189, 0.00327408, 0.00926868)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.951912, 0.306212, 0.00330349, 0.00925824)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.950814, 0.309606, 0.00333649, 0.0092464)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.949874, 0.312477, 0.00336442, 0.00923627)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.948968, 0.315219, 0.00339107, 0.00922652)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.948132, 0.317724, 0.00341543, 0.00921753)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.947574, 0.319385, 0.00343158, 0.00921153)
            }
        }
        KeyframeGroup {
            target: lowerLeg_L24
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1.00001, 1.00001)
            }
        }
        KeyframeGroup {
            target: lowerLeg_R27
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-6.75209e-09, 0.453805, 1.17579e-08)
            }
        }
        KeyframeGroup {
            target: lowerLeg_R27
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.94783, 0.318625, -0.00342414, -0.00921429)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.948205, 0.317506, -0.00341326, -0.00921832)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.948433, 0.316824, -0.00340664, -0.00922077)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.948718, 0.315969, -0.00339833, -0.00922384)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.94906, 0.314941, -0.00338833, -0.00922752)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.949458, 0.313741, -0.00337666, -0.00923179)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.94991, 0.31237, -0.00336333, -0.00923666)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.950414, 0.310831, -0.00334837, -0.00924209)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.95097, 0.309128, -0.0033318, -0.00924808)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.951714, 0.306828, -0.00330944, -0.0092561)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.952363, 0.304807, -0.00328978, -0.00926311)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.953056, 0.302633, -0.00326863, -0.00927059)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.953791, 0.30031, -0.00324604, -0.00927853)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.954564, 0.297844, -0.00322204, -0.00928689)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.955373, 0.29524, -0.00319671, -0.00929564)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.956214, 0.292505, -0.0031701, -0.00930475)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.957083, 0.289646, -0.00314228, -0.00931418)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.958109, 0.286235, -0.00310907, -0.00932531)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.959023, 0.283156, -0.00307911, -0.00933525)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.959956, 0.279979, -0.00304818, -0.0093454)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.960903, 0.276712, -0.00301637, -0.00935571)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.961861, 0.273363, -0.00298377, -0.00936616)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.962826, 0.269944, -0.00295048, -0.0093767)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.963915, 0.266029, -0.00291234, -0.00938862)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.964879, 0.262509, -0.00287806, -0.00939918)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.96584, 0.258952, -0.0028434, -0.00940972)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.966793, 0.25537, -0.0028085, -0.0094202)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.967851, 0.251334, -0.00276917, -0.00943183)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.968775, 0.247748, -0.00273423, -0.00944203)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.969681, 0.244175, -0.0026994, -0.00945204)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.970567, 0.24063, -0.00266485, -0.00946184)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.971429, 0.237125, -0.00263067, -0.0094714)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.972371, 0.233236, -0.00259275, -0.00948185)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.973174, 0.229861, -0.00255984, -0.00949079)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.973946, 0.226568, -0.00252772, -0.00949939)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.974684, 0.223371, -0.00249654, -0.00950764)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.975486, 0.219843, -0.00246212, -0.00951661)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.976147, 0.216886, -0.00243327, -0.00952402)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.97677, 0.214064, -0.00240573, -0.00953102)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.977352, 0.211391, -0.00237965, -0.00953756)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.977987, 0.208434, -0.0023508, -0.00954471)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.978481, 0.206104, -0.00232806, -0.00955029)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.97893, 0.203959, -0.00230712, -0.00955537)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.979334, 0.202009, -0.00228809, -0.00955994)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.979693, 0.200264, -0.00227105, -0.009564)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.980004, 0.198733, -0.00225611, -0.00956754)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.980358, 0.196982, -0.00223901, -0.00957156)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.980574, 0.195905, -0.0022285, -0.00957401)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.980741, 0.195063, -0.00222027, -0.00957592)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.980862, 0.194457, -0.00221435, -0.00957729)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.980959, 0.193967, -0.00220957, -0.00957839)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.980921, 0.194157, -0.00221142, -0.00957797)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.980814, 0.194696, -0.00221669, -0.00957675)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.980643, 0.195555, -0.00222507, -0.0095748)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.980414, 0.196703, -0.00223629, -0.00957219)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.98013, 0.198114, -0.00225006, -0.00956896)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.979703, 0.200215, -0.00227057, -0.00956412)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.979319, 0.202084, -0.00228882, -0.00955977)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.978891, 0.204147, -0.00230896, -0.00955492)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.978422, 0.206382, -0.00233077, -0.00954963)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.977915, 0.208773, -0.0023541, -0.0095439)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.977274, 0.211753, -0.00238318, -0.00953668)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.976694, 0.214412, -0.00240913, -0.00953016)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.976082, 0.217178, -0.00243612, -0.00952329)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.975442, 0.220037, -0.00246401, -0.00951612)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.974671, 0.223429, -0.0024971, -0.00950749)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.973973, 0.226451, -0.00252658, -0.0094997)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.973251, 0.229536, -0.00255667, -0.00949164)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.972505, 0.232674, -0.00258727, -0.00948335)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.971739, 0.235855, -0.00261829, -0.00947483)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.97084, 0.239526, -0.00265408, -0.00946487)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.970031, 0.242782, -0.00268582, -0.00945591)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.969204, 0.246062, -0.00271779, -0.00944677)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.968361, 0.24936, -0.00274993, -0.00943746)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.967386, 0.253115, -0.00278653, -0.00942672)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.96651, 0.25644, -0.00281893, -0.00941708)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.965621, 0.259766, -0.00285134, -0.00940732)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.96472, 0.263094, -0.00288375, -0.00939744)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.963809, 0.266414, -0.00291609, -0.00938745)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.962763, 0.270169, -0.00295266, -0.00937601)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.961829, 0.273475, -0.00298485, -0.00936581)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.960887, 0.276766, -0.0030169, -0.00935554)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.959938, 0.280038, -0.00304876, -0.00934521)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.958984, 0.283289, -0.0030804, -0.00933482)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.958025, 0.286515, -0.0031118, -0.0093244)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.956929, 0.290155, -0.00314723, -0.0093125)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.955962, 0.293327, -0.00317809, -0.00930202)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.954994, 0.296463, -0.00320861, -0.00929154)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.954027, 0.299558, -0.00323872, -0.00928108)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.953065, 0.302607, -0.00326838, -0.00927068)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.952109, 0.305601, -0.0032975, -0.00926036)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.951165, 0.308525, -0.00332594, -0.00925019)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.950096, 0.311801, -0.0033578, -0.00923867)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.949203, 0.314512, -0.00338416, -0.00922905)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.948379, 0.316987, -0.00340822, -0.00922019)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.94783, 0.318625, -0.00342414, -0.00921429)
            }
        }
        KeyframeGroup {
            target: lowerLeg_R27
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1.00001, 1.00001)
            }
        }
        KeyframeGroup {
            target: neck10
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-5.09317e-11, 0.476891, 8.69704e-10)
            }
        }
        KeyframeGroup {
            target: neck10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.999488, -0.0319862, 2.41971e-05, 0.000139822)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.999481, -0.0322248, 2.39571e-05, 0.000138544)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.999471, -0.0325334, 2.37204e-05, 0.000136894)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.99946, -0.0328587, 2.34853e-05, 0.000135156)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.999449, -0.0331927, 2.32517e-05, 0.000133371)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.999438, -0.0335323, 2.29794e-05, 0.000131555)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.999426, -0.0338757, 2.27086e-05, 0.000129719)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.999414, -0.0342221, 2.24391e-05, 0.000127867)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.999402, -0.0345708, 2.21711e-05, 0.000126003)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.99939, -0.0349213, 2.18939e-05, 0.000124128)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.999378, -0.0352733, 2.1618e-05, 0.000122246)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.999365, -0.0356266, 2.13436e-05, 0.000120357)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.999352, -0.035981, 2.10637e-05, 0.000118462)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.99934, -0.0363362, 2.07852e-05, 0.000116562)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.999327, -0.0366923, 2.05081e-05, 0.000114658)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.999313, -0.037049, 2.02266e-05, 0.00011275)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.9993, -0.0374063, 1.99466e-05, 0.00011084)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.999287, -0.0377642, 1.9668e-05, 0.000108926)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.999273, -0.0381224, 1.93854e-05, 0.00010701)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.999259, -0.0384811, 1.91042e-05, 0.000105092)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.999245, -0.03884, 1.88245e-05, 0.000103172)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.999231, -0.0391993, 1.85412e-05, 0.000101251)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.999217, -0.0395587, 1.82593e-05, 9.93279e-05)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.999203, -0.0399184, 1.79788e-05, 9.74042e-05)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.999188, -0.0402782, 1.76951e-05, 9.54795e-05)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.999174, -0.0406382, 1.74128e-05, 9.35543e-05)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.999159, -0.0409982, 1.71319e-05, 9.16286e-05)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.999144, -0.0413583, 1.68482e-05, 8.97025e-05)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.999129, -0.0417183, 1.65658e-05, 8.77764e-05)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.999114, -0.0420784, 1.62848e-05, 8.58504e-05)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.999099, -0.0424384, 1.60012e-05, 8.39246e-05)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.999084, -0.0427983, 1.57189e-05, 8.19992e-05)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.999068, -0.0431581, 1.54381e-05, 8.00746e-05)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.999053, -0.0435177, 1.51548e-05, 7.81507e-05)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.999037, -0.0438771, 1.4873e-05, 7.62279e-05)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.999021, -0.0442363, 1.45924e-05, 7.43064e-05)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.999005, -0.0445952, 1.43099e-05, 7.23862e-05)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.998989, -0.0449537, 1.40287e-05, 7.04679e-05)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.998973, -0.0453118, 1.37488e-05, 6.85517e-05)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.998957, -0.0456696, 1.34673e-05, 6.66378e-05)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.99894, -0.0460267, 1.31872e-05, 6.47267e-05)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.998924, -0.0463833, 1.29082e-05, 6.28187e-05)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.998907, -0.0467392, 1.26285e-05, 6.09143e-05)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.99889, -0.0470943, 1.235e-05, 5.90142e-05)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.998874, -0.0474485, 1.20726e-05, 5.7119e-05)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.998857, -0.0478016, 1.17956e-05, 5.52295e-05)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.99884, -0.0481535, 1.15196e-05, 5.33467e-05)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.998823, -0.0485038, 1.12447e-05, 5.14721e-05)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.998806, -0.0488522, 1.09725e-05, 4.96073e-05)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.998789, -0.0491984, 1.07011e-05, 4.77548e-05)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.998772, -0.0495417, 1.04304e-05, 4.59179e-05)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.998755, -0.049881, 1.01696e-05, 4.41022e-05)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.998738, -0.0502147, 9.90877e-06, 4.23159e-05)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.998722, -0.0505398, 9.64715e-06, 4.05757e-05)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.998706, -0.0508482, 9.87237e-06, 3.8949e-05)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.998694, -0.0510866, 1.00822e-05, 3.76936e-05)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.998709, -0.0508044, 1.0171e-05, 3.91971e-05)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.998728, -0.0504292, 1.02394e-05, 4.11934e-05)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.998748, -0.050031, 1.03043e-05, 4.33117e-05)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.998768, -0.0496209, 1.03682e-05, 4.54939e-05)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.998789, -0.0492031, 1.06991e-05, 4.773e-05)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.99881, -0.0487799, 1.10306e-05, 4.99947e-05)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.99883, -0.0483527, 1.13633e-05, 5.22807e-05)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.998851, -0.0479224, 1.17011e-05, 5.45834e-05)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.998872, -0.0474896, 1.20405e-05, 5.68993e-05)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.998892, -0.0470547, 1.23815e-05, 5.92261e-05)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.998913, -0.0466182, 1.27232e-05, 6.15618e-05)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.998933, -0.0461803, 1.30667e-05, 6.39049e-05)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.998953, -0.0457412, 1.3412e-05, 6.62543e-05)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.998973, -0.0453011, 1.37559e-05, 6.86089e-05)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.998993, -0.0448603, 1.41017e-05, 7.09679e-05)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.999013, -0.0444186, 1.44494e-05, 7.33307e-05)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.999033, -0.0439764, 1.47945e-05, 7.56964e-05)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.999052, -0.0435338, 1.51416e-05, 7.80647e-05)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.999071, -0.0430907, 1.54907e-05, 8.04349e-05)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.99909, -0.0426474, 1.58365e-05, 8.28066e-05)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.999109, -0.0422038, 1.61844e-05, 8.51793e-05)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.999128, -0.0417602, 1.65343e-05, 8.75527e-05)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.999146, -0.0413164, 1.68802e-05, 8.99262e-05)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.999164, -0.0408728, 1.72281e-05, 9.22995e-05)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.999182, -0.0404292, 1.75782e-05, 9.46723e-05)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.9992, -0.0399858, 1.79235e-05, 9.70438e-05)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.999218, -0.0395427, 1.82709e-05, 9.94139e-05)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.999235, -0.0390999, 1.86204e-05, 0.000101782)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.999252, -0.0386576, 1.89647e-05, 0.000104148)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.99927, -0.0382159, 1.93111e-05, 0.00010651)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.999286, -0.0377748, 1.96596e-05, 0.000108869)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.999303, -0.0373346, 2.00018e-05, 0.000111223)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.999319, -0.0368954, 2.0346e-05, 0.000113572)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.999335, -0.0364573, 2.06925e-05, 0.000115915)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.999351, -0.0360206, 2.10314e-05, 0.00011825)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.999367, -0.0355855, 2.13724e-05, 0.000120576)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.999382, -0.0351525, 2.17156e-05, 0.000122892)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.999397, -0.034722, 2.20482e-05, 0.000125194)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.999412, -0.0342945, 2.2383e-05, 0.00012748)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.999426, -0.0338711, 2.27199e-05, 0.000129744)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.99944, -0.033453, 2.30383e-05, 0.000131979)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.999454, -0.0330426, 2.33588e-05, 0.000134174)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.999467, -0.0326441, 2.36817e-05, 0.000136304)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.999479, -0.0322687, 2.39372e-05, 0.00013831)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.999488, -0.0319862, 2.41971e-05, 0.000139822)
            }
        }
        KeyframeGroup {
            target: poleTarget_L29
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, 0, 1.19209e-07, 0)
            }
        }
        KeyframeGroup {
            target: poleTarget_R33
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, 0, -5.96046e-07, 0)
            }
        }
        KeyframeGroup {
            target: shoulder_L13
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.133202, 0.140841, 0.0135214)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(0.133692, 0.140801, 0.0135265)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(0.134213, 0.14076, 0.0135317)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(0.134764, 0.14072, 0.0135368)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(0.135342, 0.14068, 0.0135419)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0.135946, 0.14064, 0.0135471)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0.136573, 0.140599, 0.0135522)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0.137219, 0.140559, 0.0135573)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0.137879, 0.140513, 0.0135624)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0.138548, 0.140467, 0.0135676)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0.13922, 0.140421, 0.0135727)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(0.139888, 0.140375, 0.0135778)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(0.140545, 0.14033, 0.0135829)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(0.141184, 0.140284, 0.0135881)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(0.141797, 0.140238, 0.0135932)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(0.142378, 0.140248, 0.0135983)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(0.14292, 0.140258, 0.0136035)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(0.143419, 0.140268, 0.0136086)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(0.143869, 0.140278, 0.0136137)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(0.144269, 0.140288, 0.0136188)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(0.144614, 0.140298, 0.013624)
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(0.144905, 0.140308, 0.0136209)
            }
            Keyframe {
                frame: 958.333
                value: Qt.vector3d(0.145323, 0.140328, 0.0136147)
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(0.145029, 0.140398, 0.0135932)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.vector3d(0.144734, 0.140408, 0.0135902)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(0.144376, 0.140418, 0.0135871)
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(0.143957, 0.140428, 0.013584)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(0.14348, 0.140438, 0.0135809)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(0.142949, 0.140448, 0.0135779)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(0.14237, 0.140458, 0.0135748)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(0.14175, 0.140468, 0.0135717)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(0.141096, 0.140478, 0.0135687)
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(0.140418, 0.140488, 0.0135656)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(0.139725, 0.140498, 0.0135625)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(0.139027, 0.140508, 0.0135594)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(0.138334, 0.140518, 0.0135564)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(0.137656, 0.140528, 0.0135533)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(0.137003, 0.140561, 0.0135502)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(0.136382, 0.140593, 0.0135472)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(0.135804, 0.140626, 0.0135441)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(0.135273, 0.140658, 0.013541)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(0.134795, 0.14069, 0.0135379)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(0.134376, 0.140723, 0.0135349)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(0.134018, 0.140755, 0.0135318)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(0.133724, 0.140788, 0.0135287)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(0.133528, 0.14082, 0.0135256)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(0.133331, 0.140798, 0.0135226)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(0.133567, 0.14069, 0.0135445)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(0.133852, 0.140668, 0.0135488)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(0.134217, 0.140646, 0.0135532)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(0.13466, 0.140625, 0.0135576)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(0.135177, 0.140603, 0.013562)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(0.135761, 0.140581, 0.0135663)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(0.136406, 0.140559, 0.0135707)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(0.137101, 0.140538, 0.0135751)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(0.137837, 0.140516, 0.0135795)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(0.138599, 0.140463, 0.0135838)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(0.139376, 0.14041, 0.0135882)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(0.140153, 0.140358, 0.0135926)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(0.140916, 0.140305, 0.013597)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(0.141651, 0.140252, 0.0136014)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(0.142347, 0.1402, 0.0136057)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(0.142991, 0.140216, 0.0136101)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(0.143576, 0.140233, 0.0136145)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(0.144092, 0.14025, 0.0136189)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(0.144536, 0.140267, 0.0136232)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(0.144901, 0.140284, 0.0136175)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(0.145389, 0.140317, 0.0136059)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.vector3d(0.145443, 0.140368, 0.0135887)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.vector3d(0.145103, 0.140385, 0.0135829)
            }
            Keyframe {
                frame: 3500
                value: Qt.vector3d(0.144512, 0.140401, 0.0135771)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.vector3d(0.143659, 0.140418, 0.0135714)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.vector3d(0.142553, 0.140435, 0.0135656)
            }
            Keyframe {
                frame: 3625
                value: Qt.vector3d(0.141231, 0.140452, 0.0135598)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.vector3d(0.139769, 0.140469, 0.0135541)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.vector3d(0.138266, 0.140486, 0.0135483)
            }
            Keyframe {
                frame: 3750
                value: Qt.vector3d(0.136827, 0.140567, 0.0135425)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.vector3d(0.135541, 0.140649, 0.0135368)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.vector3d(0.13446, 0.140731, 0.013531)
            }
            Keyframe {
                frame: 3875
                value: Qt.vector3d(0.133608, 0.140813, 0.0135252)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.vector3d(0.132987, 0.140817, 0.0135195)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.vector3d(0.132584, 0.140821, 0.0135198)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.vector3d(0.132501, 0.140833, 0.0135208)
            }
            Keyframe {
                frame: 4125
                value: Qt.vector3d(0.132787, 0.140837, 0.0135211)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.vector3d(0.133202, 0.140841, 0.0135214)
            }
        }
        KeyframeGroup {
            target: shoulder_R18
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.143338, 0.14004, 0.0136241)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-0.143685, 0.140013, 0.0136085)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-0.144072, 0.139986, 0.0135929)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-0.144495, 0.139958, 0.0135773)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-0.144943, 0.139931, 0.0135617)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-0.145403, 0.139904, 0.0135461)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-0.145858, 0.139877, 0.0135305)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-0.146073, 0.139863, 0.0135227)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-0.146288, 0.139849, 0.0135238)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-0.146673, 0.139822, 0.0135262)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-0.146999, 0.139795, 0.0135285)
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(-0.147355, 0.139754, 0.013532)
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(-0.146965, 0.139921, 0.0135425)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.vector3d(-0.146621, 0.13994, 0.0135437)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(-0.146203, 0.139958, 0.0135448)
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(-0.145712, 0.139977, 0.013546)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(-0.145154, 0.139995, 0.0135472)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(-0.144532, 0.140014, 0.0135483)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(-0.143855, 0.140033, 0.0135495)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(-0.14313, 0.140051, 0.0135507)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(-0.142365, 0.140107, 0.0135518)
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(-0.141572, 0.140164, 0.013553)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-0.140762, 0.14022, 0.0135542)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-0.139945, 0.140276, 0.0135553)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-0.139134, 0.140332, 0.0135565)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-0.138341, 0.140381, 0.0135577)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-0.137577, 0.140429, 0.0135588)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-0.136851, 0.140478, 0.01356)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-0.136174, 0.140527, 0.0135612)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-0.135553, 0.140575, 0.0135623)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-0.134995, 0.140624, 0.0135635)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-0.134504, 0.140607, 0.0135647)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-0.134085, 0.140591, 0.0135658)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-0.133741, 0.140574, 0.013567)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-0.133473, 0.140558, 0.0135682)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-0.133168, 0.140525, 0.0135705)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-0.133557, 0.140459, 0.0135752)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-0.133891, 0.140442, 0.0135763)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-0.134318, 0.140426, 0.0135775)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-0.134836, 0.140409, 0.0135787)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-0.135441, 0.140393, 0.0135798)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-0.136124, 0.140376, 0.013581)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-0.136878, 0.14036, 0.0135822)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-0.137692, 0.140343, 0.0135833)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-0.138552, 0.140327, 0.0135845)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-0.139445, 0.14031, 0.0135856)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-0.140353, 0.140249, 0.0135868)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-0.141262, 0.140187, 0.013588)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-0.142154, 0.140126, 0.0135891)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-0.143015, 0.140064, 0.0135903)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-0.143828, 0.140002, 0.0135915)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-0.144582, 0.140004, 0.0135926)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-0.145266, 0.140005, 0.0135938)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-0.14587, 0.140006, 0.013595)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-0.146389, 0.140008, 0.0135961)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-0.146816, 0.140009, 0.0135973)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-0.147149, 0.14001, 0.0135985)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-0.147529, 0.140013, 0.0136008)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.vector3d(-0.147156, 0.140021, 0.0136078)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.vector3d(-0.146747, 0.140024, 0.0136101)
            }
            Keyframe {
                frame: 3750
                value: Qt.vector3d(-0.146223, 0.140027, 0.0136125)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.vector3d(-0.145928, 0.140028, 0.0136136)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.vector3d(-0.145621, 0.140029, 0.0136148)
            }
            Keyframe {
                frame: 3875
                value: Qt.vector3d(-0.145306, 0.140031, 0.013616)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.vector3d(-0.144991, 0.140032, 0.0136171)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.vector3d(-0.144681, 0.140033, 0.0136183)
            }
            Keyframe {
                frame: 4000
                value: Qt.vector3d(-0.144381, 0.140035, 0.0136195)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.vector3d(-0.143823, 0.140037, 0.0136218)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.vector3d(-0.143338, 0.14004, 0.0136241)
            }
        }
        KeyframeGroup {
            target: torso9
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-2.91038e-11, 0.298579, -3.63866e-09)
            }
        }
        KeyframeGroup {
            target: torso9
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.999977, -0.00683997, -8.32345e-07, -1.52617e-09)
            }
        }
        KeyframeGroup {
            target: upperArm_L14
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-2.1403e-07, 0.259532, -5.82077e-10)
            }
        }
        KeyframeGroup {
            target: upperArm_R19
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.62981e-08, 0.259532, -3.14321e-09)
            }
        }
        KeyframeGroup {
            target: upperLeg_L23
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.253029, -0.0167022, -0.0559238)
            }
        }
        KeyframeGroup {
            target: upperLeg_L23
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.130524, 0.9914, 0.0092765, 0.00207965)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.131345, 0.991291, 0.00927388, 0.00205066)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.132166, 0.991182, 0.00927279, 0.00201054)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.132988, 0.991072, 0.00927221, 0.00196712)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.133809, 0.990962, 0.00927201, 0.00192153)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.134412, 0.99088, 0.00928173, 0.00187347)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.135014, 0.990798, 0.00929171, 0.00182401)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.135617, 0.990716, 0.00930193, 0.00177332)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.136219, 0.990633, 0.00931237, 0.00172142)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.136822, 0.99055, 0.00932304, 0.00166844)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.136557, 0.990587, 0.00933532, 0.00160628)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.136292, 0.990623, 0.00934771, 0.0015431)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.136027, 0.99066, 0.00936836, 0.00148015)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.135762, 0.990696, 0.0093891, 0.00141629)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.135497, 0.990732, 0.00941328, 0.00135206)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.135232, 0.990768, 0.00943754, 0.00128701)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.134967, 0.990804, 0.00946484, 0.00122165)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.134703, 0.99084, 0.0094922, 0.00115562)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.134438, 0.990876, 0.00952159, 0.0010892)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.134173, 0.990911, 0.00955224, 0.00102242)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.133908, 0.990947, 0.00958406, 0.000955281)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.133643, 0.990983, 0.00961671, 0.000887853)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.133378, 0.991018, 0.00965039, 0.000820165)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.132424, 0.991146, 0.0096853, 0.000745565)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.131469, 0.991272, 0.00972071, 0.000670771)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.130515, 0.991398, 0.00975651, 0.000595829)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.12956, 0.991523, 0.00979254, 0.000520809)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.12843, 0.99167, 0.00982862, 0.000444023)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.1273, 0.991815, 0.00986469, 0.000367299)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.12617, 0.991959, 0.00990057, 0.000290608)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.124945, 0.992114, 0.00993612, 0.000213121)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.123719, 0.992267, 0.00997118, 0.000135815)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.122494, 0.992419, 0.0100055, 5.87627e-05)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.121228, 0.992574, 0.0100391, -1.84446e-05)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.119962, 0.992727, 0.0100719, -9.52838e-05)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.118695, 0.992879, 0.0101037, -0.000171745)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.11746, 0.993026, 0.0101344, -0.000247427)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.116225, 0.993171, 0.0101639, -0.000322624)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.11499, 0.993314, 0.0101922, -0.000397311)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.113844, 0.993446, 0.0102192, -0.00047043)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.112699, 0.993576, 0.0102442, -0.000543031)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.111553, 0.993705, 0.0102689, -0.00061482)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.110556, 0.993816, 0.010291, -0.000684499)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.109558, 0.993927, 0.0103129, -0.00075325)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.10856, 0.994036, 0.0103318, -0.000821332)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.107796, 0.994119, 0.0103507, -0.000885963)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.107032, 0.994201, 0.0103666, -0.000949876)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.106268, 0.994283, 0.0103823, -0.00101262)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.105504, 0.994364, 0.0103941, -0.00107461)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.105696, 0.994343, 0.0104069, -0.00112527)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.105888, 0.994323, 0.0104195, -0.00117455)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.10608, 0.994302, 0.0104233, -0.00122322)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.106272, 0.994282, 0.010427, -0.0012701)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.106464, 0.994261, 0.0104304, -0.00131474)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.106656, 0.99424, 0.0104335, -0.0013561)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.106848, 0.99422, 0.0104355, -0.00138694)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.107039, 0.994199, 0.0104296, -0.00134392)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.10723, 0.994179, 0.0104222, -0.00128836)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.107421, 0.994158, 0.0104145, -0.00122881)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.107612, 0.994138, 0.0104064, -0.00116667)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.107803, 0.994117, 0.0103981, -0.0011025)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.107994, 0.994097, 0.0103895, -0.00103669)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.108185, 0.994076, 0.0103808, -0.000969387)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.108375, 0.994056, 0.010372, -0.000900764)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.108566, 0.994035, 0.0103543, -0.000831903)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.108757, 0.994014, 0.0103365, -0.000761954)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.108948, 0.993994, 0.0103185, -0.000691037)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.1098, 0.9939, 0.0102985, -0.000612598)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.110653, 0.993806, 0.0102783, -0.000533301)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.111505, 0.993711, 0.0102562, -0.000453456)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.112357, 0.993615, 0.010234, -0.000372867)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.113235, 0.993516, 0.01021, -0.000291493)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.114114, 0.993415, 0.0101857, -0.0002095)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.114993, 0.993314, 0.01016, -0.000127067)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.115871, 0.993213, 0.0101341, -4.40774e-05)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.116721, 0.993113, 0.0101067, 3.90058e-05)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.117571, 0.993013, 0.0100791, 0.000122585)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.118421, 0.992913, 0.0100502, 0.000206489)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.119271, 0.992811, 0.0100212, 0.000290794)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.120046, 0.992718, 0.00999121, 0.000374665)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.120821, 0.992624, 0.00996046, 0.000458883)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.121596, 0.99253, 0.00992913, 0.000543357)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.12237, 0.992435, 0.00989711, 0.000628133)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.123034, 0.992353, 0.00986462, 0.000712074)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.123699, 0.992271, 0.00983169, 0.000796191)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.124363, 0.992188, 0.00979809, 0.000880553)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.125027, 0.992105, 0.00976394, 0.000965103)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.125691, 0.992021, 0.00972932, 0.00104977)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.126192, 0.991958, 0.00969446, 0.00113297)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.126694, 0.991894, 0.00965912, 0.00121629)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.127196, 0.99183, 0.00962351, 0.00129965)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.127697, 0.991766, 0.00958746, 0.001383)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.128199, 0.991701, 0.00955111, 0.00146632)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.1287, 0.991637, 0.00951449, 0.00154948)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.128961, 0.991603, 0.00947811, 0.00163015)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.129221, 0.991569, 0.00944161, 0.00171049)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.129482, 0.991536, 0.00940536, 0.00179022)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.129742, 0.991502, 0.00936933, 0.00186911)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.130003, 0.991468, 0.00933407, 0.00194638)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.130263, 0.991434, 0.00930085, 0.00202041)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.130524, 0.9914, 0.0092765, 0.00207965)
            }
        }
        KeyframeGroup {
            target: upperLeg_L23
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.999998, 0.999996, 0.999951)
            }
        }
        KeyframeGroup {
            target: upperLeg_R26
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.254712, -0.0167022, -0.0559241)
            }
        }
        KeyframeGroup {
            target: upperLeg_R26
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.128573, 0.991628, -0.0112937, 0.00392707)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.129433, 0.991516, -0.0112884, 0.00388769)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.130293, 0.991404, -0.0112819, 0.00384016)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.131153, 0.991291, -0.011275, 0.00379012)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.132013, 0.991177, -0.0112678, 0.00373841)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.132658, 0.991091, -0.0112596, 0.00368777)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.133304, 0.991005, -0.0112479, 0.00363632)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.133949, 0.990918, -0.011236, 0.00358381)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.134594, 0.990831, -0.0112238, 0.00353025)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.13524, 0.990743, -0.0112101, 0.00347588)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.135015, 0.990774, -0.0111932, 0.00343049)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.134791, 0.990805, -0.0111761, 0.00338419)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.134567, 0.990836, -0.0111579, 0.00333719)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.134342, 0.990867, -0.0111396, 0.00328937)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.134118, 0.990898, -0.0111205, 0.0032409)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.133894, 0.990928, -0.0111014, 0.00319173)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.133669, 0.990959, -0.0110816, 0.00314195)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.133445, 0.99099, -0.0110617, 0.00309152)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.13322, 0.99102, -0.0110413, 0.00304059)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.132996, 0.991051, -0.0110209, 0.00298913)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.132771, 0.991081, -0.0109999, 0.00293721)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.132547, 0.991112, -0.010979, 0.00288488)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.132323, 0.991142, -0.0109579, 0.00283218)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.131406, 0.991264, -0.0109348, 0.0027868)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.13049, 0.991386, -0.0109117, 0.00274109)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.129574, 0.991506, -0.0108887, 0.00269516)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.128657, 0.991626, -0.0108659, 0.00264901)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.127564, 0.991768, -0.0108428, 0.00260464)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.12647, 0.991908, -0.0108201, 0.00256016)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.125377, 0.992047, -0.0107975, 0.0025157)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.124187, 0.992197, -0.0107752, 0.0024722)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.122998, 0.992346, -0.0107531, 0.00242877)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.121809, 0.992493, -0.0107319, 0.00238542)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.120577, 0.992643, -0.0107107, 0.00234269)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.119346, 0.992793, -0.0106905, 0.00230012)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.118114, 0.99294, -0.0106704, 0.0022578)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.116913, 0.993083, -0.0106518, 0.00221533)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.115711, 0.993224, -0.0106333, 0.00217325)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.114509, 0.993363, -0.010615, 0.00213156)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.113396, 0.993491, -0.0105986, 0.00208918)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.112282, 0.993618, -0.0105825, 0.00204723)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.111169, 0.993743, -0.0105665, 0.00200588)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.110232, 0.993848, -0.0105531, 0.00196287)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.109295, 0.993952, -0.0105399, 0.00192047)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.108359, 0.994054, -0.0105268, 0.00187862)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.107422, 0.994156, -0.0105139, 0.00183744)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.10681, 0.994222, -0.0105083, 0.0017927)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.106198, 0.994288, -0.0105028, 0.0017487)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.105587, 0.994353, -0.0104974, 0.00170541)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.104975, 0.994418, -0.0104922, 0.00166291)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.104363, 0.994483, -0.0104871, 0.00162123)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.104594, 0.994458, -0.0104835, 0.00157165)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.104825, 0.994434, -0.01048, 0.00152325)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.105056, 0.99441, -0.0104767, 0.00147638)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.105287, 0.994386, -0.0104736, 0.00143214)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.105519, 0.994361, -0.0104715, 0.0013976)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.10575, 0.994336, -0.0104771, 0.00143538)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.105982, 0.994312, -0.0104839, 0.00148451)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.106214, 0.994287, -0.0104911, 0.00153659)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.106446, 0.994262, -0.0104985, 0.00159033)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.106678, 0.994237, -0.010506, 0.0016452)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.10691, 0.994212, -0.0105136, 0.00170098)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.107142, 0.994186, -0.0105214, 0.00175748)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.107374, 0.994161, -0.0105292, 0.00181461)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.107606, 0.994136, -0.0105371, 0.00187225)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.107838, 0.994111, -0.0105451, 0.0019304)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.108633, 0.994024, -0.0105543, 0.00198298)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.109428, 0.993937, -0.0105636, 0.00203597)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.110223, 0.993849, -0.0105731, 0.00208931)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.111017, 0.99376, -0.0105827, 0.002143)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.111854, 0.993666, -0.0105925, 0.00219656)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.112692, 0.993571, -0.0106088, 0.00224972)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.113529, 0.993475, -0.0106252, 0.00230312)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.114366, 0.993379, -0.0106418, 0.00235683)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.115181, 0.993284, -0.01066, 0.00241087)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.115996, 0.993189, -0.0106783, 0.00246516)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.116811, 0.993093, -0.0106967, 0.00251969)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.117626, 0.992997, -0.0107167, 0.00257432)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.118375, 0.992907, -0.0107367, 0.00262983)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.119125, 0.992817, -0.0107569, 0.00268565)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.119874, 0.992727, -0.0107784, 0.00274152)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.120623, 0.992636, -0.0108, 0.00279761)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.121266, 0.992557, -0.0108224, 0.00285498)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.121909, 0.992478, -0.010845, 0.00291255)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.122552, 0.992398, -0.0108687, 0.00297024)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.123195, 0.992318, -0.0108925, 0.00302816)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.123837, 0.992238, -0.0109175, 0.00308612)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.124319, 0.992177, -0.010942, 0.00314606)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.124801, 0.992116, -0.0109677, 0.00320608)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.125283, 0.992055, -0.0109934, 0.00326623)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.125765, 0.991993, -0.0110203, 0.00332647)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.126247, 0.991931, -0.0110473, 0.00338679)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.126729, 0.99187, -0.0110753, 0.0034471)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.12696, 0.99184, -0.0111024, 0.00351026)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.12719, 0.991809, -0.0111305, 0.00357333)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.127421, 0.991779, -0.0111587, 0.00363626)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.127651, 0.991749, -0.0111875, 0.00369884)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.127882, 0.991719, -0.0112162, 0.00376088)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.128112, 0.991689, -0.0112445, 0.00382185)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.128342, 0.991658, -0.0112724, 0.00388027)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.128573, 0.991628, -0.0112937, 0.00392707)
            }
        }
        KeyframeGroup {
            target: upperLeg_R26
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.999998, 0.999996, 0.999952)
            }
        }
    }

}
