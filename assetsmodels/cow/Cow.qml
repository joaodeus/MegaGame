import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: white_material
        objectName: "White"
        baseColor: "#ffa3a3a3"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: black_material
        objectName: "Black"
        baseColor: "#ff060606"
        roughness: 0.690034806728363
    }
    PrincipledMaterial {
        id: pink_material
        objectName: "Pink"
        baseColor: "#ffa3242c"
        roughness: 0.690034806728363
    }
    Skin {
        id: skin
        joints: [
            root,
            frontFoot_R,
            body,
            frontLeg_R,
            frontUpLeg_R,
            frontLowLeg_R,
            backLeg_R,
            backUpLeg_R,
            backLowLeg_R,
            frontLeg_L,
            frontUpLeg_L,
            frontLowLeg_L,
            backLeg_L,
            backUpLeg_L,
            backLowLeg_L,
            back,
            tail1,
            tail2,
            tail3,
            tail4,
            shoulders,
            neck,
            head,
            hips,
            torso,
            backFoot_R,
            frontFoot_L,
            backFoot_L
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 0, 1, 0, 0, -1, 0, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, -1.75635e-06, 0.911771, 0, -1, 0, -1.92702, -1.75635e-06, 0, -1, 0.100002, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00537765, 0, 0, 1, -2.30208, 0, -1, 0, 0.0173542, 0, 0, 0, 1),
            Qt.matrix4x4(7.70412e-14, 1.94707e-07, 1, -2.57197, -1, 3.95677e-07, -1.5656e-13, -0.319302, -3.95677e-07, -1, 1.94707e-07, -1.85574, 0, 0, 0, 1),
            Qt.matrix4x4(0.999279, -0.0366191, 0.00999566, 0.827533, 5.87464e-08, -0.263328, -0.964707, 1.99252, 0.0379588, 0.964011, -0.263139, 2.50073, 0, 0, 0, 1),
            Qt.matrix4x4(1, -2.38627e-07, -3.05211e-08, 0.921861, 2.71866e-08, 0.10014, -0.994974, 1.88157, 1.97126e-07, 0.994973, 0.10014, 1.9205, 0, 0, 0, 1),
            Qt.matrix4x4(1.97715e-13, 1.94707e-07, 1, -2.65482, -1, 1.01545e-06, 1.19208e-07, -0.319306, -1.01545e-06, -1, 1.94707e-07, 2.19588, 0, 0, 0, 1),
            Qt.matrix4x4(0.999251, 0.0325477, 0.0209291, 0.661262, 1.52588e-07, 0.540859, -0.841113, 1.04534, -0.038696, 0.840483, 0.540454, -3.31093, 0, 0, 0, 1),
            Qt.matrix4x4(1, -2.20985e-07, 5.41865e-08, 0.788887, 1.62575e-07, -0.151599, -0.988442, 2.0761, 2.95944e-07, 0.988442, -0.151599, -2.54636, 0, 0, 0, 1),
            Qt.matrix4x4(9.18588e-14, -2.32156e-07, 1, -2.57197, 1, 3.95677e-07, 1.5656e-13, -0.268425, -3.95677e-07, 1, 2.32156e-07, 1.85574, 0, 0, 0, 1),
            Qt.matrix4x4(0.994532, 0.100746, -0.0274999, -0.608535, 1.83105e-08, -0.263328, -0.964706, 1.99252, -0.104432, 0.959431, -0.261889, 2.54498, 0, 0, 0, 1),
            Qt.matrix4x4(1, -2.27467e-07, -2.57496e-08, -0.870985, 2.38566e-08, 0.100141, -0.994973, 1.88157, 2.03296e-07, 0.994974, 0.100141, 1.9205, 0, 0, 0, 1),
            Qt.matrix4x4(9.06005e-14, -8.92222e-08, 1, -2.65482, 1, 1.01545e-06, 1.03113e-12, -0.268428, -1.01545e-06, 1, 8.92222e-08, -2.19588, 0, 0, 0, 1),
            Qt.matrix4x4(0.99982, -0.0159852, -0.010279, -0.675485, 3.35693e-08, 0.540859, -0.841113, 1.04534, 0.0190048, 0.840961, 0.540761, -3.2963, 0, 0, 0, 1),
            Qt.matrix4x4(1, -2.38181e-07, 4.38074e-08, -0.738008, 8.05715e-08, -0.151599, -0.988442, 2.0761, 2.31201e-07, 0.988442, -0.151599, -2.54636, 0, 0, 0, 1),
            Qt.matrix4x4(1, 1.38817e-07, 4.56184e-07, 0.0269032, 2.32831e-14, -0.956686, 0.29112, 1.64597, 4.76838e-07, -0.29112, -0.956686, 3.79684, 0, 0, 0, 1),
            Qt.matrix4x4(1, 1.20144e-09, 4.07691e-12, 0.015737, -1.20151e-09, 0.999994, 0.00346431, -2.71655, 1.72085e-13, -0.00346431, 0.999994, -4.57521, 0, 0, 0, 1),
            Qt.matrix4x4(1, -2.32276e-07, -5.37693e-08, 0.0157381, 2.96184e-10, 0.226735, -0.973956, 3.66605, 2.38418e-07, 0.973956, 0.226735, -4.48505, 0, 0, 0, 1),
            Qt.matrix4x4(-1, -3.87205e-07, 4.08756e-08, -0.0157358, 4.8193e-11, -0.105106, -0.994461, 4.24671, 3.89356e-07, -0.994461, 0.105106, 3.27372, 0, 0, 0, 1),
            Qt.matrix4x4(-1, -3.3301e-07, -5.36632e-08, -0.0157357, 5.67262e-08, -0.00920532, -0.999958, 3.21691, 3.32502e-07, -0.999958, 0.00920531, 3.59897, 0, 0, 0, 1),
            Qt.matrix4x4(-0.998979, -0.0434116, -0.0125187, -0.10292, 0.031368, -0.865832, 0.49935, -2.91748, -0.0325167, 0.498448, 0.86631, -1.75227, 0, 0, 0, 1),
            Qt.matrix4x4(-1, 3.79285e-06, 3.49099e-06, -0.0269071, -2.2904e-08, -0.677487, 0.735534, -4.56792, 5.17026e-06, 0.735534, 0.677487, -0.401942, 0, 0, 0, 1),
            Qt.matrix4x4(-0.866222, -0.272378, 0.41889, -2.97587, -0.00153396, -0.836899, -0.547356, -0.577617, 0.499657, -0.474774, 0.724522, -5.107, 0, 0, 0, 1),
            Qt.matrix4x4(-1, -9.76909e-07, 9.63836e-06, -0.0269365, -9.31323e-14, -0.994903, -0.10084, 2.08946, 9.68774e-06, -0.10084, 0.994903, -3.24145, 0, 0, 0, 1),
            Qt.matrix4x4(-0.999633, 0.0270189, -0.00200613, -0.0159597, -0.0270932, -0.997043, 0.0719113, -0.397401, -5.7235e-05, 0.0719392, 0.997409, -3.22123, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, -1.75635e-06, 0.835863, 0, -1, 0, 2.60472, -1.75635e-06, 0, -1, 0.100002, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, -2.71003e-06, -0.860894, 0, -1, 0, -1.92702, -2.71003e-06, 0, -1, 0.100006, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, -2.71003e-06, -0.784985, 0, -1, 0, 2.60472, -2.71003e-06, 0, -1, 0.100006, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Node {
            id: armature
            objectName: "Armature"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            Node {
                id: root
                objectName: "root"
                rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                Node {
                    id: frontFoot_R
                    objectName: "FrontFoot.R"
                    position: Qt.vector3d(-0.911771, 0.100003, 1.92702)
                    rotation: Qt.quaternion(0.707107, 0.707107, -6.20965e-07, -6.20964e-07)
                    Node {
                        id: frontFoot_R_end
                        objectName: "FrontFoot.R_end"
                        position: Qt.vector3d(0, 1, 0)
                    }
                }
                Node {
                    id: body
                    objectName: "Body"
                    position: Qt.vector3d(0.00537765, 2.30208, -0.0173542)
                    Node {
                        id: frontLeg_R
                        objectName: "FrontLeg.R"
                        position: Qt.vector3d(-0.324681, 0.269884, 1.87309)
                        rotation: Qt.quaternion(0.707105, 0.0015317, -0.00153198, 0.707105)
                        Node {
                            id: frontUpLeg_R
                            objectName: "FrontUpLeg.R"
                            position: Qt.vector3d(-3.27177e-07, 0.602558, 5.09004e-08)
                            rotation: Qt.quaternion(0.107051, 0.703962, -0.697455, -0.0808372)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: frontLowLeg_R
                                objectName: "FrontLowLeg.R"
                                position: Qt.vector3d(-9.31323e-08, 0.924815, -8.9407e-08)
                                rotation: Qt.quaternion(0.982885, 0.183241, -0.0186612, 0.00347909)
                                Node {
                                    id: frontLowLeg_R_end
                                    objectName: "FrontLowLeg.R_end"
                                    position: Qt.vector3d(0, 1.58777, 0)
                                }
                            }
                        }
                    }
                    Node {
                        id: backLeg_R
                        objectName: "BackLeg.R"
                        position: Qt.vector3d(-0.324681, 0.352734, -2.17853)
                        rotation: Qt.quaternion(0.707106, 0.00100445, -0.00100517, 0.707106)
                        Node {
                            id: backUpLeg_R
                            objectName: "BackUpLeg.R"
                            position: Qt.vector3d(-7.08544e-08, 0.469583, 2.37352e-07)
                            rotation: Qt.quaternion(0.214232, -0.675439, 0.681193, -0.184019)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: backLowLeg_R
                                objectName: "BackLowLeg.R"
                                position: Qt.vector3d(4.65661e-08, 1.17551, -3.7998e-07)
                                rotation: Qt.quaternion(0.936001, -0.351464, 0.0181166, 0.00680262)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: backLowLeg_R_end
                                    objectName: "BackLowLeg.R_end"
                                    position: Qt.vector3d(0, 1.58439, 0)
                                }
                            }
                        }
                    }
                    Node {
                        id: frontLeg_L
                        objectName: "FrontLeg.L"
                        position: Qt.vector3d(0.263048, 0.269884, 1.87309)
                        rotation: Qt.quaternion(-0.00163068, 0.707105, 0.707105, 0.00163041)
                        Node {
                            id: frontUpLeg_L
                            objectName: "FrontUpLeg.L"
                            position: Qt.vector3d(-1.68842e-07, 0.602558, -7.48608e-09)
                            rotation: Qt.quaternion(0.693482, -0.0574347, -0.130329, 0.706256)
                            Node {
                                id: frontLowLeg_L
                                objectName: "FrontLowLeg.L"
                                position: Qt.vector3d(-8.9407e-08, 0.924815, -3.65078e-07)
                                rotation: Qt.quaternion(0.981717, 0.183025, 0.0514019, -0.00958298)
                                Node {
                                    id: frontLowLeg_L_end
                                    objectName: "FrontLowLeg.L_end"
                                    position: Qt.vector3d(0, 1.58777, 0)
                                }
                            }
                        }
                    }
                    Node {
                        id: backLeg_L
                        objectName: "BackLeg.L"
                        position: Qt.vector3d(0.263048, 0.352734, -2.17853)
                        rotation: Qt.quaternion(-0.00086712, 0.707106, 0.707106, 0.000866402)
                        Node {
                            id: backUpLeg_L
                            objectName: "BackUpLeg.L"
                            position: Qt.vector3d(-1.09921e-07, 0.469583, -9.70159e-08)
                            rotation: Qt.quaternion(0.68323, 0.190796, 0.207644, 0.673556)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: backLowLeg_L
                                objectName: "BackLowLeg.L"
                                position: Qt.vector3d(-1.35042e-07, 1.17551, -4.2282e-07)
                                rotation: Qt.quaternion(0.936134, -0.351515, -0.00889625, -0.0033406)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: backLowLeg_L_end
                                    objectName: "BackLowLeg.L_end"
                                    position: Qt.vector3d(0, 1.58439, 0)
                                }
                            }
                        }
                    }
                    Node {
                        id: back
                        objectName: "Back"
                        position: Qt.vector3d(-0.0322827, 0.851127, -2.66266)
                        rotation: Qt.quaternion(0.798049, 0.600803, -0.0301612, 0.0352671)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: tail1
                            objectName: "Tail1"
                            position: Qt.vector3d(0.0111687, 0.396934, -1.37541)
                            rotation: Qt.quaternion(-0.148875, 0.988856, 3.14741e-08, 2.23642e-07)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: tail2
                                objectName: "Tail2"
                                position: Qt.vector3d(-2.6077e-08, 0.836347, -9.2783e-08)
                                rotation: Qt.quaternion(0.7821, -0.623153, 9.05751e-08, -7.58948e-08)
                                Node {
                                    id: tail3
                                    objectName: "Tail3"
                                    position: Qt.vector3d(-2.23517e-08, 0.727335, 1.56928e-07)
                                    rotation: Qt.quaternion(3.20084e-07, -1.03101e-08, 0.986086, -0.166237)
                                    Node {
                                        id: tail4
                                        objectName: "Tail4"
                                        position: Qt.vector3d(-2.23517e-08, 0.699333, 1.08965e-07)
                                        rotation: Qt.quaternion(0.998846, -0.048029, 2.67591e-08, 4.54472e-08)
                                        scale: Qt.vector3d(1, 1, 1)
                                        Node {
                                            id: tail4_end
                                            objectName: "Tail4_end"
                                            position: Qt.vector3d(0, 1.05699, 0)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Node {
                        id: shoulders
                        objectName: "Shoulders"
                        position: Qt.vector3d(-0.0736547, 0.671489, 1.67446)
                        rotation: Qt.quaternion(-0.0219301, 0.00544398, 0.86556, 0.500295)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: neck
                            objectName: "Neck"
                            position: Qt.vector3d(1.49012e-08, 1.31892, 1.04541e-07)
                            rotation: Qt.quaternion(0.98823, 0.151294, -0.0184518, -0.0130467)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: head
                                objectName: "Head"
                                position: Qt.vector3d(1.68075e-09, 1.35733, -7.95185e-08)
                                rotation: Qt.quaternion(0.736929, -0.624538, -0.197814, 0.166608)
                                Node {
                                    id: head_end
                                    objectName: "Head_end"
                                    position: Qt.vector3d(0, 1.77538, 0)
                                }
                            }
                        }
                    }
                    Node {
                        id: hips
                        objectName: "Hips"
                        position: Qt.vector3d(-0.0322827, 1.13354, -1.73459)
                        rotation: Qt.quaternion(3.26617e-06, 3.61024e-06, 0.670507, 0.741903)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: torso
                            objectName: "Torso"
                            position: Qt.vector3d(-5.20259e-11, 1.92582, 8.58028e-08)
                            rotation: Qt.quaternion(0.996169, 0.0863902, 0.00120385, -0.0134951)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: torso_end
                                objectName: "Torso_end"
                                position: Qt.vector3d(0, 1.52702, 0)
                            }
                        }
                    }
                }
                Node {
                    id: backFoot_R
                    objectName: "BackFoot.R"
                    position: Qt.vector3d(-0.835863, 0.100003, -2.60472)
                    rotation: Qt.quaternion(0.707107, 0.707107, -6.20965e-07, -6.20964e-07)
                    Node {
                        id: backFoot_R_end
                        objectName: "BackFoot.R_end"
                        position: Qt.vector3d(0, 0.674537, 0)
                    }
                }
                Node {
                    id: frontFoot_L
                    objectName: "FrontFoot.L"
                    position: Qt.vector3d(0.860894, 0.100003, 1.92702)
                    rotation: Qt.quaternion(0.707107, 0.707107, -9.58139e-07, -9.58139e-07)
                    Node {
                        id: frontFoot_L_end
                        objectName: "FrontFoot.L_end"
                        position: Qt.vector3d(0, 1, 0)
                    }
                }
                Node {
                    id: backFoot_L
                    objectName: "BackFoot.L"
                    position: Qt.vector3d(0.784986, 0.100003, -2.60472)
                    rotation: Qt.quaternion(0.707107, 0.707107, -9.58139e-07, -9.58139e-07)
                    Node {
                        id: backFoot_L_end
                        objectName: "BackFoot.L_end"
                        position: Qt.vector3d(0, 0.674537, 0)
                    }
                }
            }
        }
        Model {
            id: cow
            objectName: "Cow"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            source: "meshes/cow.mesh"
            skin: skin
            materials: [
                white_material,
                black_material,
                pink_material
            ]
        }
    }

    // Animations:
    Timeline {
        id: armature_Idle_timeline
        objectName: "armature_Idle_timeline"
        property real framesPerSecond: 24
        startFrame: 0
        endFrame: 6250
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 6250
            from: 0
            to: 6250
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: backLeg_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(-0.00086712, 0.707106, 0.707106, 0.000866402)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(-0.00315197, 0.7071, 0.7071, 0.00315126)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(-0.00567197, 0.707084, 0.707084, 0.00567125)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(-0.00802686, 0.707061, 0.707061, 0.00802614)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(-0.0104846, 0.707029, 0.707029, 0.0104838)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(-0.0128032, 0.706991, 0.706991, 0.0128024)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(-0.0150117, 0.706947, 0.706948, 0.015011)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(-0.0172068, 0.706897, 0.706897, 0.017206)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(-0.0150016, 0.706948, 0.706948, 0.0150009)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(-0.0126531, 0.706994, 0.706994, 0.0126524)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(-0.010185, 0.707033, 0.707034, 0.0101843)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(-0.00795993, 0.707062, 0.707062, 0.00795921)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(-0.00549015, 0.707085, 0.707086, 0.00548943)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(-0.00314894, 0.7071, 0.7071, 0.00314822)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(-0.000930424, 0.707106, 0.707106, 0.000929706)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(-0.00086712, 0.707106, 0.707106, 0.000866402)
            }
        }
        KeyframeGroup {
            target: backLeg_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.707106, 0.00100445, -0.00100517, 0.707106)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.707106, 0.00101086, -0.00101158, 0.707106)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.707106, 0.0010298, -0.00103051, 0.707106)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.707106, 0.00106133, -0.00106205, 0.707106)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.707106, 0.00110586, -0.00110658, 0.707106)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.707106, 0.0011631, -0.00116382, 0.707106)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.707106, 0.00123325, -0.00123397, 0.707106)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.707106, 0.00131586, -0.00131658, 0.707105)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.707105, 0.00141173, -0.00141245, 0.707105)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.707105, 0.00152037, -0.00152109, 0.707105)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.707105, 0.00164178, -0.0016425, 0.707105)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.707105, 0.00177567, -0.00177639, 0.707104)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.707104, 0.00192238, -0.0019231, 0.707104)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.707104, 0.00208164, -0.00208236, 0.707104)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.707103, 0.00225308, -0.0022538, 0.707103)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.707103, 0.00243677, -0.00243749, 0.707102)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.707102, 0.00263284, -0.00263356, 0.707102)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.707101, 0.00284027, -0.00284099, 0.707101)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.7071, 0.0030593, -0.00306002, 0.7071)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.707099, 0.00328962, -0.00329034, 0.707099)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.707098, 0.00353099, -0.0035317, 0.707098)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.707097, 0.00378337, -0.00378409, 0.707097)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.707095, 0.00404554, -0.00404626, 0.707095)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.707094, 0.00431769, -0.00431841, 0.707094)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.707092, 0.00459914, -0.00459986, 0.707092)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.70709, 0.00488963, -0.00489035, 0.70709)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.707088, 0.00518863, -0.00518935, 0.707088)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.707086, 0.0054957, -0.00549642, 0.707085)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.707083, 0.00580999, -0.00581071, 0.707083)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.70708, 0.00613111, -0.00613183, 0.70708)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.707077, 0.00645865, -0.00645937, 0.707077)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.707074, 0.00679151, -0.00679223, 0.707074)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.707071, 0.00712911, -0.00712983, 0.707071)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.707067, 0.00747128, -0.007472, 0.707067)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.707064, 0.00781692, -0.00781764, 0.707064)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.70706, 0.0081652, -0.00816592, 0.70706)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.707056, 0.00851578, -0.0085165, 0.707055)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.707051, 0.0088678, -0.00886852, 0.707051)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.707047, 0.0092204, -0.00922112, 0.707047)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.707042, 0.00957321, -0.00957393, 0.707042)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.707037, 0.00992499, -0.00992571, 0.707037)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.707032, 0.0102754, -0.0102761, 0.707032)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.707027, 0.0106236, -0.0106243, 0.707027)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.707022, 0.0109687, -0.0109694, 0.707022)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.707016, 0.0113104, -0.0113111, 0.707016)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.707011, 0.0116477, -0.0116484, 0.707011)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.707005, 0.0119803, -0.0119811, 0.707005)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.707, 0.0123071, -0.0123078, 0.707)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.706994, 0.0126279, -0.0126287, 0.706994)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.706988, 0.012942, -0.0129428, 0.706988)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.706983, 0.0132487, -0.0132494, 0.706983)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.706977, 0.0135475, -0.0135482, 0.706977)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.706971, 0.013838, -0.0138387, 0.706971)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.706966, 0.0141199, -0.0141206, 0.706966)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.70696, 0.0143924, -0.0143931, 0.70696)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.706955, 0.0146554, -0.0146561, 0.706955)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.70695, 0.0149088, -0.0149095, 0.70695)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.706945, 0.0151513, -0.0151521, 0.706944)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.706939, 0.0153834, -0.0153841, 0.706939)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.706935, 0.0156048, -0.0156055, 0.706935)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.70693, 0.015815, -0.0158157, 0.70693)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.706926, 0.0160136, -0.0160143, 0.706925)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.706921, 0.0162008, -0.0162015, 0.706921)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.706917, 0.0163761, -0.0163768, 0.706917)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.706913, 0.0165401, -0.0165408, 0.706913)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.70691, 0.0166917, -0.0166924, 0.70691)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.706906, 0.0168311, -0.0168318, 0.706906)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.706903, 0.0169588, -0.0169595, 0.706903)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.706901, 0.0170741, -0.0170748, 0.706901)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.706898, 0.0171773, -0.017178, 0.706898)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.706896, 0.0172681, -0.0172688, 0.706896)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.706894, 0.0173468, -0.0173475, 0.706894)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.706892, 0.017413, -0.0174138, 0.706892)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.706891, 0.0174674, -0.0174681, 0.706891)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.70689, 0.0175094, -0.0175101, 0.70689)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.706889, 0.0175574, -0.0175581, 0.706889)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.70689, 0.0175033, -0.017504, 0.70689)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.706891, 0.0174566, -0.0174573, 0.706891)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.706893, 0.0173961, -0.0173969, 0.706893)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.706895, 0.0173221, -0.0173228, 0.706895)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.706897, 0.0172347, -0.0172355, 0.706897)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.706899, 0.0171335, -0.0171342, 0.706899)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.706902, 0.0170189, -0.0170196, 0.706902)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.706905, 0.0168904, -0.0168911, 0.706905)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.706909, 0.0167486, -0.0167494, 0.706908)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.706912, 0.0165933, -0.016594, 0.706912)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.706916, 0.0164246, -0.0164254, 0.706916)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.70692, 0.0162427, -0.0162434, 0.70692)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.706925, 0.0160478, -0.0160485, 0.706925)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.706929, 0.01584, -0.0158407, 0.706929)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.706934, 0.0156194, -0.0156202, 0.706934)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.706939, 0.0153866, -0.0153873, 0.706939)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.706945, 0.0151416, -0.0151423, 0.706945)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.70695, 0.0148848, -0.0148856, 0.70695)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.706956, 0.0146167, -0.0146174, 0.706956)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.706962, 0.0143374, -0.0143381, 0.706961)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.706967, 0.0140475, -0.0140482, 0.706967)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.706973, 0.0137475, -0.0137483, 0.706973)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.706979, 0.013438, -0.0134387, 0.706979)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.706985, 0.0131192, -0.0131199, 0.706985)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.706991, 0.0127923, -0.012793, 0.706991)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.706997, 0.0124575, -0.0124582, 0.706997)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.707003, 0.0121151, -0.0121158, 0.707003)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.707009, 0.0117668, -0.0117675, 0.707009)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.707015, 0.0114126, -0.0114133, 0.707015)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.70702, 0.0110535, -0.0110542, 0.70702)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.707026, 0.0106899, -0.0106907, 0.707026)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.707031, 0.0103234, -0.0103241, 0.707031)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.707037, 0.00995405, -0.00995477, 0.707037)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.707042, 0.00958273, -0.00958345, 0.707042)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.707047, 0.00921098, -0.0092117, 0.707047)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.707052, 0.00883897, -0.00883969, 0.707051)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.707056, 0.00846753, -0.00846825, 0.707056)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.70706, 0.00809824, -0.00809896, 0.70706)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.707065, 0.00773136, -0.00773208, 0.707064)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.707068, 0.00736755, -0.00736827, 0.707068)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.707072, 0.00700838, -0.0070091, 0.707072)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.707076, 0.0066538, -0.00665452, 0.707075)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.707079, 0.00630526, -0.00630598, 0.707079)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.707082, 0.00596303, -0.00596375, 0.707082)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.707084, 0.00562816, -0.00562888, 0.707084)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.707087, 0.00530128, -0.005302, 0.707087)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.707089, 0.00498311, -0.00498383, 0.707089)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.707091, 0.00467398, -0.0046747, 0.707091)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.707093, 0.00437465, -0.00437536, 0.707093)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.707095, 0.00408606, -0.00408678, 0.707095)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.707097, 0.00380783, -0.00380855, 0.707097)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.707098, 0.0035413, -0.00354202, 0.707098)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.707099, 0.00328655, -0.00328727, 0.707099)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.7071, 0.00304405, -0.00304477, 0.7071)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.707101, 0.00281397, -0.00281469, 0.707101)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.707102, 0.00259687, -0.00259759, 0.707102)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.707103, 0.00239281, -0.00239352, 0.707103)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.707103, 0.00220254, -0.00220326, 0.707103)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.707104, 0.0020257, -0.00202642, 0.707104)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.707104, 0.00186263, -0.00186335, 0.707104)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.707105, 0.00171353, -0.00171425, 0.707105)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.707105, 0.00157852, -0.00157924, 0.707105)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.707105, 0.0014579, -0.00145861, 0.707105)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.707106, 0.0013512, -0.00135192, 0.707105)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.707106, 0.0012588, -0.00125952, 0.707106)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.707106, 0.00118083, -0.00118155, 0.707106)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.707106, 0.00111728, -0.001118, 0.707106)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.707106, 0.00106775, -0.00106847, 0.707106)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.707106, 0.00103261, -0.00103333, 0.707106)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.707106, 0.00101145, -0.00101217, 0.707106)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.707106, 0.00100445, -0.00100517, 0.707106)
            }
        }
        KeyframeGroup {
            target: backLowLeg_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.936134, -0.351515, -0.00889625, -0.0033406)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.935862, -0.352237, -0.00889367, -0.00334747)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.935602, -0.352928, -0.0088912, -0.00335403)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.935259, -0.353836, -0.00888794, -0.00336265)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.934952, -0.354648, -0.00888501, -0.00337037)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.934605, -0.355559, -0.00888172, -0.00337904)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.934225, -0.356557, -0.00887811, -0.00338852)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.933956, -0.357262, -0.00887555, -0.00339521)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.933676, -0.357992, -0.00887289, -0.00340215)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.933389, -0.358741, -0.00887016, -0.00340927)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.933096, -0.359502, -0.00886738, -0.00341651)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.932799, -0.360271, -0.00886456, -0.00342381)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.932502, -0.36104, -0.00886173, -0.00343112)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.932206, -0.361803, -0.00885892, -0.00343837)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.931915, -0.362553, -0.00885615, -0.0034455)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.931629, -0.363286, -0.00885344, -0.00345246)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.931352, -0.363995, -0.00885081, -0.0034592)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.930958, -0.365003, -0.00884706, -0.00346878)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.930593, -0.365931, -0.00884359, -0.0034776)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.930264, -0.366769, -0.00884046, -0.00348556)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.929973, -0.367505, -0.0088377, -0.00349255)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.929652, -0.368317, -0.00883465, -0.00350027)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.929361, -0.369049, -0.00883188, -0.00350723)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.929707, -0.368177, -0.00883517, -0.00349894)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.930064, -0.367274, -0.00883856, -0.00349036)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.930386, -0.366459, -0.00884162, -0.00348262)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.930749, -0.365535, -0.00884507, -0.00347384)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.931149, -0.364515, -0.00884887, -0.00346414)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.931433, -0.363788, -0.00885157, -0.00345724)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.931728, -0.363032, -0.00885438, -0.00345005)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.932032, -0.362252, -0.00885726, -0.00344264)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.932341, -0.361454, -0.00886021, -0.00343506)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.932655, -0.360646, -0.00886318, -0.00342737)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.932968, -0.359833, -0.00886616, -0.00341965)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.933279, -0.359026, -0.00886912, -0.00341198)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.933585, -0.358231, -0.00887202, -0.00340442)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.933882, -0.357455, -0.00887485, -0.00339705)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.934169, -0.356704, -0.00887757, -0.00338992)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.934442, -0.355987, -0.00888017, -0.0033831)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.934823, -0.354987, -0.00888379, -0.00337359)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.935163, -0.354091, -0.00888702, -0.00336508)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.935456, -0.353315, -0.0088898, -0.00335771)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.935768, -0.352487, -0.00889277, -0.00334984)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.936026, -0.351803, -0.00889522, -0.00334334)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.936134, -0.351515, -0.00889625, -0.0033406)
            }
        }
        KeyframeGroup {
            target: backLowLeg_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.936001, -0.351464, 0.0181166, 0.00680262)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.93573, -0.352187, 0.0181114, 0.0068166)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.93547, -0.352877, 0.0181063, 0.00682997)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.935127, -0.353785, 0.0180997, 0.00684753)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.934819, -0.354597, 0.0180937, 0.00686326)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.934473, -0.355508, 0.018087, 0.00688089)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.934093, -0.356506, 0.0180797, 0.00690021)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.933823, -0.35721, 0.0180745, 0.00691384)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.933544, -0.35794, 0.0180691, 0.00692797)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.933257, -0.358689, 0.0180635, 0.00694246)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.932963, -0.359451, 0.0180578, 0.0069572)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.932667, -0.360219, 0.0180521, 0.00697207)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.93237, -0.360988, 0.0180463, 0.00698696)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.932074, -0.361751, 0.0180406, 0.00700172)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.931782, -0.362501, 0.018035, 0.00701624)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.931497, -0.363233, 0.0180295, 0.00703041)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.93122, -0.363942, 0.0180241, 0.00704414)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.930826, -0.364951, 0.0180165, 0.00706365)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.930461, -0.365879, 0.0180094, 0.00708162)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.930132, -0.366716, 0.018003, 0.00709782)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.929841, -0.367452, 0.0179974, 0.00711206)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.92952, -0.368264, 0.0179912, 0.00712778)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.929229, -0.368996, 0.0179856, 0.00714196)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.929575, -0.368124, 0.0179923, 0.00712507)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.929932, -0.367221, 0.0179992, 0.0071076)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.930254, -0.366407, 0.0180054, 0.00709183)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.930617, -0.365483, 0.0180124, 0.00707395)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.931017, -0.364462, 0.0180202, 0.00705421)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.931301, -0.363736, 0.0180257, 0.00704015)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.931596, -0.36298, 0.0180314, 0.00702551)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.9319, -0.3622, 0.0180372, 0.00701041)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.932209, -0.361402, 0.0180432, 0.00699497)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.932522, -0.360594, 0.0180493, 0.00697932)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.932836, -0.359782, 0.0180554, 0.0069636)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.933147, -0.358975, 0.0180614, 0.00694799)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.933452, -0.358179, 0.0180673, 0.00693259)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.93375, -0.357403, 0.0180731, 0.00691757)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.934036, -0.356653, 0.0180786, 0.00690305)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.93431, -0.355936, 0.0180839, 0.00688918)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.93469, -0.354936, 0.0180913, 0.00686981)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.93503, -0.35404, 0.0180978, 0.00685247)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.935323, -0.353265, 0.0181035, 0.00683746)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.935636, -0.352436, 0.0181096, 0.00682143)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.935893, -0.351753, 0.0181145, 0.0068082)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.936001, -0.351464, 0.0181166, 0.00680262)
            }
        }
        KeyframeGroup {
            target: backUpLeg_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.68323, 0.190796, 0.207644, 0.673556)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.683235, 0.190777, 0.207663, 0.67355)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.68324, 0.190758, 0.207682, 0.673545)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.683245, 0.19074, 0.2077, 0.673539)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.68324, 0.190758, 0.207682, 0.673545)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.683235, 0.190777, 0.207664, 0.67355)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.68323, 0.190795, 0.207645, 0.673556)
            }
        }
        KeyframeGroup {
            target: backUpLeg_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.214232, -0.675439, 0.681193, -0.184019)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.214263, -0.675429, 0.681201, -0.183988)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.214292, -0.67542, 0.68121, -0.183958)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.214263, -0.675429, 0.681201, -0.183988)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.214233, -0.675439, 0.681193, -0.184018)
            }
        }
        KeyframeGroup {
            target: body
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.00537765, 2.30208, -0.0173542)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(0.00537765, 2.30163, -0.0172678)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(0.00537765, 2.3014, -0.0171595)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(0.00537765, 2.30117, -0.0170075)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0.00537765, 2.30095, -0.0168117)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0.00537765, 2.30072, -0.0165718)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0.00537765, 2.30049, -0.0162878)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0.00537765, 2.30026, -0.0159597)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0.00537765, 2.30004, -0.0155876)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0.00537765, 2.29981, -0.0151716)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(0.00537765, 2.29958, -0.0147117)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(0.00537765, 2.29935, -0.0142084)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(0.00537765, 2.29913, -0.0136618)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(0.00537765, 2.2989, -0.0130724)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(0.00537765, 2.29867, -0.0124407)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(0.00537765, 2.29844, -0.0117672)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(0.00537765, 2.29822, -0.0110527)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(0.00537765, 2.29799, -0.0102978)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(0.00537765, 2.29776, -0.00950351)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(0.00537765, 2.29753, -0.00867075)
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(0.00537765, 2.29731, -0.00780059)
            }
            Keyframe {
                frame: 916.667
                value: Qt.vector3d(0.00537765, 2.29679, -0.00689423)
            }
            Keyframe {
                frame: 958.333
                value: Qt.vector3d(0.00537765, 2.29627, -0.00595297)
            }
            Keyframe {
                frame: 1000
                value: Qt.vector3d(0.00537765, 2.29576, -0.00497821)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.vector3d(0.00537765, 2.29524, -0.00397146)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.vector3d(0.00537765, 2.29473, -0.00293436)
            }
            Keyframe {
                frame: 1125
                value: Qt.vector3d(0.00537765, 2.29421, -0.00186865)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.vector3d(0.00537765, 2.2937, -0.000776164)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.vector3d(0.00537765, 2.29318, 0.000341153)
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(0.00537765, 2.29266, 0.00148126)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.vector3d(0.00537765, 2.29206, 0.00264203)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(0.00537765, 2.29146, 0.00382125)
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(0.00537765, 2.29085, 0.00501661)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(0.00537765, 2.29025, 0.00622577)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(0.00537765, 2.28964, 0.00744629)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(0.00537765, 2.28904, 0.0086757)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(0.00537765, 2.28843, 0.00991149)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(0.00537765, 2.28783, 0.0111511)
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(0.00537765, 2.28722, 0.012392)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(0.00537765, 2.28661, 0.0136317)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(0.00537765, 2.286, 0.0148675)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(0.00537765, 2.28539, 0.0160969)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(0.00537765, 2.28478, 0.0173174)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(0.00537765, 2.28417, 0.0185266)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(0.00537765, 2.28356, 0.0197219)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(0.00537765, 2.28295, 0.0209011)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(0.00537765, 2.28242, 0.0220619)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(0.00537765, 2.2819, 0.023202)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(0.00537765, 2.28137, 0.0243193)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(0.00537765, 2.28084, 0.0254118)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(0.00537765, 2.28031, 0.0264775)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(0.00537765, 2.27978, 0.0275146)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(0.00537765, 2.27925, 0.0285214)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(0.00537765, 2.27872, 0.0294961)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(0.00537765, 2.27819, 0.0304374)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(0.00537765, 2.27787, 0.0313438)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(0.00537765, 2.27756, 0.0322139)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(0.00537765, 2.27725, 0.0330467)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(0.00537765, 2.27693, 0.033841)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(0.00537765, 2.27662, 0.0345958)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(0.00537765, 2.27631, 0.0353104)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(0.00537765, 2.27599, 0.0359838)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(0.00537765, 2.27568, 0.0366156)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(0.00537765, 2.27537, 0.0372049)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(0.00537765, 2.27506, 0.0377515)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(0.00537765, 2.27474, 0.0382549)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(0.00537765, 2.27443, 0.0387147)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(0.00537765, 2.27412, 0.0391308)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(0.00537765, 2.2738, 0.0395029)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(0.00537765, 2.27349, 0.039831)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(0.00537765, 2.27366, 0.0401149)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(0.00537765, 2.27383, 0.0403548)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(0.00537765, 2.274, 0.0405507)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(0.00537765, 2.27417, 0.0407027)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(0.00537765, 2.27434, 0.040811)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(0.00537765, 2.27502, 0.0408013)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(0.00537765, 2.27519, 0.0406807)
            }
            Keyframe {
                frame: 3375
                value: Qt.vector3d(0.00537765, 2.27536, 0.0405115)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.vector3d(0.00537765, 2.27553, 0.0402935)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.vector3d(0.00537765, 2.2757, 0.0400264)
            }
            Keyframe {
                frame: 3500
                value: Qt.vector3d(0.00537765, 2.27587, 0.0397103)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.vector3d(0.00537765, 2.27604, 0.0393452)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.vector3d(0.00537765, 2.27621, 0.0389311)
            }
            Keyframe {
                frame: 3625
                value: Qt.vector3d(0.00537765, 2.27638, 0.0384682)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.vector3d(0.00537765, 2.27655, 0.0379567)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.vector3d(0.00537765, 2.27672, 0.037397)
            }
            Keyframe {
                frame: 3750
                value: Qt.vector3d(0.00537765, 2.27689, 0.0367895)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.vector3d(0.00537765, 2.27706, 0.0361347)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.vector3d(0.00537765, 2.27724, 0.0354333)
            }
            Keyframe {
                frame: 3875
                value: Qt.vector3d(0.00537765, 2.27741, 0.0346861)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.vector3d(0.00537765, 2.27758, 0.0338939)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.vector3d(0.00537765, 2.27775, 0.0330578)
            }
            Keyframe {
                frame: 4000
                value: Qt.vector3d(0.00537765, 2.27792, 0.0321789)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.vector3d(0.00537765, 2.27809, 0.0312584)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.vector3d(0.00537765, 2.27826, 0.0302978)
            }
            Keyframe {
                frame: 4125
                value: Qt.vector3d(0.00537765, 2.27882, 0.0292985)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.vector3d(0.00537765, 2.27938, 0.0282624)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.vector3d(0.00537765, 2.27995, 0.0271911)
            }
            Keyframe {
                frame: 4250
                value: Qt.vector3d(0.00537765, 2.28051, 0.0260866)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.vector3d(0.00537765, 2.28108, 0.0249511)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.vector3d(0.00537765, 2.28164, 0.0237866)
            }
            Keyframe {
                frame: 4375
                value: Qt.vector3d(0.00537765, 2.28221, 0.0225956)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.vector3d(0.00537765, 2.28277, 0.0213805)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.vector3d(0.00537765, 2.28333, 0.0201439)
            }
            Keyframe {
                frame: 4500
                value: Qt.vector3d(0.00537765, 2.28398, 0.0188884)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.vector3d(0.00537765, 2.28463, 0.0176167)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.vector3d(0.00537765, 2.28527, 0.0163317)
            }
            Keyframe {
                frame: 4625
                value: Qt.vector3d(0.00537765, 2.28592, 0.0150363)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.vector3d(0.00537765, 2.28656, 0.0137334)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.vector3d(0.00537765, 2.28721, 0.012426)
            }
            Keyframe {
                frame: 4750
                value: Qt.vector3d(0.00537765, 2.28785, 0.0111171)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.vector3d(0.00537765, 2.2885, 0.00980975)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.vector3d(0.00537765, 2.28913, 0.00850686)
            }
            Keyframe {
                frame: 4875
                value: Qt.vector3d(0.00537765, 2.28976, 0.00721145)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.vector3d(0.00537765, 2.29039, 0.00592647)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.vector3d(0.00537765, 2.29101, 0.00465481)
            }
            Keyframe {
                frame: 5000
                value: Qt.vector3d(0.00537765, 2.29164, 0.00339928)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.vector3d(0.00537765, 2.29227, 0.00216265)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.vector3d(0.00537765, 2.2929, 0.00094755)
            }
            Keyframe {
                frame: 5125
                value: Qt.vector3d(0.00537765, 2.29353, -0.000243438)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.vector3d(0.00537765, 2.29404, -0.00140788)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.vector3d(0.00537765, 2.29456, -0.00254343)
            }
            Keyframe {
                frame: 5250
                value: Qt.vector3d(0.00537765, 2.29507, -0.0036479)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.vector3d(0.00537765, 2.29559, -0.00471919)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.vector3d(0.00537765, 2.2961, -0.00575536)
            }
            Keyframe {
                frame: 5375
                value: Qt.vector3d(0.00537765, 2.29662, -0.0067546)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.vector3d(0.00537765, 2.29713, -0.00771523)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.vector3d(0.00537765, 2.29765, -0.00863571)
            }
            Keyframe {
                frame: 5500
                value: Qt.vector3d(0.00537765, 2.29816, -0.00951466)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.vector3d(0.00537765, 2.29838, -0.0103508)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.vector3d(0.00537765, 2.2986, -0.011143)
            }
            Keyframe {
                frame: 5625
                value: Qt.vector3d(0.00537765, 2.29882, -0.0118902)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.vector3d(0.00537765, 2.29903, -0.0125915)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.vector3d(0.00537765, 2.29925, -0.0132463)
            }
            Keyframe {
                frame: 5750
                value: Qt.vector3d(0.00537765, 2.29947, -0.0138538)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.vector3d(0.00537765, 2.29969, -0.0144135)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.vector3d(0.00537765, 2.2999, -0.014925)
            }
            Keyframe {
                frame: 5875
                value: Qt.vector3d(0.00537765, 2.30012, -0.0153879)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.vector3d(0.00537765, 2.30034, -0.015802)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.vector3d(0.00537765, 2.30056, -0.0161672)
            }
            Keyframe {
                frame: 6000
                value: Qt.vector3d(0.00537765, 2.30078, -0.0164833)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.vector3d(0.00537765, 2.30099, -0.0167503)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.vector3d(0.00537765, 2.30121, -0.0169684)
            }
            Keyframe {
                frame: 6125
                value: Qt.vector3d(0.00537765, 2.30143, -0.0171376)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.vector3d(0.00537765, 2.30165, -0.0172581)
            }
            Keyframe {
                frame: 6250
                value: Qt.vector3d(0.00537765, 2.30208, -0.0173542)
            }
        }
        KeyframeGroup {
            target: frontLeg_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(-0.00163068, 0.707105, 0.707105, 0.00163041)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.000625045, 0.707107, 0.707106, -0.000625261)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.00285015, 0.707101, 0.707101, -0.00285034)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.00513288, 0.707088, 0.707088, -0.00513305)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.00756678, 0.707066, 0.707066, -0.00756692)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.00996408, 0.707037, 0.707036, -0.0099642)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.0124967, 0.706996, 0.706996, -0.0124968)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.0148247, 0.706951, 0.706951, -0.0148247)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.0171104, 0.7069, 0.7069, -0.0171104)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.0170249, 0.706902, 0.706902, -0.0170249)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.0169384, 0.706904, 0.706904, -0.0169401)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.0168537, 0.706906, 0.706906, -0.0168537)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.0148001, 0.706952, 0.706952, -0.0148002)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.0123184, 0.706999, 0.706999, -0.0123185)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.0100178, 0.707036, 0.707036, -0.0100179)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.00748872, 0.707067, 0.707067, -0.00748888)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.00492594, 0.70709, 0.70709, -0.00492612)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.00255057, 0.707102, 0.707102, -0.00255077)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.000299243, 0.707107, 0.707107, -0.000299472)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(-0.00163068, 0.707105, 0.707105, 0.00163041)
            }
        }
        KeyframeGroup {
            target: frontLeg_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.707105, 0.0015317, -0.00153198, 0.707105)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.707105, 0.0015228, -0.00152308, 0.707105)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.707105, 0.00149566, -0.00149594, 0.707105)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.707105, 0.00145131, -0.00145159, 0.707105)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.707105, 0.00138812, -0.0013884, 0.707105)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.707106, 0.00130743, -0.00130771, 0.707106)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.707106, 0.00120808, -0.00120836, 0.707106)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.707106, 0.00109171, -0.00109199, 0.707106)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.707106, 0.000957513, -0.000957792, 0.707106)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.707106, 0.000805384, -0.000805664, 0.707106)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.707106, 0.00063597, -0.000636249, 0.707107)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.707107, 0.000449716, -0.000449996, 0.707107)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.707107, 0.000246618, -0.000246898, 0.707107)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.707107, 2.70972e-05, -2.7377e-05, 0.707107)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.707107, -0.000207904, 0.000207624, 0.707107)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.707107, -0.000458378, 0.000458098, 0.707107)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.707106, -0.000724379, 0.000724099, 0.707106)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.707106, -0.00100424, 0.00100396, 0.707106)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.707105, -0.00129776, 0.00129748, 0.707106)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.707105, -0.00160472, 0.00160444, 0.707105)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.707104, -0.001924, 0.00192372, 0.707104)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.707103, -0.00225541, 0.00225513, 0.707103)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.707102, -0.00259713, 0.00259685, 0.707102)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.707101, -0.00294977, 0.00294949, 0.707101)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.707099, -0.00331155, 0.00331126, 0.707099)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.707097, -0.00368217, 0.00368189, 0.707097)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.707095, -0.00406013, 0.00405985, 0.707095)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.707093, -0.00444572, 0.00444544, 0.707093)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.70709, -0.00483679, 0.00483651, 0.70709)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.707087, -0.00523299, 0.00523271, 0.707088)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.707084, -0.00563344, 0.00563316, 0.707084)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.707081, -0.00603736, 0.00603708, 0.707081)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.707077, -0.00644309, 0.00644281, 0.707077)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.707074, -0.00685107, 0.00685079, 0.707074)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.707069, -0.00725945, 0.00725917, 0.70707)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.707065, -0.00766725, 0.00766697, 0.707065)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.707061, -0.00807424, 0.00807395, 0.707061)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.707056, -0.00847942, 0.00847914, 0.707056)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.707051, -0.00888211, 0.00888183, 0.707051)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.707046, -0.00928067, 0.00928039, 0.707046)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.707041, -0.0096751, 0.00967481, 0.707041)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.707035, -0.010065, 0.0100647, 0.707035)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.70703, -0.0104488, 0.0104485, 0.70703)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.707024, -0.0108262, 0.0108259, 0.707024)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.707018, -0.011197, 0.0111967, 0.707018)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.707012, -0.0115599, 0.0115596, 0.707012)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.707006, -0.011915, 0.0119147, 0.707007)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.707, -0.0122612, 0.0122609, 0.707001)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.706995, -0.012598, 0.0125977, 0.706995)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.706989, -0.0129264, 0.0129261, 0.706989)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.706983, -0.0132439, 0.0132437, 0.706983)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.706977, -0.0135515, 0.0135513, 0.706977)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.706971, -0.0138484, 0.0138481, 0.706971)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.706966, -0.0141348, 0.0141345, 0.706965)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.70696, -0.0144101, 0.0144098, 0.70696)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.706954, -0.014674, 0.0146737, 0.706955)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.706949, -0.0149262, 0.0149259, 0.706949)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.706944, -0.0151671, 0.0151668, 0.706944)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.706939, -0.0153958, 0.0153955, 0.706939)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.706934, -0.0156133, 0.015613, 0.706934)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.70693, -0.0158188, 0.0158185, 0.70693)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.706925, -0.016012, 0.0160117, 0.706926)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.706921, -0.0161932, 0.016193, 0.706921)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.706917, -0.0163624, 0.0163621, 0.706918)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.706914, -0.0165201, 0.0165198, 0.706914)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.70691, -0.0166653, 0.016665, 0.70691)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.706907, -0.0167983, 0.016798, 0.706907)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.706904, -0.0169198, 0.0169195, 0.706904)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.706902, -0.0170294, 0.0170291, 0.706902)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.706899, -0.0171268, 0.0171265, 0.706899)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.706897, -0.0172129, 0.0172126, 0.706897)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.706895, -0.0172871, 0.0172868, 0.706895)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.706894, -0.0173497, 0.0173494, 0.706894)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.706893, -0.0174007, 0.0174004, 0.706893)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.706892, -0.0174401, 0.0174398, 0.706892)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.70689, -0.0174853, 0.017485, 0.706891)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.706892, -0.0174342, 0.0174339, 0.706892)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.706893, -0.0173906, 0.0173903, 0.706893)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.706894, -0.0173336, 0.0173333, 0.706894)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.706896, -0.017264, 0.0172637, 0.706896)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.706898, -0.0171817, 0.0171814, 0.706898)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.7069, -0.0170858, 0.0170855, 0.7069)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.706903, -0.0169768, 0.0169765, 0.706903)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.706906, -0.0168548, 0.0168545, 0.706906)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.706909, -0.0167196, 0.0167194, 0.706909)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.706913, -0.016571, 0.0165707, 0.706913)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.706916, -0.0164089, 0.0164086, 0.706917)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.70692, -0.0162335, 0.0162332, 0.706921)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.706925, -0.0160452, 0.0160449, 0.706925)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.706929, -0.0158432, 0.0158429, 0.706929)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.706934, -0.0156279, 0.0156276, 0.706934)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.706939, -0.0153992, 0.0153989, 0.706939)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.706944, -0.0151571, 0.0151568, 0.706944)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.70695, -0.0149023, 0.014902, 0.70695)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.706955, -0.0146349, 0.0146346, 0.706955)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.706961, -0.0143544, 0.0143541, 0.706961)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.706967, -0.0140618, 0.0140615, 0.706967)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.706973, -0.0137559, 0.0137556, 0.706973)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.706979, -0.013439, 0.0134387, 0.706979)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.706985, -0.0131101, 0.0131098, 0.706985)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.706991, -0.01277, 0.0127698, 0.706992)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.706998, -0.0124196, 0.0124193, 0.706998)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.707004, -0.0120581, 0.0120578, 0.707004)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.70701, -0.0116875, 0.0116872, 0.70701)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.707016, -0.0113071, 0.0113068, 0.707016)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.707022, -0.0109183, 0.010918, 0.707023)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.707028, -0.0105216, 0.0105214, 0.707029)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.707034, -0.0101177, 0.0101174, 0.707034)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.70704, -0.00970747, 0.00970719, 0.70704)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.707046, -0.00929147, 0.00929119, 0.707046)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.707051, -0.00887119, 0.00887091, 0.707051)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.707056, -0.00844654, 0.00844625, 0.707056)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.707061, -0.00801882, 0.00801854, 0.707061)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.707066, -0.00758916, 0.00758888, 0.707066)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.70707, -0.00715846, 0.00715818, 0.707071)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.707075, -0.00672758, 0.0067273, 0.707075)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.707079, -0.00629817, 0.00629789, 0.707079)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.707082, -0.00587094, 0.00587066, 0.707083)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.707086, -0.00544652, 0.00544624, 0.707086)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.707089, -0.0050259, 0.00502562, 0.707089)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.707092, -0.0046108, 0.00461052, 0.707092)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.707094, -0.00420188, 0.0042016, 0.707094)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.707097, -0.00380064, 0.00380036, 0.707097)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.707099, -0.00340712, 0.00340684, 0.707099)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.7071, -0.00302329, 0.00302301, 0.7071)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.707102, -0.00265014, 0.00264986, 0.707102)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.707103, -0.0022875, 0.00228722, 0.707103)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.707104, -0.00193726, 0.00193698, 0.707104)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.707105, -0.00160076, 0.00160047, 0.707105)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.707106, -0.00127722, 0.00127694, 0.707106)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.707106, -0.000968802, 0.000968522, 0.707106)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.707106, -0.000675985, 0.000675705, 0.707107)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.707107, -0.000398476, 0.000398196, 0.707107)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.707107, -0.000138778, 0.000138498, 0.707107)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.707107, 0.000104095, -0.000104375, 0.707107)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.707107, 0.000329182, -0.000329461, 0.707107)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.707107, 0.000536199, -0.000536479, 0.707107)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.707106, 0.000723973, -0.000724253, 0.707106)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.707106, 0.000892714, -0.000892994, 0.707106)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.707106, 0.00104198, -0.00104226, 0.707106)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.707106, 0.00117232, -0.0011726, 0.707106)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.707106, 0.00128228, -0.00128256, 0.707106)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.707105, 0.00137171, -0.00137199, 0.707106)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.707105, 0.00144227, -0.00144255, 0.707105)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.707105, 0.00149199, -0.00149226, 0.707105)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.707105, 0.00152208, -0.00152236, 0.707105)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.707105, 0.0015317, -0.00153198, 0.707105)
            }
        }
        KeyframeGroup {
            target: frontLowLeg_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.981717, 0.183025, 0.0514019, -0.00958298)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.981638, 0.183445, 0.0513978, -0.00960497)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.98154, 0.183971, 0.0513926, -0.00963255)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.981476, 0.184313, 0.0513893, -0.00965041)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.981402, 0.184706, 0.0513854, -0.00967102)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.981318, 0.185152, 0.051381, -0.00969439)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.981224, 0.18565, 0.0513761, -0.00972043)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.98112, 0.186197, 0.0513706, -0.0097491)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.981006, 0.186795, 0.0513647, -0.00978039)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.980883, 0.187442, 0.0513582, -0.00981425)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.98075, 0.188135, 0.0513513, -0.00985056)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.980608, 0.188875, 0.0513438, -0.00988931)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.980456, 0.189662, 0.0513359, -0.0099305)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.980295, 0.190491, 0.0513275, -0.00997393)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.980126, 0.191363, 0.0513186, -0.0100195)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.979947, 0.192275, 0.0513092, -0.0100673)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.97976, 0.193226, 0.0512994, -0.0101171)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.979564, 0.194215, 0.0512892, -0.0101689)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.979361, 0.195238, 0.0512785, -0.0102224)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.97915, 0.196294, 0.0512675, -0.0102778)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.978931, 0.197381, 0.051256, -0.0103347)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.978706, 0.198496, 0.0512442, -0.0103931)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.978474, 0.199637, 0.0512321, -0.0104528)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.978235, 0.200802, 0.0512196, -0.0105138)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.977991, 0.201988, 0.0512068, -0.0105759)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.977742, 0.203192, 0.0511938, -0.0106389)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.977488, 0.204412, 0.0511804, -0.0107028)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.977229, 0.205645, 0.0511669, -0.0107674)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.976966, 0.206888, 0.0511531, -0.0108325)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.9767, 0.208141, 0.0511392, -0.010898)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.976431, 0.209398, 0.0511251, -0.0109639)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.976161, 0.210658, 0.051111, -0.0110298)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.975888, 0.211918, 0.0510967, -0.0110958)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.975614, 0.213175, 0.0510823, -0.0111616)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.975339, 0.214429, 0.0510679, -0.0112273)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.975065, 0.215673, 0.0510536, -0.0112924)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.974791, 0.216908, 0.0510392, -0.0113571)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.974518, 0.218131, 0.0510249, -0.0114211)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.974247, 0.21934, 0.0510107, -0.0114844)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.973977, 0.220531, 0.0509967, -0.0115468)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.973711, 0.221704, 0.0509827, -0.0116082)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.973448, 0.222856, 0.0509689, -0.0116685)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.973189, 0.223986, 0.0509554, -0.0117277)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.972934, 0.22509, 0.050942, -0.0117855)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.972684, 0.226168, 0.0509289, -0.0118419)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.972439, 0.22722, 0.0509161, -0.011897)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.972199, 0.228242, 0.0509036, -0.0119505)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.971966, 0.229233, 0.0508913, -0.0120024)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.971739, 0.230192, 0.0508795, -0.0120526)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.971519, 0.231119, 0.050868, -0.0121012)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.971306, 0.232013, 0.0508568, -0.0121479)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.971101, 0.232871, 0.0508461, -0.0121929)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.970904, 0.233693, 0.0508357, -0.0122359)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.970714, 0.234479, 0.0508258, -0.0122771)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.970533, 0.235228, 0.0508163, -0.0123163)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.97036, 0.235941, 0.0508072, -0.0123536)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.970195, 0.236615, 0.0507986, -0.0123889)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.97004, 0.237251, 0.0507905, -0.0124222)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.969894, 0.237848, 0.0507829, -0.0124535)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.969757, 0.238406, 0.0507757, -0.0124827)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.969629, 0.238927, 0.050769, -0.01251)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.96951, 0.239407, 0.0507628, -0.0125351)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.969302, 0.240251, 0.0507518, -0.0125793)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.969131, 0.240939, 0.0507429, -0.0126153)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.968998, 0.241472, 0.0507359, -0.0126432)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.968871, 0.241981, 0.0507293, -0.0126699)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.969017, 0.241395, 0.050737, -0.0126392)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.969165, 0.240802, 0.0507447, -0.0126081)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.969355, 0.240035, 0.0507546, -0.012568)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.969466, 0.239588, 0.0507604, -0.0125446)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.969587, 0.239096, 0.0507668, -0.0125188)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.969719, 0.23856, 0.0507737, -0.0124908)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.969861, 0.237981, 0.0507811, -0.0124605)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.970013, 0.23736, 0.0507891, -0.0124279)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.970176, 0.236696, 0.0507976, -0.0123931)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.970348, 0.235988, 0.0508066, -0.0123561)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.97053, 0.235239, 0.0508162, -0.0123169)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.970722, 0.234447, 0.0508262, -0.0122754)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.970922, 0.233615, 0.0508367, -0.0122319)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.971132, 0.232744, 0.0508476, -0.0121862)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.97135, 0.231832, 0.0508591, -0.0121385)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.971576, 0.230882, 0.0508709, -0.0120888)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.97181, 0.229893, 0.0508832, -0.012037)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.972052, 0.22887, 0.0508958, -0.0119834)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.9723, 0.227811, 0.0509088, -0.011928)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.972556, 0.226719, 0.0509222, -0.0118708)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.972817, 0.225596, 0.0509359, -0.011812)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.973084, 0.224442, 0.0509499, -0.0117516)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.973355, 0.223261, 0.0509641, -0.0116897)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.973632, 0.222053, 0.0509785, -0.0116265)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.973912, 0.220822, 0.0509932, -0.011562)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.974195, 0.219569, 0.051008, -0.0114964)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.974481, 0.218297, 0.051023, -0.0114298)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.974768, 0.217009, 0.0510381, -0.0113624)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.975057, 0.215707, 0.0510532, -0.0112942)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.975347, 0.214394, 0.0510683, -0.0112255)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.975636, 0.213073, 0.0510835, -0.0111563)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.975925, 0.211746, 0.0510986, -0.0110868)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.976213, 0.210416, 0.0511137, -0.0110172)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.976498, 0.209087, 0.0511286, -0.0109476)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.976781, 0.207762, 0.0511434, -0.0108782)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.97706, 0.206444, 0.0511581, -0.0108092)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.977336, 0.205137, 0.0511725, -0.0107408)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.977607, 0.203842, 0.0511867, -0.010673)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.977872, 0.202562, 0.0512006, -0.010606)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.978133, 0.201303, 0.0512142, -0.01054)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.978386, 0.200065, 0.0512275, -0.0104752)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.978633, 0.198853, 0.0512404, -0.0104117)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.978873, 0.197668, 0.051253, -0.0103497)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.979106, 0.196515, 0.0512652, -0.0102893)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.97933, 0.195396, 0.0512769, -0.0102307)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.979545, 0.194311, 0.0512882, -0.0101739)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.979752, 0.193266, 0.051299, -0.0101192)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.979949, 0.192263, 0.0513093, -0.0100667)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.980138, 0.191302, 0.0513192, -0.0100164)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.980316, 0.190386, 0.0513285, -0.00996843)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.980484, 0.189519, 0.0513373, -0.009923)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.980642, 0.188698, 0.0513456, -0.00988005)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.980789, 0.187931, 0.0513533, -0.00983987)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.980926, 0.187215, 0.0513605, -0.00980237)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.981053, 0.186552, 0.0513671, -0.00976766)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.981168, 0.185943, 0.0513732, -0.00973579)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.981273, 0.185391, 0.0513786, -0.0097069)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.981366, 0.184896, 0.0513835, -0.00968096)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.981449, 0.184458, 0.0513878, -0.00965804)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.98152, 0.184077, 0.0513916, -0.00963806)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.98163, 0.183492, 0.0513973, -0.00960747)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.981712, 0.183053, 0.0514016, -0.00958447)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.981717, 0.183025, 0.0514019, -0.00958298)
            }
        }
        KeyframeGroup {
            target: frontLowLeg_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.982885, 0.183241, -0.0186612, 0.00347909)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.982806, 0.183661, -0.0186597, 0.00348707)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.982708, 0.184188, -0.0186578, 0.00349708)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.982644, 0.18453, -0.0186566, 0.00350357)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.982569, 0.184924, -0.0186552, 0.00351105)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.982485, 0.185371, -0.0186536, 0.00351953)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.982391, 0.185869, -0.0186518, 0.00352899)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.982287, 0.186417, -0.0186498, 0.0035394)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.982174, 0.187015, -0.0186477, 0.00355076)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.98205, 0.187663, -0.0186453, 0.00356305)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.981917, 0.188357, -0.0186428, 0.00357623)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.981775, 0.189098, -0.0186401, 0.0035903)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.981623, 0.189886, -0.0186372, 0.00360525)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.981462, 0.190716, -0.0186342, 0.00362102)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.981292, 0.191589, -0.0186309, 0.00363758)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.981113, 0.192502, -0.0186275, 0.00365493)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.980926, 0.193455, -0.018624, 0.00367301)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.98073, 0.194445, -0.0186203, 0.00369181)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.980526, 0.195468, -0.0186164, 0.00371124)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.980315, 0.196526, -0.0186124, 0.00373133)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.980096, 0.197614, -0.0186082, 0.00375198)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.97987, 0.198731, -0.018604, 0.00377318)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.979638, 0.199873, -0.0185995, 0.00379486)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.979399, 0.201039, -0.018595, 0.00381702)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.979155, 0.202226, -0.0185904, 0.00383955)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.978905, 0.203432, -0.0185856, 0.00386244)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.97865, 0.204653, -0.0185808, 0.00388563)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.978391, 0.205888, -0.0185759, 0.00390908)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.978129, 0.207133, -0.0185709, 0.00393271)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.977862, 0.208387, -0.0185658, 0.00395652)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.977593, 0.209646, -0.0185607, 0.00398042)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.977322, 0.210907, -0.0185556, 0.00400436)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.977049, 0.212168, -0.0185504, 0.00402831)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.976775, 0.213427, -0.0185452, 0.00405222)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.976499, 0.214682, -0.01854, 0.00407604)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.976225, 0.215928, -0.0185347, 0.0040997)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.97595, 0.217164, -0.0185295, 0.00412317)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.975677, 0.218389, -0.0185243, 0.00414643)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.975406, 0.219599, -0.0185192, 0.00416939)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.975136, 0.220792, -0.0185141, 0.00419204)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.974869, 0.221967, -0.018509, 0.00421435)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.974606, 0.22312, -0.018504, 0.00423623)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.974347, 0.224251, -0.0184991, 0.00425771)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.974091, 0.225357, -0.0184942, 0.00427871)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.973841, 0.226436, -0.0184895, 0.0042992)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.973596, 0.227489, -0.0184848, 0.0043192)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.973356, 0.228512, -0.0184803, 0.00433861)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.973123, 0.229504, -0.0184758, 0.00435746)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.972896, 0.230465, -0.0184715, 0.00437569)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.972675, 0.231393, -0.0184673, 0.00439331)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.972462, 0.232287, -0.0184633, 0.00441029)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.972256, 0.233146, -0.0184594, 0.0044266)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.972059, 0.23397, -0.0184556, 0.00444224)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.971869, 0.234757, -0.018452, 0.00445718)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.971687, 0.235507, -0.0184486, 0.00447142)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.971514, 0.23622, -0.0184453, 0.00448496)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.97135, 0.236895, -0.0184422, 0.00449778)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.971194, 0.237532, -0.0184392, 0.00450987)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.971048, 0.23813, -0.0184365, 0.00452122)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.970911, 0.238689, -0.0184338, 0.00453183)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.970782, 0.23921, -0.0184314, 0.00454173)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.970664, 0.239691, -0.0184292, 0.00455086)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.970455, 0.240536, -0.0184252, 0.0045669)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.970284, 0.241224, -0.0184219, 0.00457997)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.970151, 0.241757, -0.0184194, 0.0045901)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.970024, 0.242268, -0.018417, 0.00459979)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.97017, 0.24168, -0.0184198, 0.00458863)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.970318, 0.241087, -0.0184226, 0.00457737)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.970508, 0.24032, -0.0184262, 0.0045628)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.970619, 0.239871, -0.0184283, 0.00455428)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.970741, 0.239379, -0.0184306, 0.00454493)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.970873, 0.238843, -0.0184331, 0.00453475)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.971015, 0.238263, -0.0184358, 0.00452375)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.971168, 0.237641, -0.0184387, 0.00451194)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.97133, 0.236976, -0.0184418, 0.00449931)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.971503, 0.236268, -0.0184451, 0.00448587)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.971685, 0.235517, -0.0184485, 0.00447162)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.971877, 0.234725, -0.0184522, 0.00445657)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.972077, 0.233892, -0.018456, 0.00444076)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.972287, 0.233019, -0.01846, 0.00442419)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.972505, 0.232106, -0.0184641, 0.00440685)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.972732, 0.231156, -0.0184684, 0.00438881)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.972966, 0.230165, -0.0184729, 0.00437001)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.973208, 0.229141, -0.0184775, 0.00435056)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.973457, 0.228081, -0.0184822, 0.00433043)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.973713, 0.226988, -0.018487, 0.00430967)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.973974, 0.225863, -0.018492, 0.00428833)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.974241, 0.224708, -0.0184971, 0.00426639)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.974513, 0.223525, -0.0185022, 0.00424394)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.97479, 0.222316, -0.0185075, 0.00422098)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.97507, 0.221083, -0.0185128, 0.00419758)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.975354, 0.219829, -0.0185182, 0.00417376)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.97564, 0.218555, -0.0185236, 0.00414958)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.975928, 0.217266, -0.0185291, 0.00412509)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.976217, 0.215962, -0.0185346, 0.00410034)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.976507, 0.214648, -0.0185401, 0.00407539)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.976797, 0.213325, -0.0185456, 0.00405027)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.977086, 0.211996, -0.0185511, 0.00402504)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.977374, 0.210665, -0.0185566, 0.00399977)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.97766, 0.209334, -0.018562, 0.00397451)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.977943, 0.208007, -0.0185674, 0.00394931)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.978223, 0.206688, -0.0185727, 0.00392427)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.978498, 0.205379, -0.0185779, 0.00389941)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.97877, 0.204083, -0.0185831, 0.0038748)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.979036, 0.202802, -0.0185881, 0.00385048)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.979296, 0.20154, -0.0185931, 0.00382653)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.97955, 0.200301, -0.0185979, 0.003803)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.979798, 0.199088, -0.0186026, 0.00377997)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.980038, 0.197902, -0.0186071, 0.00375745)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.980271, 0.196747, -0.0186116, 0.00373552)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.980495, 0.195627, -0.0186158, 0.00371425)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.980711, 0.194541, -0.0186199, 0.00369364)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.980918, 0.193494, -0.0186238, 0.00367377)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.981115, 0.19249, -0.0186276, 0.0036547)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.981304, 0.191527, -0.0186312, 0.00363642)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.981482, 0.190611, -0.0186346, 0.00361902)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.98165, 0.189742, -0.0186378, 0.00360253)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.981809, 0.188921, -0.0186408, 0.00358694)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.981956, 0.188153, -0.0186436, 0.00357235)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.982093, 0.187436, -0.0186462, 0.00355873)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.98222, 0.186772, -0.0186486, 0.00354613)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.982336, 0.186163, -0.0186508, 0.00353456)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.98244, 0.18561, -0.0186527, 0.00352407)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.982534, 0.185114, -0.0186545, 0.00351466)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.982616, 0.184676, -0.0186561, 0.00350633)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.982688, 0.184294, -0.0186575, 0.00349908)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.982797, 0.183709, -0.0186595, 0.00348798)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.98288, 0.183269, -0.0186611, 0.00347963)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.982885, 0.183241, -0.0186612, 0.00347909)
            }
        }
        KeyframeGroup {
            target: head
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.736929, -0.624538, -0.197814, 0.166608)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.736585, -0.625097, -0.197984, 0.165828)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.736516, -0.625639, -0.198235, 0.163778)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.736706, -0.626163, -0.19857, 0.160483)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.736517, -0.627374, -0.199135, 0.155852)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.736264, -0.628828, -0.199817, 0.150211)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.735952, -0.630429, -0.200571, 0.143897)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.735594, -0.63206, -0.201343, 0.137343)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.735217, -0.633605, -0.20208, 0.131017)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.734852, -0.634963, -0.202731, 0.125354)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.734534, -0.636063, -0.203261, 0.120699)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.734437, -0.636691, -0.20362, 0.117327)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.734138, -0.637339, -0.203878, 0.115214)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.734265, -0.63711, -0.204256, 0.115004)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.734415, -0.63689, -0.204223, 0.115319)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.734478, -0.636808, -0.204114, 0.115561)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.734533, -0.636745, -0.203943, 0.115862)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.73458, -0.6367, -0.203711, 0.116219)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.734577, -0.636602, -0.203642, 0.116895)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.734556, -0.636505, -0.203565, 0.117687)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.734516, -0.63641, -0.203479, 0.118594)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.734458, -0.636317, -0.203384, 0.119613)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.734578, -0.635998, -0.203243, 0.120805)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.73468, -0.63568, -0.203094, 0.122103)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.734763, -0.635364, -0.202937, 0.123501)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.734828, -0.635049, -0.202772, 0.124993)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.734954, -0.634645, -0.202585, 0.126598)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.735063, -0.634243, -0.202392, 0.128283)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.735156, -0.633841, -0.202193, 0.130039)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.735283, -0.633382, -0.201978, 0.131873)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.735396, -0.632925, -0.20176, 0.133759)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.735498, -0.632468, -0.201537, 0.135684)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.735617, -0.631979, -0.201307, 0.137648)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.735727, -0.63149, -0.201074, 0.139629)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.735831, -0.631, -0.200841, 0.141614)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.735932, -0.630509, -0.200607, 0.143593)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.736032, -0.630017, -0.200375, 0.145552)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.736133, -0.629524, -0.200144, 0.14748)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.736212, -0.62906, -0.199921, 0.149357)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.736297, -0.628594, -0.199702, 0.151181)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.73639, -0.628127, -0.199488, 0.152941)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.736444, -0.627717, -0.199289, 0.154614)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.736512, -0.627304, -0.199096, 0.156205)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.736594, -0.626891, -0.198909, 0.157708)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.736626, -0.626555, -0.198745, 0.159094)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.736677, -0.626218, -0.198588, 0.16038)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.736747, -0.625879, -0.198437, 0.161561)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.73673, -0.625667, -0.198322, 0.162599)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.736735, -0.625454, -0.198215, 0.163525)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.736764, -0.625238, -0.198115, 0.164337)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.736824, -0.62503, -0.197996, 0.165002)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.736895, -0.624803, -0.197938, 0.165614)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.736672, -0.625001, -0.197898, 0.165908)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.736459, -0.625181, -0.197919, 0.166148)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.736258, -0.625342, -0.198, 0.166335)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.736122, -0.625548, -0.197941, 0.166232)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.736027, -0.625689, -0.198099, 0.165937)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.736115, -0.625849, -0.198208, 0.164806)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.736351, -0.626, -0.198363, 0.16298)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.736709, -0.626143, -0.19856, 0.160561)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.736573, -0.626948, -0.198931, 0.157554)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.736454, -0.627751, -0.199311, 0.154399)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.736372, -0.628464, -0.199662, 0.151411)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.736198, -0.629182, -0.199983, 0.148826)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.736629, -0.629058, -0.200091, 0.147064)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.736921, -0.628944, -0.200151, 0.146)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.73702, -0.628767, -0.200389, 0.145936)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.737082, -0.628658, -0.200402, 0.146077)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.737131, -0.628571, -0.200341, 0.146283)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.737168, -0.628507, -0.200206, 0.146556)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.737193, -0.628466, -0.199998, 0.146896)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.737155, -0.628377, -0.199932, 0.147554)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.73709, -0.62829, -0.199857, 0.148346)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.737, -0.628206, -0.199773, 0.149262)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.736887, -0.628122, -0.199681, 0.150292)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.736752, -0.628041, -0.199582, 0.15142)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.736599, -0.62796, -0.199479, 0.15263)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.736432, -0.62788, -0.199372, 0.1539)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.736495, -0.62752, -0.199204, 0.155282)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.736552, -0.62716, -0.199035, 0.156677)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.736609, -0.626799, -0.198866, 0.158058)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.736636, -0.62648, -0.198709, 0.15939)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.736674, -0.626159, -0.198556, 0.160661)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.736726, -0.625838, -0.198409, 0.16185)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.736799, -0.625514, -0.198268, 0.16294)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.736621, -0.625511, -0.198205, 0.16383)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.736469, -0.625506, -0.198152, 0.164595)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.736354, -0.625509, -0.198076, 0.16519)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.736252, -0.62549, -0.198072, 0.165722)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.736229, -0.625528, -0.197891, 0.165893)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.736221, -0.625543, -0.197783, 0.166)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.736929, -0.624538, -0.197814, 0.166608)
            }
        }
        KeyframeGroup {
            target: neck
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.98823, 0.151294, -0.0184518, -0.0130467)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.988271, 0.151026, -0.0184483, -0.0130517)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.988275, 0.151026, -0.0183343, -0.012909)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.988286, 0.151035, -0.0179898, -0.0124776)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.988303, 0.151052, -0.0174133, -0.0117557)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.988324, 0.151076, -0.0166064, -0.0107453)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.98835, 0.151107, -0.0155751, -0.00945412)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.988377, 0.15114, -0.0143304, -0.00789614)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.988404, 0.151175, -0.0128892, -0.00609272)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.988429, 0.151208, -0.011275, -0.0040732)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.98845, 0.151237, -0.00951738, -0.00187496)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.988463, 0.15127, -0.00765231, 0.000457219)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.988468, 0.151294, -0.00572046, 0.00287229)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.988465, 0.151308, -0.00376587, 0.0053153)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.988454, 0.151313, -0.00183367, 0.00772995)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.988435, 0.151309, 3.20788e-05, 0.0100613)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.988411, 0.151297, 0.00179057, 0.0122586)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.988382, 0.151279, 0.0034059, 0.0142769)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.988352, 0.151258, 0.00484818, 0.016079)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.988321, 0.151237, 0.006094, 0.0176357)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.988294, 0.151217, 0.00712634, 0.0189257)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.98827, 0.151201, 0.00793411, 0.0199351)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.988252, 0.151189, 0.00851131, 0.0206563)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.988241, 0.151185, 0.00885619, 0.0210872)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.988236, 0.151187, 0.00897041, 0.0212298)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.988237, 0.151193, 0.00893799, 0.0211891)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.988239, 0.151202, 0.00884001, 0.0210664)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.988243, 0.151212, 0.00867594, 0.0208611)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.988249, 0.151225, 0.00844542, 0.0205728)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.988257, 0.151239, 0.00814838, 0.0202014)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.988267, 0.151255, 0.00778502, 0.0197471)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.988278, 0.151272, 0.00735585, 0.0192106)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.988291, 0.15129, 0.00686175, 0.018593)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.988304, 0.15131, 0.00630402, 0.0178959)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.988319, 0.151329, 0.00568439, 0.0171215)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.988334, 0.15135, 0.00500506, 0.0162726)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.988349, 0.15137, 0.00426873, 0.0153526)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.988364, 0.151389, 0.00347863, 0.0143654)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.988378, 0.151408, 0.00263854, 0.0133158)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.988392, 0.151425, 0.00175276, 0.0122091)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.988404, 0.151441, 0.000826094, 0.0110514)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.988415, 0.151454, -0.000136105, 0.00984939)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.988424, 0.151466, -0.00112807, 0.00861017)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.988432, 0.151475, -0.00214362, 0.00734148)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.988437, 0.151481, -0.00317625, 0.00605142)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.988439, 0.151485, -0.00421922, 0.00474839)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.988439, 0.151486, -0.00526563, 0.003441)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.988437, 0.151484, -0.00630855, 0.00213789)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.988433, 0.151479, -0.00734106, 0.000847652)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.988426, 0.151472, -0.00835644, -0.000421282)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.988418, 0.151462, -0.0093482, -0.00166083)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.988407, 0.151451, -0.0103101, -0.00286325)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.988395, 0.151438, -0.0112365, -0.00402135)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.988381, 0.151423, -0.012122, -0.00512847)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.988367, 0.151408, -0.0129618, -0.00617858)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.988352, 0.151392, -0.0137516, -0.00716628)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.988337, 0.151377, -0.0144876, -0.00808687)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.988322, 0.151361, -0.0151666, -0.00893628)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.988307, 0.151347, -0.015786, -0.00971112)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.988293, 0.151334, -0.0163434, -0.0104086)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.98828, 0.151322, -0.0168373, -0.0110266)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.988268, 0.151312, -0.0172663, -0.0115634)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.988257, 0.151304, -0.0176296, -0.012018)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.988248, 0.151298, -0.0179266, -0.0123896)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.988241, 0.151295, -0.0181571, -0.012678)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.988235, 0.151294, -0.0183212, -0.0128833)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.988232, 0.15129, -0.0184193, -0.013006)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.988232, 0.151289, -0.018427, -0.0130506)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.98823, 0.151294, -0.0184518, -0.0130467)
            }
        }
        KeyframeGroup {
            target: tail3
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(3.20084e-07, -1.03101e-08, 0.986086, -0.166237)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.000483958, 0.000485853, 0.986092, -0.166197)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.00083367, 0.00176672, 0.986097, -0.166158)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.00104866, 0.00384789, 0.986097, -0.166121)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.00113029, 0.00672168, 0.986088, -0.166087)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.00108272, 0.0103639, 0.986061, -0.166055)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.000913375, 0.0147306, 0.986011, -0.166026)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.00135344, 0.019876, 0.985923, -0.166012)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.00169796, 0.0255875, 0.985791, -0.166007)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.0019667, 0.0317497, 0.985611, -0.166012)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.00239086, 0.0382606, 0.985375, -0.166034)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.00278752, 0.0449319, 0.985086, -0.166069)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.00318962, 0.0516012, 0.984769, -0.166001)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.00350606, 0.058088, 0.984417, -0.165939)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.00387639, 0.0642585, 0.984042, -0.165886)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.00432399, 0.0699761, 0.983659, -0.16583)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.00439772, 0.0750479, 0.983298, -0.165749)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.00458006, 0.0794619, 0.982958, -0.165704)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.00488467, 0.0831515, 0.982659, -0.165661)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.00531889, 0.0860734, 0.982412, -0.165618)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.00487091, 0.088039, 0.982238, -0.165632)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.00455741, 0.0892059, 0.982132, -0.165642)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.00437767, 0.0895797, 0.982098, -0.165648)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.00407867, 0.0892779, 0.982125, -0.16566)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.00399738, 0.089068, 0.982144, -0.165663)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.00392527, 0.0888036, 0.982168, -0.165667)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.00386236, 0.0884846, 0.982196, -0.16567)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.00380871, 0.0881115, 0.982229, -0.165673)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.00376416, 0.0876844, 0.982267, -0.165675)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.00372856, 0.0872036, 0.98231, -0.165678)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.00370197, 0.0866694, 0.982357, -0.165681)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.00368432, 0.0860821, 0.982408, -0.165683)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.00367564, 0.0854423, 0.982463, -0.165685)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.00367564, 0.0847503, 0.982523, -0.165687)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.00368433, 0.0840068, 0.982587, -0.165689)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.00370172, 0.0832124, 0.982654, -0.165691)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.00372746, 0.0823677, 0.982724, -0.165693)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.00376165, 0.0814735, 0.982799, -0.165695)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.00380394, 0.0805306, 0.982876, -0.165696)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.00385428, 0.07954, 0.982956, -0.165698)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.00391252, 0.0785024, 0.983039, -0.165699)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.00397859, 0.0774189, 0.983125, -0.1657)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.00405219, 0.0762908, 0.983212, -0.165701)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.00413087, 0.0751193, 0.983297, -0.16573)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.00421674, 0.0739054, 0.983384, -0.165758)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.00430957, 0.0726506, 0.983472, -0.165787)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.00440924, 0.0713563, 0.983562, -0.165815)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.00429169, 0.0699867, 0.983659, -0.165829)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.00418031, 0.0685807, 0.983756, -0.165842)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.0040746, 0.0671397, 0.983853, -0.165857)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.00397472, 0.0656657, 0.983951, -0.165871)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.00388016, 0.0641604, 0.984048, -0.165887)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.00379058, 0.0626257, 0.984144, -0.165902)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.00370567, 0.0610635, 0.98424, -0.165918)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.00362495, 0.0594759, 0.984335, -0.165935)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.00354831, 0.057865, 0.984428, -0.165952)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.00347515, 0.056233, 0.98452, -0.16597)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.00336225, 0.0545749, 0.984611, -0.165986)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.00325207, 0.0529002, 0.9847, -0.166002)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.00314498, 0.0512113, 0.984788, -0.166012)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.00303968, 0.0495104, 0.984874, -0.166022)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.00293597, 0.0478002, 0.984957, -0.166033)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.00283356, 0.0460832, 0.985037, -0.166044)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.00273191, 0.0443617, 0.985114, -0.166057)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.00263059, 0.0426385, 0.985188, -0.16607)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.00252906, 0.040916, 0.985259, -0.166084)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.00243356, 0.039198, 0.985327, -0.166099)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.00233709, 0.037486, 0.985391, -0.166115)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.00223945, 0.0357827, 0.985452, -0.166131)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.00214059, 0.0340905, 0.985513, -0.166123)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.00203936, 0.0324122, 0.985571, -0.166116)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.00193532, 0.0307503, 0.985626, -0.16611)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.00182828, 0.0291075, 0.985677, -0.166104)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.00171734, 0.0274863, 0.985724, -0.1661)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.00160231, 0.0258891, 0.985768, -0.166096)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.00154213, 0.0243286, 0.985809, -0.166094)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.00147729, 0.0227971, 0.985846, -0.166093)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.00140691, 0.0212969, 0.985879, -0.166092)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.00133096, 0.0198305, 0.98591, -0.166092)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.00124881, 0.0184002, 0.985938, -0.166093)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.00116023, 0.017008, 0.985963, -0.166094)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.00106496, 0.0156562, 0.985985, -0.166096)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.00096244, 0.0143468, 0.986004, -0.166098)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.000852669, 0.0130819, 0.986022, -0.166101)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.000734866, 0.0118633, 0.986037, -0.166104)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.000881548, 0.0107387, 0.986048, -0.166111)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.00101983, 0.00966408, 0.986058, -0.166117)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.00114933, 0.00864099, 0.986066, -0.166124)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.00126999, 0.00767109, 0.986073, -0.16613)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.00138146, 0.00675584, 0.986079, -0.166137)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.0014835, 0.00589666, 0.986083, -0.166143)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.00157577, 0.00509483, 0.986086, -0.16615)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.00165828, 0.00435165, 0.986088, -0.166157)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.00173074, 0.00366822, 0.98609, -0.166163)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.00179295, 0.00304565, 0.986091, -0.16617)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.00184475, 0.00248486, 0.986091, -0.166177)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.00188589, 0.00198676, 0.986091, -0.166184)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.00191644, 0.0015522, 0.986091, -0.166191)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.00193616, 0.00118192, 0.98609, -0.166198)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.00194495, 0.000876544, 0.986089, -0.166206)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.00194258, 0.000636692, 0.986088, -0.166213)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.00192921, 0.000462861, 0.986087, -0.166221)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.00190463, 0.000355504, 0.986085, -0.166229)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.00186879, 0.00031498, 0.986084, -0.166237)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.00182743, 0.000307156, 0.986159, -0.165789)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.00178622, 0.000297711, 0.986386, -0.164437)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.00174537, 0.00028681, 0.986759, -0.162186)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.00170472, 0.000274625, 0.987264, -0.159082)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.00166421, 0.000261427, 0.987878, -0.155222)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.00162378, 0.000247567, 0.988569, -0.15076)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.00158322, 0.000233439, 0.989297, -0.145907)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.00154272, 0.000219523, 0.99002, -0.140917)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.00150209, 0.000206226, 0.9907, -0.136058)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.00146129, 0.000193905, 0.991304, -0.131584)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.00142018, 0.000182802, 0.991811, -0.127708)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.001379, 0.000173091, 0.992208, -0.124587)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.00133762, 0.000164795, 0.99249, -0.122322)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.00129608, 0.000157869, 0.992657, -0.12096)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.00125437, 0.000152207, 0.992712, -0.120507)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.00121227, 0.000148891, 0.992535, -0.121956)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.00116985, 0.000148921, 0.991987, -0.126333)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.00112703, 0.000151812, 0.991041, -0.13355)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.00108384, 0.000156856, 0.989681, -0.143287)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.00104023, 0.000163075, 0.987924, -0.154936)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.000996561, 0.000169369, 0.985852, -0.167612)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.000952912, 0.000174569, 0.983618, -0.180261)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.00090949, 0.000177711, 0.981426, -0.191837)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.00086648, 0.000178168, 0.979493, -0.201479)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.000823888, 0.000175669, 0.978, -0.208605)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.000781989, 0.000170344, 0.977069, -0.21292)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.000740636, 0.000162467, 0.976757, -0.214348)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.000699585, 0.000153213, 0.976829, -0.214022)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.000658624, 0.000143543, 0.977044, -0.213037)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.000617618, 0.000133512, 0.977402, -0.21139)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.000576779, 0.000123266, 0.977894, -0.209099)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.000535965, 0.00011288, 0.978509, -0.206203)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.000495151, 0.000102467, 0.979226, -0.202769)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.000454195, 9.21137e-05, 0.980021, -0.198894)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.000413309, 8.19783e-05, 0.980862, -0.194703)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.000372358, 7.21326e-05, 0.981717, -0.190347)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.000331328, 6.26523e-05, 0.982552, -0.185987)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.000290213, 5.35861e-05, 0.983338, -0.181786)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.000248895, 4.49307e-05, 0.984049, -0.177895)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.000207616, 3.67167e-05, 0.984667, -0.174443)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.000166266, 2.88841e-05, 0.985179, -0.171528)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.00012486, 2.13736e-05, 0.985578, -0.16922)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(8.3292e-05, 1.40923e-05, 0.985862, -0.16756)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(4.18131e-05, 6.99903e-06, 0.98603, -0.166566)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(3.20084e-07, -1.03101e-08, 0.986086, -0.166237)
            }
        }
        KeyframeGroup {
            target: tail4
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.998846, -0.048029, 2.67591e-08, 4.54472e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.998846, -0.0480238, -1.13256e-05, -4.81129e-05)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.998846, -0.0480187, -4.54852e-05, -0.00019308)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.998847, -0.0480136, -0.000102626, -0.00043552)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.998847, -0.0480086, -0.00018287, -0.000775949)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.998846, -0.0480037, -0.000286293, -0.00121473)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.998846, -0.0479989, -0.000412951, -0.00175207)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.998845, -0.0479945, -0.000562842, -0.00238797)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.998843, -0.0479903, -0.000735927, -0.00312223)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.99884, -0.0479867, -0.000932095, -0.00395443)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.998836, -0.0479837, -0.0011512, -0.00488389)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.99883, -0.0479813, -0.00139301, -0.00590967)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.998822, -0.0479799, -0.00165723, -0.00703055)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.998812, -0.0479795, -0.0019435, -0.00824502)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.9988, -0.0479802, -0.00225138, -0.0095512)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.998785, -0.0479824, -0.00258035, -0.0109469)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.998766, -0.0479861, -0.0029298, -0.0124296)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.998744, -0.0479915, -0.003299, -0.0139964)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.998718, -0.0479987, -0.00368721, -0.015644)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.998688, -0.0480081, -0.00409352, -0.0173687)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.998652, -0.0480196, -0.00451696, -0.0191665)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.998613, -0.0480135, -0.00495688, -0.0210328)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.998568, -0.0480098, -0.0054118, -0.0229629)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.998518, -0.0480088, -0.00588045, -0.0249516)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.998462, -0.0480105, -0.00636152, -0.0269934)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.9984, -0.0480043, -0.00685391, -0.0290822)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.998332, -0.0480011, -0.00735587, -0.0312122)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.998259, -0.0480007, -0.00786588, -0.0333767)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.998179, -0.0479938, -0.00838267, -0.0355691)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.998093, -0.0479897, -0.00890432, -0.0377825)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.998002, -0.0479884, -0.00942915, -0.04001)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.997905, -0.0479823, -0.0099558, -0.0422444)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.997802, -0.0479788, -0.0104823, -0.0444786)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.997695, -0.0479724, -0.0110071, -0.0467054)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.997584, -0.0479683, -0.0115284, -0.0489177)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.997468, -0.0479618, -0.0120448, -0.0511086)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.997349, -0.047957, -0.0125544, -0.0532712)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.997227, -0.0479505, -0.0130559, -0.0553988)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.997102, -0.0479451, -0.0135475, -0.0574851)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.996976, -0.0479388, -0.014028, -0.0595239)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.99685, -0.0479329, -0.0144959, -0.0615093)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.996722, -0.047927, -0.0149499, -0.0634359)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.996596, -0.0479207, -0.0153889, -0.0652986)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.99647, -0.0479152, -0.0158117, -0.0670924)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.996347, -0.0479088, -0.0162172, -0.0688132)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.996226, -0.0479038, -0.0166045, -0.0704567)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.996108, -0.0478973, -0.0169728, -0.0720194)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.995994, -0.047893, -0.0173212, -0.0734981)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.995885, -0.0478866, -0.0176493, -0.0748898)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.995781, -0.0478831, -0.0179561, -0.0761921)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.995683, -0.0478768, -0.0182416, -0.0774028)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.99559, -0.0478742, -0.0185047, -0.0785202)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.995505, -0.0478683, -0.0187458, -0.0795426)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.995426, -0.0478685, -0.0189638, -0.080469)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.995355, -0.0478652, -0.0191593, -0.0812983)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.995292, -0.0478581, -0.019332, -0.08203)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.995237, -0.0478643, -0.0194806, -0.0826638)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.99519, -0.0478665, -0.0196064, -0.0831993)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.995151, -0.0478647, -0.0197094, -0.0836364)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.995121, -0.0478588, -0.0197897, -0.0839755)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.9951, -0.0478488, -0.0198474, -0.0842169)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.99508, -0.0479176, -0.0198868, -0.0844106)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.995113, -0.0479315, -0.0197956, -0.0840281)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.995216, -0.0479128, -0.019525, -0.0828708)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.995387, -0.0478626, -0.0190736, -0.0809333)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.995615, -0.0478736, -0.0184353, -0.0782248)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.995895, -0.0478871, -0.0176203, -0.074767)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.996215, -0.0479024, -0.0166388, -0.0706021)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.996561, -0.0479191, -0.0155059, -0.0657948)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.996919, -0.0479363, -0.0142423, -0.0604333)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.997271, -0.0479533, -0.0128746, -0.0546296)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.997604, -0.0479693, -0.011434, -0.0485169)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.997905, -0.0479837, -0.00995574, -0.0422444)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.998164, -0.0479962, -0.00847709, -0.0359702)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.998376, -0.0480064, -0.00703531, -0.0298524)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.998542, -0.0480026, -0.00566596, -0.0240407)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.998662, -0.0480201, -0.00439977, -0.0186692)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.998746, -0.0479997, -0.00326452, -0.0138506)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.998798, -0.047994, -0.0022803, -0.00967447)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.998827, -0.0479994, -0.00146275, -0.00620604)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.99884, -0.048012, -0.000822162, -0.00348843)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.998845, -0.0480289, -0.000364161, -0.00154528)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.998846, -0.0480287, -9.05161e-05, -0.000384153)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.998846, -0.0480289, 3.04996e-08, 4.47224e-08)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.998822, -0.048533, 3.04204e-08, 4.47487e-08)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.998746, -0.0500554, 3.02954e-08, 4.48059e-08)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.998615, -0.0526052, 3.01242e-08, 4.48938e-08)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.998421, -0.0561817, 2.99065e-08, 4.50119e-08)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.998152, -0.0607718, 2.96424e-08, 4.51592e-08)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.997797, -0.0663477, 2.93327e-08, 4.53341e-08)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.997342, -0.0728639, 2.89791e-08, 4.55343e-08)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.996774, -0.0802554, 2.85837e-08, 4.5757e-08)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.996082, -0.0884359, 2.815e-08, 4.59988e-08)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.995255, -0.0972974, 2.76824e-08, 4.62557e-08)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.99429, -0.106711, 2.71862e-08, 4.65232e-08)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.993187, -0.11653, 2.66679e-08, 4.67966e-08)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.991955, -0.126591, 2.61348e-08, 4.7071e-08)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.990609, -0.136726, 2.55948e-08, 4.73416e-08)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.989172, -0.14676, 2.50561e-08, 4.76039e-08)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.987674, -0.156526, 2.4527e-08, 4.78539e-08)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.986148, -0.165866, 2.40155e-08, 4.80881e-08)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.984633, -0.174636, 2.3529e-08, 4.83036e-08)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.983166, -0.182713, 2.3074e-08, 4.84983e-08)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.981785, -0.189997, 2.26562e-08, 4.86709e-08)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.980523, -0.196406, 2.22801e-08, 4.88202e-08)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.97941, -0.201881, 2.19493e-08, 4.8946e-08)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.978471, -0.206382, 2.16663e-08, 4.90483e-08)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.977726, -0.209885, 2.14328e-08, 4.91272e-08)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.977187, -0.212381, 2.12496e-08, 4.91832e-08)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.976862, -0.21387, 2.11169e-08, 4.92169e-08)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.976754, -0.214363, 2.10343e-08, 4.92289e-08)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.976806, -0.214127, 2.09885e-08, 4.92252e-08)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.976961, -0.213416, 2.09666e-08, 4.92113e-08)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.977221, -0.212225, 2.09689e-08, 4.91872e-08)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.977583, -0.210551, 2.09954e-08, 4.91528e-08)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.978045, -0.208393, 2.10461e-08, 4.9108e-08)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.978604, -0.205754, 2.11208e-08, 4.90529e-08)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.979254, -0.202638, 2.12191e-08, 4.89875e-08)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.979989, -0.199052, 2.13406e-08, 4.89117e-08)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.980802, -0.195008, 2.14845e-08, 4.88258e-08)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.981683, -0.190522, 2.16499e-08, 4.87298e-08)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.982623, -0.185613, 2.18355e-08, 4.8624e-08)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.98361, -0.180308, 2.20399e-08, 4.85089e-08)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.984633, -0.174636, 2.22615e-08, 4.83847e-08)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.985679, -0.168631, 2.24984e-08, 4.82522e-08)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.986736, -0.162334, 2.27485e-08, 4.81119e-08)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.98779, -0.155788, 2.30095e-08, 4.79648e-08)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.988831, -0.149044, 2.32787e-08, 4.78119e-08)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.989845, -0.142152, 2.35538e-08, 4.76541e-08)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.990823, -0.135169, 2.38318e-08, 4.74929e-08)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.991755, -0.12815, 2.41101e-08, 4.73293e-08)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.992634, -0.121153, 2.43859e-08, 4.71649e-08)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.993454, -0.114236, 2.46566e-08, 4.70011e-08)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.99421, -0.107454, 2.49195e-08, 4.68393e-08)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.994901, -0.10086, 2.51723e-08, 4.66811e-08)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.995524, -0.0945056, 2.54128e-08, 4.65277e-08)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.996082, -0.0884359, 2.56388e-08, 4.63806e-08)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.996575, -0.082693, 2.58487e-08, 4.62411e-08)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.997007, -0.0773139, 2.60409e-08, 4.61102e-08)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.997381, -0.0723306, 2.62141e-08, 4.59891e-08)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.997701, -0.06777, 2.63672e-08, 4.58787e-08)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.997972, -0.0636542, 2.64993e-08, 4.57796e-08)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.998198, -0.0600006, 2.66099e-08, 4.56926e-08)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.998384, -0.0568223, 2.66985e-08, 4.56181e-08)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.998534, -0.0541288, 2.67647e-08, 4.55566e-08)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.998651, -0.0519255, 2.68085e-08, 4.55082e-08)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.998738, -0.050215, 2.68297e-08, 4.5473e-08)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.998799, -0.0489974, 2.68284e-08, 4.54512e-08)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.998834, -0.0482701, 2.68048e-08, 4.54426e-08)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.998846, -0.048029, 2.67591e-08, 4.54472e-08)
            }
        }
    }

}
