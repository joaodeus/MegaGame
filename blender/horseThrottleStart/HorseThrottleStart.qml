import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: frontFoot_l282930

    // Resources
    PrincipledMaterial {
        id: frontFoot_l_end293031
        baseColor: "#ffcc3b0e"
        roughness: 0.4000000059604645
    }
    PrincipledMaterial {
        id: material_001_material456789101112
        baseColor: "#ff2acc39"
        roughness: 0.4000000059604645
    }
    Skin {
        id: backLeg_l1314151617181920212223
        joints: [
            frontUpperLeg_r30313233,
            frontUpperLeg_l26272829,
            material_002_material567891011121314,
            but_l121314151617181920212223,
            costas1101112131415161718192021,
            node012345678910,
            boneMain_00120212223242526,
            backFoot_l1415161718192021,
            boneMain9101112131415,
            pesco_o2324252627282930,
            costas11011121314151617,
            face2425262728293031,
            but_l1213141516171819,
            face24252627282930313233343536,
            but_r1617181920212223,
            frontLeg_l27282930313233343536373839,
            frontFoot_l282930313233343536373839,
            frontUpperLeg_r30313233343536373839404142,
            frontLeg_r313233343536373839404142,
            frontFoot_r3233343536373839404142
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
        id: frontFoot_r323334
        PerspectiveCamera {
            id: frontLeg_l27282930
            position: Qt.vector3d(735.889, 495.831, 692.579)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 0)
            scale: Qt.vector3d(100, 100, 100)
            fieldOfView: 39.597755432128906
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        Model {
            id: frontLeg_r313233
            position: Qt.vector3d(64.5599, 1.51216, 120.372)
            rotation: Qt.quaternion(-0.496094, 0.503875, 0.503881, 0.49609)
            scale: Qt.vector3d(65.6588, 41.8606, 41.8606)
            source: "meshes/sphere_Feet.mesh"
            skin: backLeg_l1314151617181920212223
            materials: [
                frontFoot_l_end293031,
                material_001_material456789101112
            ]
        }
        Node {
            id: armature89101112131415161718
            position: Qt.vector3d(3.79539e-13, 291.444, 152.897)
            rotation: Qt.quaternion(0.999808, -0.0195786, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            Node {
                id: frontUpperLeg_r30313233
                position: Qt.vector3d(-0.0511069, -0.767102, 0.481624)
                rotation: Qt.quaternion(0.707962, -0.706198, -0.00858595, -0.00082076)
                scale: Qt.vector3d(1, 1, 1)
                Node {
                    id: frontUpperLeg_l26272829
                    position: Qt.vector3d(1.86265e-09, 1, -3.55358e-08)
                    rotation: Qt.quaternion(0.999832, 0.0183056, 1.0731e-06, 1.52907e-08)
                    Node {
                        id: material_002_material567891011121314
                        position: Qt.vector3d(9.31323e-10, 1.1187, 9.75851e-08)
                        rotation: Qt.quaternion(0.999205, -0.0398682, -2.91271e-11, -7.5854e-08)
                        Node {
                            id: but_l121314151617181920212223
                            position: Qt.vector3d(9.31323e-10, 1.19085, -7.42875e-09)
                            rotation: Qt.quaternion(-0.486544, 0.816144, 0.265373, 0.16359)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: costas1101112131415161718192021
                                position: Qt.vector3d(0, 0.913592, 2.51457e-08)
                                rotation: Qt.quaternion(0.869325, 0.386661, 0.121528, 0.282838)
                                Node {
                                    id: node012345678910
                                    position: Qt.vector3d(1.30385e-08, 1.24557, -1.05705e-07)
                                    rotation: Qt.quaternion(0.613078, -0.789797, -0.000828353, 0.0188754)
                                    scale: Qt.vector3d(1, 1, 1)
                                    Node {
                                        id: sphere_Feet34567891011
                                        position: Qt.vector3d(0, 0.800851, 0)
                                    }
                                }
                            }
                        }
                        Node {
                            id: boneMain_00120212223242526
                            position: Qt.vector3d(9.31323e-10, 1.19085, -7.42875e-09)
                            rotation: Qt.quaternion(0.613525, -0.699081, 0.273166, 0.245464)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: backFoot_l1415161718192021
                                position: Qt.vector3d(0, 0.913591, -4.014e-07)
                                rotation: Qt.quaternion(0.832546, 0.42153, -0.155552, -0.324011)
                                Node {
                                    id: boneMain9101112131415
                                    position: Qt.vector3d(9.31323e-09, 1.24557, -1.07102e-07)
                                    rotation: Qt.quaternion(0.632394, -0.774646, 7.48521e-05, -0.00156849)
                                    Node {
                                        id: costas21112131415161718
                                        position: Qt.vector3d(0, 0.800851, 0)
                                    }
                                }
                            }
                        }
                    }
                }
                Node {
                    id: pesco_o2324252627282930
                    position: Qt.vector3d(1.86265e-09, 1, -3.55358e-08)
                    rotation: Qt.quaternion(0.768593, 0.639738, 8.51808e-11, -1.53075e-07)
                    scale: Qt.vector3d(1, 1, 1)
                    Node {
                        id: costas11011121314151617
                        position: Qt.vector3d(-9.31323e-10, 0.663666, -3.43425e-08)
                        rotation: Qt.quaternion(0.981588, 0.191008, -5.33697e-10, -4.51269e-08)
                        Node {
                            id: face2425262728293031
                            position: Qt.vector3d(-2.2992e-09, 0.140353, 7.30506e-08)
                            rotation: Qt.quaternion(0.998652, 0.0519158, -6.57831e-10, -1.2654e-08)
                            Node {
                                id: but_l1213141516171819
                                position: Qt.vector3d(1.16415e-09, 0.169037, 3.29164e-08)
                                rotation: Qt.quaternion(0.998334, 0.0576965, 1.1911e-07, -6.88368e-09)
                                Node {
                                    id: face24252627282930313233343536
                                    position: Qt.vector3d(1.39698e-09, 1.05892, -1.42027e-08)
                                    rotation: Qt.quaternion(0.701845, 0.71233, 0, 0)
                                    scale: Qt.vector3d(1, 1, 1)
                                    Node {
                                        id: face_end25262728293031323334353637
                                        position: Qt.vector3d(0, 1.09633, 0)
                                    }
                                }
                            }
                        }
                    }
                }
                Node {
                    id: but_r1617181920212223
                    position: Qt.vector3d(1.86265e-09, 1, -3.55358e-08)
                    rotation: Qt.quaternion(0.772988, -0.487681, -0.236969, -0.329398)
                    Node {
                        id: frontLeg_l27282930313233343536373839
                        position: Qt.vector3d(7.45058e-08, 0.955363, 1.30385e-08)
                        rotation: Qt.quaternion(0.046703, -0.403998, 0.898463, -0.165432)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: frontFoot_l282930313233343536373839
                            position: Qt.vector3d(-9.12696e-08, 1.22521, 3.53903e-08)
                            rotation: Qt.quaternion(0.76506, 0.643803, 0.00355946, 0.013747)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: frontFoot_l_end293031323334353637383940
                                position: Qt.vector3d(0, 0.703263, 0)
                            }
                        }
                    }
                }
                Node {
                    id: frontUpperLeg_r30313233343536373839404142
                    position: Qt.vector3d(1.86265e-09, 1, -3.55358e-08)
                    rotation: Qt.quaternion(0.541235, -0.748752, 0.309418, 0.225159)
                    Node {
                        id: frontLeg_r313233343536373839404142
                        position: Qt.vector3d(1.2666e-07, 0.955363, -2.98023e-08)
                        rotation: Qt.quaternion(0.10349, 0.371052, 0.914674, -0.122401)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: frontFoot_r3233343536373839404142
                            position: Qt.vector3d(-3.72529e-08, 1.19826, -2.98023e-08)
                            rotation: Qt.quaternion(0.975235, 0.163903, 0.146474, -0.0244731)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: frontFoot_r_end3334353637383940414243
                                position: Qt.vector3d(0, 0.703263, 0)
                            }
                        }
                    }
                }
            }
        }
    }

    property alias timeLineAnimation: timeLineAnimation
    property alias running: timeLineAnimation.running
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
            running: false
            alwaysRunToEnd: true
            //loops: Animation.Infinite
        }
        KeyframeGroup {
            target: node012345678910
            property: "position"
            keyframeSource: "animations/node012345678910_position_0.qad"
        }
        KeyframeGroup {
            target: node012345678910
            property: "rotation"
            keyframeSource: "animations/node012345678910_rotation_0.qad"
        }
        KeyframeGroup {
            target: boneMain9101112131415
            property: "position"
            keyframeSource: "animations/boneMain9101112131415_position_0.qad"
        }
        KeyframeGroup {
            target: boneMain9101112131415
            property: "rotation"
            keyframeSource: "animations/boneMain9101112131415_rotation_0.qad"
        }
        KeyframeGroup {
            target: costas1101112131415161718192021
            property: "position"
            keyframeSource: "animations/costas1101112131415161718192021_position_0.qad"
        }
        KeyframeGroup {
            target: costas1101112131415161718192021
            property: "rotation"
            keyframeSource: "animations/costas1101112131415161718192021_rotation_0.qad"
        }
        KeyframeGroup {
            target: backFoot_l1415161718192021
            property: "position"
            keyframeSource: "animations/backFoot_l1415161718192021_position_0.qad"
        }
        KeyframeGroup {
            target: backFoot_l1415161718192021
            property: "rotation"
            keyframeSource: "animations/backFoot_l1415161718192021_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_r30313233
            property: "position"
            keyframeSource: "animations/frontUpperLeg_r30313233_position_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_r30313233
            property: "rotation"
            keyframeSource: "animations/frontUpperLeg_r30313233_rotation_0.qad"
        }
        KeyframeGroup {
            target: pesco_o2324252627282930
            property: "position"
            keyframeSource: "animations/pesco_o2324252627282930_position_0.qad"
        }
        KeyframeGroup {
            target: pesco_o2324252627282930
            property: "rotation"
            keyframeSource: "animations/pesco_o2324252627282930_rotation_0.qad"
        }
        KeyframeGroup {
            target: costas11011121314151617
            property: "position"
            keyframeSource: "animations/costas11011121314151617_position_0.qad"
        }
        KeyframeGroup {
            target: costas11011121314151617
            property: "rotation"
            keyframeSource: "animations/costas11011121314151617_rotation_0.qad"
        }
        KeyframeGroup {
            target: face2425262728293031
            property: "position"
            keyframeSource: "animations/face2425262728293031_position_0.qad"
        }
        KeyframeGroup {
            target: face2425262728293031
            property: "rotation"
            keyframeSource: "animations/face2425262728293031_rotation_0.qad"
        }
        KeyframeGroup {
            target: but_l121314151617181920212223
            property: "position"
            keyframeSource: "animations/but_l121314151617181920212223_position_0.qad"
        }
        KeyframeGroup {
            target: but_l121314151617181920212223
            property: "rotation"
            keyframeSource: "animations/but_l121314151617181920212223_rotation_0.qad"
        }
        KeyframeGroup {
            target: boneMain_00120212223242526
            property: "position"
            keyframeSource: "animations/boneMain_00120212223242526_position_0.qad"
        }
        KeyframeGroup {
            target: boneMain_00120212223242526
            property: "rotation"
            keyframeSource: "animations/boneMain_00120212223242526_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_l26272829
            property: "position"
            keyframeSource: "animations/frontUpperLeg_l26272829_position_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_l26272829
            property: "rotation"
            keyframeSource: "animations/frontUpperLeg_l26272829_rotation_0.qad"
        }
        KeyframeGroup {
            target: material_002_material567891011121314
            property: "position"
            keyframeSource: "animations/material_002_material567891011121314_position_0.qad"
        }
        KeyframeGroup {
            target: material_002_material567891011121314
            property: "rotation"
            keyframeSource: "animations/material_002_material567891011121314_rotation_0.qad"
        }
        KeyframeGroup {
            target: face24252627282930313233343536
            property: "position"
            keyframeSource: "animations/face24252627282930313233343536_position_0.qad"
        }
        KeyframeGroup {
            target: face24252627282930313233343536
            property: "rotation"
            keyframeSource: "animations/face24252627282930313233343536_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontFoot_l282930313233343536373839
            property: "position"
            keyframeSource: "animations/frontFoot_l282930313233343536373839_position_0.qad"
        }
        KeyframeGroup {
            target: frontFoot_l282930313233343536373839
            property: "rotation"
            keyframeSource: "animations/frontFoot_l282930313233343536373839_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontFoot_r3233343536373839404142
            property: "position"
            keyframeSource: "animations/frontFoot_r3233343536373839404142_position_0.qad"
        }
        KeyframeGroup {
            target: frontFoot_r3233343536373839404142
            property: "rotation"
            keyframeSource: "animations/frontFoot_r3233343536373839404142_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_l27282930313233343536373839
            property: "position"
            keyframeSource: "animations/frontLeg_l27282930313233343536373839_position_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_l27282930313233343536373839
            property: "rotation"
            keyframeSource: "animations/frontLeg_l27282930313233343536373839_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_r313233343536373839404142
            property: "position"
            keyframeSource: "animations/frontLeg_r313233343536373839404142_position_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_r313233343536373839404142
            property: "rotation"
            keyframeSource: "animations/frontLeg_r313233343536373839404142_rotation_0.qad"
        }
        KeyframeGroup {
            target: but_r1617181920212223
            property: "position"
            keyframeSource: "animations/but_r1617181920212223_position_0.qad"
        }
        KeyframeGroup {
            target: but_r1617181920212223
            property: "rotation"
            keyframeSource: "animations/but_r1617181920212223_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_r30313233343536373839404142
            property: "position"
            keyframeSource: "animations/frontUpperLeg_r30313233343536373839404142_position_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_r30313233343536373839404142
            property: "rotation"
            keyframeSource: "animations/frontUpperLeg_r30313233343536373839404142_rotation_0.qad"
        }
        KeyframeGroup {
            target: but_l1213141516171819
            property: "position"
            keyframeSource: "animations/but_l1213141516171819_position_0.qad"
        }
        KeyframeGroup {
            target: but_l1213141516171819
            property: "rotation"
            keyframeSource: "animations/but_l1213141516171819_rotation_0.qad"
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
            target: armature89101112131415161718
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(64.5599, 8.34465e-05, 121.264)
            }
        }
        KeyframeGroup {
            target: armature89101112131415161718
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            }
        }
    }
}
