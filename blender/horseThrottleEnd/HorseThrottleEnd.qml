import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node0123456789

    // Resources
    PrincipledMaterial {
        id: material_001_material4567891011
        baseColor: "#ffcc3b0e"
        roughness: 0.4000000059604645
    }
    PrincipledMaterial {
        id: material_002_material5678910111213
        baseColor: "#ff2acc39"
        roughness: 0.4000000059604645
    }
    Skin {
        id: skin789101112131415
        joints: [
            boneMain9101112131415161718,
            costas11011121314151617181920,
            costas21112131415161718192021,
            but_l1213141516171819202122,
            backLeg_l13141516171819202122,
            face24252627282930313233,
            frontUpperLeg_l26272829303132333435,
            face_end25262728293031323334,
            backFoot_r1819202122232425262728,
            boneMain_00120212223242526272829,
            boneMain_0022122232425262728293031,
            boneMain_00322232425262728293031,
            pesco_o2324252627282930313233,
            face2425262728293031323334,
            frontUpperLeg_l2627282930313233343536,
            frontLeg_l2728293031323334353637,
            frontFoot_l28293031323334353637,
            frontUpperLeg_r3031323334353637383940,
            frontLeg_r31323334353637383940,
            frontFoot_r32333435363738394041
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
        id: rootNode12345678
        PerspectiveCamera {
            id: camera_camera2345678910
            position: Qt.vector3d(735.889, 495.831, 692.579)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 0)
            scale: Qt.vector3d(100, 100, 100)
            fieldOfView: 39.597755432128906
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        Model {
            id: sphere_Feet345678910
            position: Qt.vector3d(64.5599, 1.51216, 120.372)
            rotation: Qt.quaternion(-0.496094, 0.503875, 0.503881, 0.49609)
            scale: Qt.vector3d(65.6588, 41.8606, 41.8606)
            source: "meshes/sphere_Feet.mesh"
            skin: skin789101112131415
            materials: [
                material_001_material4567891011,
                material_002_material5678910111213
            ]
        }
        Node {
            id: armature891011121314151617
            position: Qt.vector3d(3.79539e-13, 291.444, 152.897)
            rotation: Qt.quaternion(0.999808, -0.0195786, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            Node {
                id: boneMain9101112131415161718
                position: Qt.vector3d(-3.87544e-09, -0.811494, 0.526446)
                rotation: Qt.quaternion(0.71542, -0.698694, -8.52848e-08, 8.32909e-08)
                Node {
                    id: costas11011121314151617181920
                    position: Qt.vector3d(-1.04361e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.999832, 0.0183056, 1.0727e-06, 1.52754e-08)
                    Node {
                        id: costas21112131415161718192021
                        position: Qt.vector3d(2.62013e-14, 1.1187, -1.49012e-08)
                        rotation: Qt.quaternion(0.999205, -0.0398682, 2.27666e-13, -7.60426e-08)
                        Node {
                            id: but_l1213141516171819202122
                            position: Qt.vector3d(-9.01501e-14, 1.19085, 7.45057e-09)
                            rotation: Qt.quaternion(0.676744, -0.636641, -0.251657, -0.270878)
                            Node {
                                id: backLeg_l13141516171819202122
                                position: Qt.vector3d(1.19209e-07, 0.913591, -1.53901e-07)
                                rotation: Qt.quaternion(0.918531, 0.141074, 0.0522254, 0.365611)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: face24252627282930313233
                                    position: Qt.vector3d(6.93835e-08, 1.24557, 1.08732e-07)
                                    rotation: Qt.quaternion(0.614063, -0.789253, 9.95306e-09, 0.00241878)
                                    Node {
                                        id: frontUpperLeg_r30313233343536373839
                                        position: Qt.vector3d(0, 0.800851, 0)
                                    }
                                }
                            }
                        }
                        Node {
                            id: frontUpperLeg_l26272829303132333435
                            position: Qt.vector3d(-9.01501e-14, 1.19085, 7.45057e-09)
                            rotation: Qt.quaternion(0.676744, -0.636642, 0.251656, 0.270877)
                            Node {
                                id: face_end25262728293031323334
                                position: Qt.vector3d(-3.72529e-08, 0.913591, -9.15024e-08)
                                rotation: Qt.quaternion(0.918531, 0.141074, -0.0522254, -0.365611)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: backFoot_r1819202122232425262728
                                    position: Qt.vector3d(-7.10133e-08, 1.24557, 2.78931e-07)
                                    rotation: Qt.quaternion(0.614063, -0.789253, -1.70624e-09, -0.00241873)
                                    Node {
                                        id: backFoot_r_end1920212223242526272829
                                        position: Qt.vector3d(0, 0.800851, 0)
                                    }
                                }
                            }
                        }
                    }
                }
                Node {
                    id: boneMain_00120212223242526272829
                    position: Qt.vector3d(-1.04361e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.768593, 0.639737, 9.24471e-15, -1.52525e-07)
                    Node {
                        id: boneMain_0022122232425262728293031
                        position: Qt.vector3d(1.68754e-14, 0.663666, 3.1665e-08)
                        rotation: Qt.quaternion(0.981588, 0.191008, 9.00262e-09, -7.87819e-08)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: boneMain_00322232425262728293031
                            position: Qt.vector3d(-1.13243e-14, 0.140353, -3.27709e-08)
                            rotation: Qt.quaternion(0.998652, 0.0519158, -3.26372e-10, -6.27808e-09)
                            Node {
                                id: pesco_o2324252627282930313233
                                position: Qt.vector3d(0, 0.169037, -3.66374e-15)
                                rotation: Qt.quaternion(0.998334, 0.0576965, 1.19011e-07, -6.87795e-09)
                                Node {
                                    id: face2425262728293031323334
                                    position: Qt.vector3d(3.88578e-16, 1.05892, 4.09782e-08)
                                    rotation: Qt.quaternion(0.701845, 0.71233, 0, 0)
                                    scale: Qt.vector3d(1, 1, 1)
                                    Node {
                                        id: face_end2526272829303132333435
                                        position: Qt.vector3d(0, 1.09633, 0)
                                    }
                                }
                            }
                        }
                    }
                }
                Node {
                    id: frontUpperLeg_l2627282930313233343536
                    position: Qt.vector3d(-1.04361e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.718551, -0.579216, -0.241159, -0.300059)
                    Node {
                        id: frontLeg_l2728293031323334353637
                        position: Qt.vector3d(5.96046e-08, 0.955363, 8.184e-08)
                        rotation: Qt.quaternion(0.0319297, -0.38415, 0.919633, -0.0753896)
                        Node {
                            id: frontFoot_l28293031323334353637
                            position: Qt.vector3d(3.27782e-09, 1.22521, -4.60022e-08)
                            rotation: Qt.quaternion(0.717398, 0.696663, 1.69616e-07, 1.09821e-07)
                            Node {
                                id: frontFoot_l_end29303132333435363738
                                position: Qt.vector3d(0, 0.703263, 0)
                            }
                        }
                    }
                }
                Node {
                    id: frontUpperLeg_r3031323334353637383940
                    position: Qt.vector3d(-1.04361e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.718551, -0.579216, 0.241159, 0.300059)
                    Node {
                        id: frontLeg_r31323334353637383940
                        position: Qt.vector3d(9.68575e-08, 0.955363, -1.36206e-08)
                        rotation: Qt.quaternion(0.0981672, 0.363532, 0.916708, -0.133615)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: frontFoot_r32333435363738394041
                            position: Qt.vector3d(-1.86265e-09, 1.19826, 2.98023e-08)
                            rotation: Qt.quaternion(0.713169, 0.686127, 0.106462, -0.0963601)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: frontFoot_r_end33343536373839404142
                                position: Qt.vector3d(0, 0.703263, 0)
                            }
                        }
                    }
                }
            }
        }
    }

    property alias timeLineAnimation: timeLineAnimation
    signal end()
    // Animations:
    Timeline {
        startFrame: 0
        endFrame: 417
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            id: timeLineAnimation
            duration: 417
            from: 0
            to: 417
            alwaysRunToEnd: true
            running: false
            //loops: Animation.Infinite
        }
        KeyframeGroup {
            target: face24252627282930313233
            property: "position"
            keyframeSource: "animations/face24252627282930313233_position_0.qad"
        }
        KeyframeGroup {
            target: face24252627282930313233
            property: "rotation"
            keyframeSource: "animations/face24252627282930313233_rotation_0.qad"
        }
        KeyframeGroup {
            target: backFoot_r1819202122232425262728
            property: "position"
            keyframeSource: "animations/backFoot_r1819202122232425262728_position_0.qad"
        }
        KeyframeGroup {
            target: backFoot_r1819202122232425262728
            property: "rotation"
            keyframeSource: "animations/backFoot_r1819202122232425262728_rotation_0.qad"
        }
        KeyframeGroup {
            target: backLeg_l13141516171819202122
            property: "position"
            keyframeSource: "animations/backLeg_l13141516171819202122_position_0.qad"
        }
        KeyframeGroup {
            target: backLeg_l13141516171819202122
            property: "rotation"
            keyframeSource: "animations/backLeg_l13141516171819202122_rotation_0.qad"
        }
        KeyframeGroup {
            target: face_end25262728293031323334
            property: "position"
            keyframeSource: "animations/face_end25262728293031323334_position_0.qad"
        }
        KeyframeGroup {
            target: face_end25262728293031323334
            property: "rotation"
            keyframeSource: "animations/face_end25262728293031323334_rotation_0.qad"
        }
        KeyframeGroup {
            target: boneMain9101112131415161718
            property: "position"
            keyframeSource: "animations/boneMain9101112131415161718_position_0.qad"
        }
        KeyframeGroup {
            target: boneMain9101112131415161718
            property: "rotation"
            keyframeSource: "animations/boneMain9101112131415161718_rotation_0.qad"
        }
        KeyframeGroup {
            target: boneMain_00120212223242526272829
            property: "position"
            keyframeSource: "animations/boneMain_00120212223242526272829_position_0.qad"
        }
        KeyframeGroup {
            target: boneMain_00120212223242526272829
            property: "rotation"
            keyframeSource: "animations/boneMain_00120212223242526272829_rotation_0.qad"
        }
        KeyframeGroup {
            target: boneMain_0022122232425262728293031
            property: "position"
            keyframeSource: "animations/boneMain_0022122232425262728293031_position_0.qad"
        }
        KeyframeGroup {
            target: boneMain_0022122232425262728293031
            property: "rotation"
            keyframeSource: "animations/boneMain_0022122232425262728293031_rotation_0.qad"
        }
        KeyframeGroup {
            target: boneMain_00322232425262728293031
            property: "position"
            keyframeSource: "animations/boneMain_00322232425262728293031_position_0.qad"
        }
        KeyframeGroup {
            target: boneMain_00322232425262728293031
            property: "rotation"
            keyframeSource: "animations/boneMain_00322232425262728293031_rotation_0.qad"
        }
        KeyframeGroup {
            target: but_l1213141516171819202122
            property: "position"
            keyframeSource: "animations/but_l1213141516171819202122_position_0.qad"
        }
        KeyframeGroup {
            target: but_l1213141516171819202122
            property: "rotation"
            keyframeSource: "animations/but_l1213141516171819202122_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_l26272829303132333435
            property: "position"
            keyframeSource: "animations/frontUpperLeg_l26272829303132333435_position_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_l26272829303132333435
            property: "rotation"
            keyframeSource: "animations/frontUpperLeg_l26272829303132333435_rotation_0.qad"
        }
        KeyframeGroup {
            target: costas11011121314151617181920
            property: "position"
            keyframeSource: "animations/costas11011121314151617181920_position_0.qad"
        }
        KeyframeGroup {
            target: costas11011121314151617181920
            property: "rotation"
            keyframeSource: "animations/costas11011121314151617181920_rotation_0.qad"
        }
        KeyframeGroup {
            target: costas21112131415161718192021
            property: "position"
            keyframeSource: "animations/costas21112131415161718192021_position_0.qad"
        }
        KeyframeGroup {
            target: costas21112131415161718192021
            property: "rotation"
            keyframeSource: "animations/costas21112131415161718192021_rotation_0.qad"
        }
        KeyframeGroup {
            target: face2425262728293031323334
            property: "position"
            keyframeSource: "animations/face2425262728293031323334_position_0.qad"
        }
        KeyframeGroup {
            target: face2425262728293031323334
            property: "rotation"
            keyframeSource: "animations/face2425262728293031323334_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontFoot_l28293031323334353637
            property: "position"
            keyframeSource: "animations/frontFoot_l28293031323334353637_position_0.qad"
        }
        KeyframeGroup {
            target: frontFoot_l28293031323334353637
            property: "rotation"
            keyframeSource: "animations/frontFoot_l28293031323334353637_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontFoot_r32333435363738394041
            property: "position"
            keyframeSource: "animations/frontFoot_r32333435363738394041_position_0.qad"
        }
        KeyframeGroup {
            target: frontFoot_r32333435363738394041
            property: "rotation"
            keyframeSource: "animations/frontFoot_r32333435363738394041_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_l2728293031323334353637
            property: "position"
            keyframeSource: "animations/frontLeg_l2728293031323334353637_position_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_l2728293031323334353637
            property: "rotation"
            keyframeSource: "animations/frontLeg_l2728293031323334353637_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_r31323334353637383940
            property: "position"
            keyframeSource: "animations/frontLeg_r31323334353637383940_position_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_r31323334353637383940
            property: "rotation"
            keyframeSource: "animations/frontLeg_r31323334353637383940_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_l2627282930313233343536
            property: "position"
            keyframeSource: "animations/frontUpperLeg_l2627282930313233343536_position_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_l2627282930313233343536
            property: "rotation"
            keyframeSource: "animations/frontUpperLeg_l2627282930313233343536_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_r3031323334353637383940
            property: "position"
            keyframeSource: "animations/frontUpperLeg_r3031323334353637383940_position_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_r3031323334353637383940
            property: "rotation"
            keyframeSource: "animations/frontUpperLeg_r3031323334353637383940_rotation_0.qad"
        }
        KeyframeGroup {
            target: pesco_o2324252627282930313233
            property: "position"
            keyframeSource: "animations/pesco_o2324252627282930313233_position_0.qad"
        }
        KeyframeGroup {
            target: pesco_o2324252627282930313233
            property: "rotation"
            keyframeSource: "animations/pesco_o2324252627282930313233_rotation_0.qad"
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
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: armature891011121314151617
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(64.5599, 8.34465e-05, 121.264)
            }
        }
        KeyframeGroup {
            target: armature891011121314151617
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            }
        }
        KeyframeGroup {
            target: face24252627282930313233
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.614063, -0.789253, 9.85827e-09, 0.00241878)
            }
        }
        KeyframeGroup {
            target: boneMain_00120212223242526272829
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.768593, 0.639738, 0, -1.52525e-07)
            }
        }
        KeyframeGroup {
            target: costas21112131415161718192021
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.999205, -0.0398682, 2.27777e-13, -7.60426e-08)
            }
        }
    }
}
