import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: but_r16171819202122232425

    // Resources
    PrincipledMaterial {
        id: backFoot_l14151617181920212223
        baseColor: "#ffcc3b0e"
        roughness: 0.4000000059604645
    }
    PrincipledMaterial {
        id: boneMain_003222324252627282930
        baseColor: "#ff2acc39"
        roughness: 0.4000000059604645
    }
    Skin {
        id: boneMain_00221222324252627282930
        joints: [
            boneMain91011121314151617,
            but_l12131415161718192021,
            backFoot_r_end19202122232425262728,
            pesco_o23242526272829303132,
            armature8910111213141516,
            backLeg_r171819202122232425,
            backLeg_l131415161718192021,
            backLeg_r171819202122232425262728,
            backFoot_r1819202122232425262728293031,
            boneMain_00120212223242526272829303132,
            boneMain_0022122232425262728293031323334,
            boneMain_00322232425262728293031323334,
            pesco_o2324252627282930313233343536,
            face242526272829303132333435363738,
            frontUpperLeg_l2627282930313233343536373839,
            frontLeg_l272829303132333435363738394041,
            frontFoot_l2829303132333435363738394041,
            frontUpperLeg_r303132333435363738394041424344,
            frontLeg_r3132333435363738394041424344,
            frontFoot_r32333435363738394041424344
        ]
        inverseBindPoses: [
            Qt.matrix4x4(-7.52363e-07, 0.418606, 9.98035e-08, 0.645599, -0.656588, -4.79674e-07, 2.82126e-05, 0.904424, 4.4371e-05, -9.97711e-08, 0.418606, -2.08698, 0, 0, 0, 1),
            Qt.matrix4x4(-7.983e-07, 0.418606, -7.97891e-07, 0.645603, -0.656146, -4.79351e-07, 0.0153513, -0.171906, 0.0240788, 8.16019e-07, 0.418325, -2.08209, 0, 0, 0, 1),
            Qt.matrix4x4(-6.98443e-07, 0.418606, -7.97687e-07, 0.645603, -0.655979, -4.79229e-07, -0.0180267, -1.12062, -0.0282749, 7.77772e-07, 0.418218, -2.17829, 0, 0, 0, 1),
            Qt.matrix4x4(0.0874469, 0.304155, 0.282158, -0.610659, -0.0884545, 0.287607, -0.298886, 1.60262, -0.644699, 0.00179502, 0.0792799, -2.75015, 0, 0, 0, 1),
            Qt.matrix4x4(-0.00196915, 0.418604, 0.000266207, 0.00942814, -0.136245, -1.5269e-07, -0.409495, 0.869226, -0.642294, -0.00128332, 0.0868621, -2.76683, 0, 0, 0, 1),
            Qt.matrix4x4(-9.35237e-05, 0.418604, -0.00128151, 0.0181443, 0.65589, 4.66299e-07, -0.0192995, 2.7912, -0.0302716, -0.00128296, -0.418159, 0.0773065, 0, 0, 0, 1),
            Qt.matrix4x4(-0.0874481, 0.304154, -0.282158, 1.54883, -0.0884535, -0.287607, -0.298886, 0.715486, -0.644699, -0.00179593, 0.0792798, -2.75569, 0, 0, 0, 1),
            Qt.matrix4x4(0.00196765, 0.418604, -0.000266183, 1.28176, -0.136245, -1.05902e-07, -0.409495, 0.869225, -0.642293, 0.00128241, 0.0868621, -2.76288, 0, 0, 0, 1),
            Qt.matrix4x4(9.20195e-05, 0.418604, 0.00128151, 1.27305, 0.65589, 4.77342e-07, -0.0192995, 2.7912, -0.0302716, 0.00128282, -0.418159, 0.0812633, 0, 0, 0, 1),
            Qt.matrix4x4(-5.98428e-07, 0.418606, 1.81049e-08, 0.645599, -0.119108, -8.70154e-08, 0.411661, -2.06968, 0.645694, 3.71912e-07, 0.0759374, -0.28474, 0, 0, 0, 1),
            Qt.matrix4x4(-6.05136e-07, 0.418606, -3.38977e-08, 0.645599, 0.223006, 1.62919e-07, 0.393722, -2.50348, 0.617556, 3.51356e-07, -0.142177, 1.1335, 0, 0, 0, 1),
            Qt.matrix4x4(-6.09746e-07, 0.418606, -4.11358e-08, 0.645599, 0.270625, 1.97706e-07, 0.381395, -2.54708, 0.598222, 3.37231e-07, -0.172536, 1.33681, 0, 0, 0, 1),
            Qt.matrix4x4(-7.52373e-07, 0.418606, -5.99833e-15, 0.645599, 0.263459, 1.92471e-07, 0.383429, -2.73189, 0.601412, 4.39365e-07, -0.167968, 1.30427, 0, 0, 0, 1),
            Qt.matrix4x4(-7.52373e-07, 0.418606, 3.1463e-17, 0.645599, 0.620393, 4.53232e-07, -0.137065, 0.999869, -0.214988, -1.57061e-07, -0.39553, 3.88223, 0, 0, 0, 1),
            Qt.matrix4x4(0.0997326, 0.294537, 0.290579, -0.97995, -0.0978275, 0.297454, -0.287858, 1.87967, -0.641553, 0.000429911, 0.089066, -0.536631, 0, 0, 0, 1),
            Qt.matrix4x4(8.09206e-07, -0.418606, -2.94232e-10, 0.0332637, -0.030604, -4.91872e-08, -0.418151, 1.41739, 0.655874, 5.20005e-07, -0.0195115, 0.304173, 0, 0, 0, 1),
            Qt.matrix4x4(7.34474e-07, -0.418606, -1.62611e-07, 0.0332637, 0.654977, 4.89285e-07, -0.0293037, 0.308593, 0.0459633, -1.002e-07, 0.417579, -0.185002, 0, 0, 0, 1),
            Qt.matrix4x4(-0.0997336, 0.294537, -0.290579, 1.88846, -0.0978265, -0.297454, -0.287858, 0.962169, -0.641553, -0.00043081, 0.0890659, -0.537958, 0, 0, 0, 1),
            Qt.matrix4x4(0.186608, -0.401343, -0.000816056, -1.19948, -0.0236649, -0.00362181, -0.418318, 1.40901, 0.629067, 0.118919, -0.0154945, 0.656999, 0, 0, 0, 1),
            Qt.matrix4x4(7.36369e-07, -0.418606, 2.08239e-07, -1.33483, 0.654977, 4.63343e-07, -0.0293037, 0.296558, 0.0459633, 2.62329e-07, 0.417579, -0.212354, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: backFoot_l_end151617181920212223
        PerspectiveCamera {
            id: boneMain_001202122232425262728
            position: Qt.vector3d(735.889, 495.831, 692.579)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 0)
            scale: Qt.vector3d(100, 100, 100)
            fieldOfView: 39.597755432128906
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        Model {
            id: costas110111213141516171819
            position: Qt.vector3d(64.5599, 1.51216, 120.372)
            rotation: Qt.quaternion(-0.496094, 0.503875, 0.503881, 0.49609)
            scale: Qt.vector3d(65.6588, 41.8606, 41.8606)
            source: "meshes/sphere_Feet.mesh"
            skin: boneMain_00221222324252627282930
            materials: [
                backFoot_l14151617181920212223,
                boneMain_003222324252627282930
            ]
        }
        Node {
            id: costas211121314151617181920
            position: Qt.vector3d(3.79539e-13, 291.444, 152.897)
            rotation: Qt.quaternion(0.999808, -0.0195786, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            Node {
                id: boneMain91011121314151617
                position: Qt.vector3d(-2.95694e-14, -0.811494, 0.526446)
                rotation: Qt.quaternion(0.71542, -0.698694, -8.52848e-08, 8.32909e-08)
                Node {
                    id: but_l12131415161718192021
                    position: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.999832, 0.0183056, 1.0727e-06, 1.52754e-08)
                    Node {
                        id: backFoot_r_end19202122232425262728
                        position: Qt.vector3d(-3.0563e-14, 1.1187, -1.49012e-08)
                        rotation: Qt.quaternion(0.999205, -0.0398682, 2.27666e-13, -7.60426e-08)
                        Node {
                            id: pesco_o23242526272829303132
                            position: Qt.vector3d(-3.32751e-14, 1.19085, 7.45058e-09)
                            rotation: Qt.quaternion(0.676744, -0.636641, -0.251657, -0.270878)
                            Node {
                                id: armature8910111213141516
                                position: Qt.vector3d(1.41561e-07, 0.913591, -1.27824e-07)
                                rotation: Qt.quaternion(0.918531, 0.141074, 0.0522254, 0.365611)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: backLeg_r171819202122232425
                                    position: Qt.vector3d(5.09899e-08, 1.24557, 2.5006e-07)
                                    rotation: Qt.quaternion(0.614063, -0.789253, -1.05218e-08, 0.00241874)
                                    Node {
                                        id: backFoot_r18192021222324252627
                                        position: Qt.vector3d(0, 0.800851, 0)
                                    }
                                }
                            }
                        }
                        Node {
                            id: backLeg_l131415161718192021
                            position: Qt.vector3d(-3.32751e-14, 1.19085, 7.45058e-09)
                            rotation: Qt.quaternion(0.676744, -0.636641, 0.251656, 0.270877)
                            Node {
                                id: backLeg_r171819202122232425262728
                                position: Qt.vector3d(7.45058e-09, 0.913591, -1.17579e-07)
                                rotation: Qt.quaternion(0.918531, 0.141074, -0.0522254, -0.365611)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: backFoot_r1819202122232425262728293031
                                    position: Qt.vector3d(5.07571e-08, 1.24557, 4.39701e-07)
                                    rotation: Qt.quaternion(0.614063, -0.789253, -2.22759e-08, -0.00241877)
                                    Node {
                                        id: backFoot_r_end1920212223242526272829303132
                                        position: Qt.vector3d(0, 0.800851, 0)
                                    }
                                }
                            }
                        }
                    }
                }
                Node {
                    id: boneMain_00120212223242526272829303132
                    position: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.768593, 0.639737, 9.24471e-15, -1.52525e-07)
                    Node {
                        id: boneMain_0022122232425262728293031323334
                        position: Qt.vector3d(2.95454e-15, 0.663666, 3.1665e-08)
                        rotation: Qt.quaternion(0.981588, 0.191008, -2.4883e-14, -4.554e-08)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: boneMain_00322232425262728293031323334
                            position: Qt.vector3d(-1.38098e-14, 0.140353, -3.27709e-08)
                            rotation: Qt.quaternion(0.998652, 0.0519158, -6.4173e-10, -1.23443e-08)
                            Node {
                                id: pesco_o2324252627282930313233343536
                                position: Qt.vector3d(-9.41752e-15, 0.169037, 0)
                                rotation: Qt.quaternion(0.998334, 0.0576965, 1.19011e-07, -6.87795e-09)
                                Node {
                                    id: face242526272829303132333435363738
                                    position: Qt.vector3d(-1.48231e-21, 1.05892, 4.09782e-08)
                                    rotation: Qt.quaternion(0.701845, 0.71233, 0, 0)
                                    scale: Qt.vector3d(1, 1, 1)
                                    Node {
                                        id: face_end252627282930313233343536373839
                                        position: Qt.vector3d(0, 1.09633, 0)
                                    }
                                }
                            }
                        }
                    }
                }
                Node {
                    id: frontUpperLeg_l2627282930313233343536373839
                    position: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.718551, -0.579216, -0.241159, -0.300059)
                    Node {
                        id: frontLeg_l272829303132333435363738394041
                        position: Qt.vector3d(5.96046e-08, 0.955363, 8.184e-08)
                        rotation: Qt.quaternion(0.031958, -0.383629, 0.919858, -0.075288)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: frontFoot_l2829303132333435363738394041
                            position: Qt.vector3d(-1.12914e-07, 1.22521, 6.25907e-08)
                            rotation: Qt.quaternion(0.717398, 0.696663, 1.60203e-07, 8.69911e-08)
                            Node {
                                id: frontFoot_l_end2930313233343536373839404142
                                position: Qt.vector3d(0, 0.703263, 0)
                            }
                        }
                    }
                }
                Node {
                    id: frontUpperLeg_r303132333435363738394041424344
                    position: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.718551, -0.579216, 0.241159, 0.300059)
                    Node {
                        id: frontLeg_r3132333435363738394041424344
                        position: Qt.vector3d(9.68575e-08, 0.955363, -1.36206e-08)
                        rotation: Qt.quaternion(0.0982305, 0.364062, 0.916488, -0.133642)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: frontFoot_r32333435363738394041424344
                            position: Qt.vector3d(1.11759e-08, 1.19826, 1.04308e-07)
                            rotation: Qt.quaternion(0.713169, 0.686127, 0.106462, -0.0963601)
                            Node {
                                id: frontFoot_r_end33343536373839404142434445
                                position: Qt.vector3d(0, 0.703263, 0)
                            }
                        }
                    }
                }
            }
        }
    }


    // Animations:
    signal jumpStart()
    signal endJump()
    property alias timelineAnimation: timelineAnimation
        Timeline {
        startFrame: 0
        endFrame: 1667
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            id: timelineAnimation
            duration: 1667
            from: 0
            to: 1667
            running: false
            onStarted: jumpStart()
            onStopped: endJump()
            //loops: Animation.Infinite
        }
        KeyframeGroup {
            target: backLeg_r171819202122232425
            property: "rotation"
            keyframeSource: "animations/backLeg_r171819202122232425_rotation_0.qad"
        }
        KeyframeGroup {
            target: backFoot_r1819202122232425262728293031
            property: "rotation"
            keyframeSource: "animations/backFoot_r1819202122232425262728293031_rotation_0.qad"
        }
        KeyframeGroup {
            target: armature8910111213141516
            property: "rotation"
            keyframeSource: "animations/armature8910111213141516_rotation_0.qad"
        }
        KeyframeGroup {
            target: backLeg_r171819202122232425262728
            property: "rotation"
            keyframeSource: "animations/backLeg_r171819202122232425262728_rotation_0.qad"
        }
        KeyframeGroup {
            target: boneMain91011121314151617
            property: "position"
            keyframeSource: "animations/boneMain91011121314151617_position_0.qad"
        }
        KeyframeGroup {
            target: boneMain91011121314151617
            property: "rotation"
            keyframeSource: "animations/boneMain91011121314151617_rotation_0.qad"
        }
        KeyframeGroup {
            target: boneMain_00120212223242526272829303132
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.768593, 0.639738, 0, -1.52525e-07)
            }
        }
        KeyframeGroup {
            target: boneMain_0022122232425262728293031323334
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.981588, 0.191008, -2.44306e-14, -4.554e-08)
            }
        }
        KeyframeGroup {
            target: pesco_o23242526272829303132
            property: "rotation"
            keyframeSource: "animations/pesco_o23242526272829303132_rotation_0.qad"
        }
        KeyframeGroup {
            target: backLeg_l131415161718192021
            property: "rotation"
            keyframeSource: "animations/backLeg_l131415161718192021_rotation_0.qad"
        }
        KeyframeGroup {
            target: but_l12131415161718192021
            property: "rotation"
            keyframeSource: "animations/but_l12131415161718192021_rotation_0.qad"
        }
        KeyframeGroup {
            target: backFoot_r_end19202122232425262728
            property: "rotation"
            keyframeSource: "animations/backFoot_r_end19202122232425262728_rotation_0.qad"
        }
        KeyframeGroup {
            target: face242526272829303132333435363738
            property: "rotation"
            keyframeSource: "animations/face242526272829303132333435363738_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontFoot_l2829303132333435363738394041
            property: "rotation"
            keyframeSource: "animations/frontFoot_l2829303132333435363738394041_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontFoot_r32333435363738394041424344
            property: "rotation"
            keyframeSource: "animations/frontFoot_r32333435363738394041424344_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_l272829303132333435363738394041
            property: "rotation"
            keyframeSource: "animations/frontLeg_l272829303132333435363738394041_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_r3132333435363738394041424344
            property: "rotation"
            keyframeSource: "animations/frontLeg_r3132333435363738394041424344_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_l2627282930313233343536373839
            property: "rotation"
            keyframeSource: "animations/frontUpperLeg_l2627282930313233343536373839_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_r303132333435363738394041424344
            property: "rotation"
            keyframeSource: "animations/frontUpperLeg_r303132333435363738394041424344_rotation_0.qad"
        }
        KeyframeGroup {
            target: pesco_o2324252627282930313233343536
            property: "rotation"
            keyframeSource: "animations/pesco_o2324252627282930313233343536_rotation_0.qad"
        }
    }
    Timeline {
        startFrame: 0
        endFrame: 42
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 42
            from: 0
            to: 42
            running: false
            //loops: Animation.Infinite
        }
        KeyframeGroup {
            target: costas211121314151617181920
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(64.5599, 8.34465e-05, 121.264)
            }
        }
        KeyframeGroup {
            target: costas211121314151617181920
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            }
        }
        KeyframeGroup {
            target: backLeg_r171819202122232425
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.614063, -0.789253, -1.06166e-08, 0.00241874)
            }
        }
        KeyframeGroup {
            target: backFoot_r1819202122232425262728293031
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.614063, -0.789253, -2.21811e-08, -0.00241877)
            }
        }
        KeyframeGroup {
            target: boneMain_00120212223242526272829303132
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.768593, 0.639738, 0, -1.52525e-07)
            }
        }
        KeyframeGroup {
            target: boneMain_0022122232425262728293031323334
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.981588, 0.191008, -2.44306e-14, -4.554e-08)
            }
        }
        KeyframeGroup {
            target: backFoot_r_end19202122232425262728
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.999205, -0.0398682, 2.27777e-13, -7.60426e-08)
            }
        }
    }
}
