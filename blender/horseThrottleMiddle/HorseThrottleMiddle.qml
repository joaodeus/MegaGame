import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node012345678910

    // Resources
    PrincipledMaterial {
        id: material_001_material456789101112
        baseColor: "#ffcc3b0e"
        roughness: 0.4000000059604645
    }
    PrincipledMaterial {
        id: material_002_material567891011121314
        baseColor: "#ff2acc39"
        roughness: 0.4000000059604645
    }
    Skin {
        id: frontLeg_l27282930
        joints: [
            frontUpperLeg_r30313233,
            costas1101112131415161718192021,
            frontFoot_l_end293031,
            frontLeg_r313233,
            backLeg_l1314151617181920212223,
            face_end25262728,
            but_r1617181920212223242526,
            backLeg_r17181920212223242526,
            backFoot_r181920212223242526272829,
            boneMain_0012021222324252627282930,
            boneMain_002212223242526272829303132,
            boneMain_0032223242526272829303132,
            pesco_o232425262728293031323334,
            face242526272829303132333435,
            frontUpperLeg_l262728293031323334353637,
            frontLeg_l272829303132333435363738,
            frontFoot_l2829303132333435363738,
            frontUpperLeg_r303132333435363738394041,
            frontLeg_r3132333435363738394041,
            pesco_o2324252627282930
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
            id: frontUpperLeg_l26272829
            position: Qt.vector3d(735.889, 495.831, 692.579)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 0)
            scale: Qt.vector3d(100, 100, 100)
            fieldOfView: 39.597755432128906
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        Model {
            id: sphere_Feet34567891011
            position: Qt.vector3d(64.5599, 1.51216, 120.372)
            rotation: Qt.quaternion(-0.496094, 0.503875, 0.503881, 0.49609)
            scale: Qt.vector3d(65.6588, 41.8606, 41.8606)
            source: "meshes/sphere_Feet.mesh"
            skin: frontLeg_l27282930
            materials: [
                material_001_material456789101112,
                material_002_material567891011121314
            ]
        }
        Node {
            id: frontFoot_l282930
            position: Qt.vector3d(3.79539e-13, 291.444, 152.897)
            rotation: Qt.quaternion(0.999808, -0.0195786, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            Node {
                id: frontUpperLeg_r30313233
                position: Qt.vector3d(-0.102214, -0.72271, 0.436803)
                rotation: Qt.quaternion(0.700371, -0.71357, -0.0171702, -0.00164145)
                scale: Qt.vector3d(1, 1, 1)
                Node {
                    id: costas1101112131415161718192021
                    position: Qt.vector3d(-1.86265e-09, 1, -9.42964e-09)
                    rotation: Qt.quaternion(0.999832, 0.0183056, 1.07375e-06, 1.56314e-08)
                    Node {
                        id: frontFoot_l_end293031
                        position: Qt.vector3d(0, 1.1187, 7.567e-09)
                        rotation: Qt.quaternion(0.999205, -0.0398682, -3.64088e-10, -7.6553e-08)
                        Node {
                            id: frontLeg_r313233
                            position: Qt.vector3d(4.65661e-09, 1.19085, 1.66474e-08)
                            rotation: Qt.quaternion(-0.257374, 0.930277, 0.257833, 0.043198)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: backLeg_l1314151617181920212223
                                position: Qt.vector3d(-2.98023e-08, 0.913591, 1.4063e-07)
                                rotation: Qt.quaternion(0.755452, 0.603486, 0.18179, 0.179026)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: face_end25262728
                                    position: Qt.vector3d(4.47035e-08, 1.24557, 1.57394e-07)
                                    rotation: Qt.quaternion(0.611926, -0.790124, -0.00165647, 0.035327)
                                    Node {
                                        id: backFoot_l_end15161718192021222324
                                        position: Qt.vector3d(0, 0.800851, 0)
                                    }
                                }
                            }
                        }
                        Node {
                            id: but_r1617181920212223242526
                            position: Qt.vector3d(4.65661e-09, 1.19085, 1.66474e-08)
                            rotation: Qt.quaternion(0.544782, -0.755227, 0.292215, 0.217841)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: backLeg_r17181920212223242526
                                position: Qt.vector3d(-2.98023e-08, 0.913591, -2.47732e-07)
                                rotation: Qt.quaternion(0.664591, 0.660485, -0.243564, -0.25051)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: backFoot_r181920212223242526272829
                                    position: Qt.vector3d(-3.91155e-08, 1.24557, -1.67638e-08)
                                    rotation: Qt.quaternion(0.650377, -0.759611, 0.000149686, -0.000717353)
                                    Node {
                                        id: backFoot_r_end192021222324252627282930
                                        position: Qt.vector3d(0, 0.800851, 0)
                                    }
                                }
                            }
                        }
                    }
                }
                Node {
                    id: boneMain_0012021222324252627282930
                    position: Qt.vector3d(-1.86265e-09, 1, -9.42964e-09)
                    rotation: Qt.quaternion(0.768593, 0.639738, -4.16548e-10, -1.52289e-07)
                    scale: Qt.vector3d(1, 1, 1)
                    Node {
                        id: boneMain_002212223242526272829303132
                        position: Qt.vector3d(1.39698e-09, 0.663666, -7.86968e-08)
                        rotation: Qt.quaternion(0.981588, 0.191008, 9.72511e-09, -7.81567e-08)
                        Node {
                            id: boneMain_0032223242526272829303132
                            position: Qt.vector3d(4.65661e-10, 0.140353, 1.35042e-08)
                            rotation: Qt.quaternion(0.998652, 0.0519158, -3.26993e-10, -6.29004e-09)
                            Node {
                                id: pesco_o232425262728293031323334
                                position: Qt.vector3d(-1.30385e-08, 0.169037, -1.24564e-08)
                                rotation: Qt.quaternion(0.998334, 0.0576965, 1.18573e-07, -6.85268e-09)
                                Node {
                                    id: face242526272829303132333435
                                    position: Qt.vector3d(-1.81608e-08, 1.05892, -7.68341e-09)
                                    rotation: Qt.quaternion(0.701845, 0.71233, 1.31217e-09, 1.29286e-09)
                                    scale: Qt.vector3d(1, 1, 1)
                                    Node {
                                        id: face_end252627282930313233343536
                                        position: Qt.vector3d(0, 1.09633, 0)
                                    }
                                }
                            }
                        }
                    }
                }
                Node {
                    id: frontUpperLeg_l262728293031323334353637
                    position: Qt.vector3d(-1.86265e-09, 1, -9.42964e-09)
                    rotation: Qt.quaternion(0.817978, -0.390186, -0.229883, -0.354711)
                    Node {
                        id: frontLeg_l272829303132333435363738
                        position: Qt.vector3d(1.78814e-07, 0.955363, 8.56817e-08)
                        rotation: Qt.quaternion(0.0610175, -0.420644, 0.868788, -0.254052)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: frontFoot_l2829303132333435363738
                            position: Qt.vector3d(7.45058e-08, 1.22521, -4.28408e-08)
                            rotation: Qt.quaternion(0.808692, 0.58755, 0.00710002, 0.0274216)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: frontFoot_l_end2930313233343536373839
                                position: Qt.vector3d(0, 0.703263, 0)
                            }
                        }
                    }
                }
                Node {
                    id: frontUpperLeg_r303132333435363738394041
                    position: Qt.vector3d(-1.86265e-09, 1, -9.42964e-09)
                    rotation: Qt.quaternion(-0.325788, 0.865535, -0.355878, -0.134396)
                    scale: Qt.vector3d(1, 1, 1)
                    Node {
                        id: frontLeg_r3132333435363738394041
                        position: Qt.vector3d(1.86265e-08, 0.955363, -7.45058e-09)
                        rotation: Qt.quaternion(0.108729, 0.377966, 0.912671, -0.111135)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: pesco_o2324252627282930
                            position: Qt.vector3d(2.98023e-08, 1.19826, 0)
                            rotation: Qt.quaternion(0.897757, -0.415387, 0.135489, 0.0559346)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: face2425262728293031
                                position: Qt.vector3d(0, 0.703263, 0)
                            }
                        }
                    }
                }
            }
        }
    }

    property alias timeLineAnimation: timeLineAnimation
    // Animations:
    Timeline {
        startFrame: 0
        endFrame: 834
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            id: timeLineAnimation
            duration: 834
            from: 0
            to: 834
            alwaysRunToEnd: true
            running: false
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: face_end25262728
            property: "rotation"
            keyframeSource: "animations/face_end25262728_rotation_0.qad"
        }
        KeyframeGroup {
            target: backFoot_r181920212223242526272829
            property: "rotation"
            keyframeSource: "animations/backFoot_r181920212223242526272829_rotation_0.qad"
        }
        KeyframeGroup {
            target: backLeg_l1314151617181920212223
            property: "rotation"
            keyframeSource: "animations/backLeg_l1314151617181920212223_rotation_0.qad"
        }
        KeyframeGroup {
            target: backLeg_r17181920212223242526
            property: "rotation"
            keyframeSource: "animations/backLeg_r17181920212223242526_rotation_0.qad"
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
            target: boneMain_0012021222324252627282930
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.768593, 0.639738, -4.16544e-10, -1.52289e-07)
            }
        }
        KeyframeGroup {
            target: frontLeg_r313233
            property: "rotation"
            keyframeSource: "animations/frontLeg_r313233_rotation_0.qad"
        }
        KeyframeGroup {
            target: but_r1617181920212223242526
            property: "rotation"
            keyframeSource: "animations/but_r1617181920212223242526_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontFoot_l2829303132333435363738
            property: "rotation"
            keyframeSource: "animations/frontFoot_l2829303132333435363738_rotation_0.qad"
        }
        KeyframeGroup {
            target: pesco_o2324252627282930
            property: "rotation"
            keyframeSource: "animations/pesco_o2324252627282930_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_l272829303132333435363738
            property: "rotation"
            keyframeSource: "animations/frontLeg_l272829303132333435363738_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontLeg_r3132333435363738394041
            property: "rotation"
            keyframeSource: "animations/frontLeg_r3132333435363738394041_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_l262728293031323334353637
            property: "rotation"
            keyframeSource: "animations/frontUpperLeg_l262728293031323334353637_rotation_0.qad"
        }
        KeyframeGroup {
            target: frontUpperLeg_r303132333435363738394041
            property: "rotation"
            keyframeSource: "animations/frontUpperLeg_r303132333435363738394041_rotation_0.qad"
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
            target: frontFoot_l282930
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(64.5599, 8.34465e-05, 121.264)
            }
        }
        KeyframeGroup {
            target: frontFoot_l282930
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            }
        }
        KeyframeGroup {
            target: boneMain_0012021222324252627282930
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.768593, 0.639738, -4.16544e-10, -1.52289e-07)
            }
        }
    }
}
