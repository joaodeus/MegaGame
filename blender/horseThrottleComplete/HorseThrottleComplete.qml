import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: material_001_material
        baseColor: "#ffcc3b0e"
    }
    PrincipledMaterial {
        id: material_002_material
        baseColor: "#ff2acc39"
    }
    Skin {
        id: skin
        joints: [
            boneMain,
            costas1,
            costas2,
            but_l,
            backLeg_l,
            backFoot_l,
            but_r,
            backLeg_r,
            backFoot_r,
            boneMain_001,
            boneMain_002,
            boneMain_003,
            pesco_o,
            face,
            frontUpperLeg_l,
            frontLeg_l,
            frontFoot_l,
            frontUpperLeg_r,
            frontLeg_r,
            frontFoot_r
        ]
        inverseBindPoses: [
            Qt.matrix4x4(-8.28347e-07, 0.418606, -4.1633e-06, 0.645599, -0.656588, -5.2783e-07, 2.818e-05, 0.904424, 4.43188e-05, 4.16333e-06, 0.418606, -2.08698, 0, 0, 0, 1),
            Qt.matrix4x4(-8.74284e-07, 0.418606, -5.06099e-06, 0.645603, -0.656146, -3.71424e-07, 0.0153512, -0.171906, 0.0240787, 5.07803e-06, 0.418325, -2.08209, 0, 0, 0, 1),
            Qt.matrix4x4(-7.74427e-07, 0.418606, -5.06079e-06, 0.645603, -0.655979, -7.11212e-07, -0.0180267, -1.12062, -0.028275, 5.03483e-06, 0.418218, -2.17829, 0, 0, 0, 1),
            Qt.matrix4x4(0.0874468, 0.304157, 0.282155, -0.610659, -0.0884545, 0.287604, -0.298889, 1.60262, -0.644699, 0.00179578, 0.0792798, -2.75015, 0, 0, 0, 1),
            Qt.matrix4x4(-0.00196922, 0.418604, 0.000261944, 0.00942808, -0.136245, -4.33305e-06, -0.409495, 0.869226, -0.642294, -0.00128248, 0.0868621, -2.76683, 0, 0, 0, 1),
            Qt.matrix4x4(-9.35995e-05, 0.418604, -0.00128577, 0.0181443, 0.65589, 3.18144e-07, -0.0192995, 2.7912, -0.0302715, -0.00128723, -0.418159, 0.0773065, 0, 0, 0, 1),
            Qt.matrix4x4(-0.0874481, 0.304151, -0.282161, 1.54883, -0.0884534, -0.28761, -0.298883, 0.715486, -0.644699, -0.00179517, 0.0792798, -2.75569, 0, 0, 0, 1),
            Qt.matrix4x4(0.00196758, 0.418604, -0.000270446, 1.28176, -0.136245, -4.28626e-06, -0.409495, 0.869225, -0.642293, 0.00128324, 0.086862, -2.76288, 0, 0, 0, 1),
            Qt.matrix4x4(9.19433e-05, 0.418604, 0.00127725, 1.27305, 0.65589, 3.29187e-07, -0.0192995, 2.7912, -0.0302716, 0.00127856, -0.418159, 0.0812633, 0, 0, 0, 1),
            Qt.matrix4x4(-6.74412e-07, 0.418606, -4.24499e-06, 0.645599, -0.119109, 4.09656e-06, 0.411661, -2.06968, 0.645694, 1.1929e-06, 0.0759375, -0.28474, 0, 0, 0, 1),
            Qt.matrix4x4(-6.8112e-07, 0.418606, -4.297e-06, 0.645599, 0.223006, 4.18905e-06, 0.393722, -2.50348, 0.617556, -1.05102e-06, -0.142177, 1.1335, 0, 0, 0, 1),
            Qt.matrix4x4(-6.8573e-07, 0.418606, -4.30423e-06, 0.645599, 0.270625, 4.10182e-06, 0.381395, -2.54708, 0.598222, -1.37574e-06, -0.172536, 1.33681, 0, 0, 0, 1),
            Qt.matrix4x4(-8.28357e-07, 0.418606, -4.2631e-06, 0.645599, 0.263459, 4.11676e-06, 0.383429, -2.73189, 0.601412, -1.22685e-06, -0.167968, 1.30427, 0, 0, 0, 1),
            Qt.matrix4x4(-8.28357e-07, 0.418606, -4.2631e-06, 0.645599, 0.620393, -8.96869e-07, -0.137065, 0.999869, -0.214988, -4.20102e-06, -0.39553, 3.88223, 0, 0, 0, 1),
            Qt.matrix4x4(0.0997325, 0.29454, 0.290576, -0.97995, -0.0978276, 0.297451, -0.287862, 1.87967, -0.641553, 0.00043077, 0.0890659, -0.536631, 0, 0, 0, 1),
            Qt.matrix4x4(8.8519e-07, -0.418606, 4.2628e-06, 0.0332637, -0.030604, -4.30991e-06, -0.418151, 1.41739, 0.655874, 3.69691e-07, -0.0195114, 0.304173, 0, 0, 0, 1),
            Qt.matrix4x4(8.10458e-07, -0.418606, 4.10049e-06, 0.0332639, 0.654977, 2.3918e-07, -0.0293037, 0.308593, 0.0459633, 4.15583e-06, 0.417579, -0.185002, 0, 0, 0, 1),
            Qt.matrix4x4(-0.0997336, 0.294534, -0.290582, 1.88846, -0.0978264, -0.297457, -0.287855, 0.962169, -0.641553, -0.00042995, 0.0890659, -0.537958, 0, 0, 0, 1),
            Qt.matrix4x4(0.186608, -0.401343, -0.00081196, -1.19948, -0.0236648, -0.00362607, -0.418318, 1.40901, 0.629067, 0.118919, -0.0154957, 0.656998, 0, 0, 0, 1),
            Qt.matrix4x4(8.12353e-07, -0.418606, 4.47134e-06, -1.33483, 0.654977, 2.13238e-07, -0.0293037, 0.296558, 0.0459632, 4.51836e-06, 0.417579, -0.212354, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: rootNode
        PerspectiveCamera {
            id: camera_camera
            position: Qt.vector3d(735.889, 495.831, 692.579)
            rotation: Qt.quaternion(0.893796, -0.209973, 0.38578, 0.0906285)
            scale: Qt.vector3d(100, 100, 100)
            fieldOfView: 39.597755432128906
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        Model {
            id: sphere_Feet
            position: Qt.vector3d(64.5599, 1.51216, 120.372)
            rotation: Qt.quaternion(-0.496094, 0.503875, 0.503881, 0.49609)
            scale: Qt.vector3d(65.6588, 41.8606, 41.8606)
            source: "meshes/sphere_Feet.mesh"
            skin: skin
            materials: [
                material_001_material,
                material_002_material
            ]
        }
        Node {
            id: armature
            position: Qt.vector3d(3.79539e-13, 291.444, 152.897)
            rotation: Qt.quaternion(0.999808, -0.0195786, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            Node {
                id: boneMain
                position: Qt.vector3d(-2.95694e-14, -0.811494, 0.526446)
                rotation: Qt.quaternion(0.71542, -0.698694, -8.52848e-08, 8.32909e-08)
                Node {
                    id: costas1
                    position: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.999832, 0.0183056, 1.0727e-06, 1.52754e-08)
                    Node {
                        id: costas2
                        position: Qt.vector3d(-3.0563e-14, 1.1187, -1.49012e-08)
                        rotation: Qt.quaternion(0.999205, -0.0398682, 2.27666e-13, -7.60426e-08)
                        Node {
                            id: but_l
                            position: Qt.vector3d(-3.32751e-14, 1.19085, 7.45058e-09)
                            rotation: Qt.quaternion(0.676744, -0.636641, -0.251657, -0.270878)
                            Node {
                                id: backLeg_l
                                position: Qt.vector3d(1.41561e-07, 0.913591, -1.27824e-07)
                                rotation: Qt.quaternion(0.918531, 0.141074, 0.0522254, 0.365611)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: backFoot_l
                                    position: Qt.vector3d(5.09899e-08, 1.24557, 2.5006e-07)
                                    rotation: Qt.quaternion(0.614063, -0.789253, -1.05218e-08, 0.00241874)
                                    Node {
                                        id: backFoot_l_end
                                        position: Qt.vector3d(0, 0.800851, 0)
                                    }
                                }
                            }
                        }
                        Node {
                            id: but_r
                            position: Qt.vector3d(-3.32751e-14, 1.19085, 7.45058e-09)
                            rotation: Qt.quaternion(0.676744, -0.636641, 0.251656, 0.270877)
                            Node {
                                id: backLeg_r
                                position: Qt.vector3d(7.45058e-09, 0.913591, -1.17579e-07)
                                rotation: Qt.quaternion(0.918531, 0.141074, -0.0522254, -0.365611)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: backFoot_r
                                    position: Qt.vector3d(5.07571e-08, 1.24557, 4.39701e-07)
                                    rotation: Qt.quaternion(0.614063, -0.789253, -2.22759e-08, -0.00241877)
                                    Node {
                                        id: backFoot_r_end
                                        position: Qt.vector3d(0, 0.800851, 0)
                                    }
                                }
                            }
                        }
                    }
                }
                Node {
                    id: boneMain_001
                    position: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.768593, 0.639737, 9.24471e-15, -1.52525e-07)
                    Node {
                        id: boneMain_002
                        position: Qt.vector3d(2.95454e-15, 0.663666, 3.1665e-08)
                        rotation: Qt.quaternion(0.981588, 0.191008, -2.4883e-14, -4.554e-08)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: boneMain_003
                            position: Qt.vector3d(-1.38098e-14, 0.140353, -3.27709e-08)
                            rotation: Qt.quaternion(0.998652, 0.0519158, -6.4173e-10, -1.23443e-08)
                            Node {
                                id: pesco_o
                                position: Qt.vector3d(-9.41752e-15, 0.169037, 0)
                                rotation: Qt.quaternion(0.998334, 0.0576965, 1.19011e-07, -6.87795e-09)
                                Node {
                                    id: face
                                    position: Qt.vector3d(-1.48231e-21, 1.05892, 4.09782e-08)
                                    rotation: Qt.quaternion(0.701845, 0.71233, 0, 0)
                                    scale: Qt.vector3d(1, 1, 1)
                                    Node {
                                        id: face_end
                                        position: Qt.vector3d(0, 1.09633, 0)
                                    }
                                }
                            }
                        }
                    }
                }
                Node {
                    id: frontUpperLeg_l
                    position: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.718551, -0.579216, -0.241159, -0.300059)
                    Node {
                        id: frontLeg_l
                        position: Qt.vector3d(5.96046e-08, 0.955363, 8.184e-08)
                        rotation: Qt.quaternion(0.031958, -0.383629, 0.919858, -0.075288)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: frontFoot_l
                            position: Qt.vector3d(-1.12914e-07, 1.22521, 6.25907e-08)
                            rotation: Qt.quaternion(0.717398, 0.696663, 1.60203e-07, 8.69911e-08)
                            Node {
                                id: frontFoot_l_end
                                position: Qt.vector3d(0, 0.703263, 0)
                            }
                        }
                    }
                }
                Node {
                    id: frontUpperLeg_r
                    position: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
                    rotation: Qt.quaternion(0.718551, -0.579216, 0.241159, 0.300059)
                    Node {
                        id: frontLeg_r
                        position: Qt.vector3d(9.68575e-08, 0.955363, -1.36206e-08)
                        rotation: Qt.quaternion(0.0982305, 0.364062, 0.916488, -0.133642)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: frontFoot_r
                            position: Qt.vector3d(1.11759e-08, 1.19826, 1.04308e-07)
                            rotation: Qt.quaternion(0.713169, 0.686127, 0.106462, -0.0963601)
                            Node {
                                id: frontFoot_r_end
                                position: Qt.vector3d(0, 0.703263, 0)
                            }
                        }
                    }
                }
            }
        }
    }

    // Animations:
    property alias tl: timeLineAnimation
    property alias currentFrame: tl.currentFrame
    Timeline {
        id: tl
        startFrame: 0
        endFrame: 3334
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            id: timeLineAnimation
            duration: 3334
            from: 0
            to: 3334
            running: false
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: backFoot_l
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(5.09899e-08, 1.24557, 2.5006e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(5.12198e-08, 1.24557, 2.48294e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(5.14498e-08, 1.24557, 2.46527e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(5.16797e-08, 1.24557, 2.4476e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(5.19096e-08, 1.24557, 2.42994e-07)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(5.21395e-08, 1.24557, 2.41227e-07)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(5.23694e-08, 1.24557, 2.3946e-07)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(5.25994e-08, 1.24557, 2.37694e-07)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(5.28293e-08, 1.24557, 2.35927e-07)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(5.30592e-08, 1.24557, 2.34161e-07)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(5.32891e-08, 1.24557, 2.32394e-07)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(5.3519e-08, 1.24557, 2.30627e-07)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(5.3749e-08, 1.24557, 2.28861e-07)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(5.39789e-08, 1.24557, 2.27094e-07)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(5.42088e-08, 1.24557, 2.25328e-07)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(5.44387e-08, 1.24557, 2.23561e-07)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(5.46686e-08, 1.24557, 2.21794e-07)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(5.48986e-08, 1.24557, 2.20028e-07)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(5.51285e-08, 1.24557, 2.18261e-07)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(5.53584e-08, 1.24557, 2.16495e-07)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(5.55883e-08, 1.24557, 2.14728e-07)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(6.01867e-08, 1.24557, 1.79396e-07)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(6.04166e-08, 1.24557, 1.77629e-07)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(6.06466e-08, 1.24557, 1.75863e-07)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(6.08765e-08, 1.24557, 1.74096e-07)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(6.11064e-08, 1.24557, 1.7233e-07)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(6.13363e-08, 1.24557, 1.70563e-07)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(6.15662e-08, 1.24557, 1.68796e-07)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(6.17962e-08, 1.24557, 1.6703e-07)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(6.20261e-08, 1.24557, 1.65263e-07)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(6.2256e-08, 1.24557, 1.63497e-07)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(6.24859e-08, 1.24557, 1.6173e-07)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(6.27158e-08, 1.24557, 1.59963e-07)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(6.29458e-08, 1.24557, 1.58197e-07)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(6.31757e-08, 1.24557, 1.5643e-07)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(6.34056e-08, 1.24557, 1.54664e-07)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(6.36355e-08, 1.24557, 1.52897e-07)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(6.38654e-08, 1.24557, 1.5113e-07)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(6.40954e-08, 1.24557, 1.49364e-07)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(6.43253e-08, 1.24557, 1.47597e-07)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(6.45552e-08, 1.24557, 1.45831e-07)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(6.47851e-08, 1.24557, 1.44064e-07)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(6.5015e-08, 1.24557, 1.42297e-07)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(6.5245e-08, 1.24557, 1.40531e-07)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(6.54749e-08, 1.24557, 1.38764e-07)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(6.57048e-08, 1.24557, 1.36998e-07)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(6.59347e-08, 1.24557, 1.35231e-07)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(6.61646e-08, 1.24557, 1.33464e-07)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(6.63946e-08, 1.24557, 1.31698e-07)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(6.66245e-08, 1.24557, 1.29931e-07)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(6.68544e-08, 1.24557, 1.28165e-07)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(6.70843e-08, 1.24557, 1.26398e-07)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(6.73142e-08, 1.24557, 1.24631e-07)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(6.75442e-08, 1.24557, 1.22865e-07)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(6.77741e-08, 1.24557, 1.21098e-07)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(6.8004e-08, 1.24557, 1.19332e-07)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(6.82339e-08, 1.24557, 1.17565e-07)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(6.84638e-08, 1.24557, 1.15798e-07)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(6.86938e-08, 1.24557, 1.14032e-07)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(6.89237e-08, 1.24557, 1.12265e-07)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(6.91536e-08, 1.24557, 1.10499e-07)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(6.93835e-08, 1.24557, 1.08732e-07)
            }
        }
        KeyframeGroup {
            target: backFoot_l
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.614063, -0.789253, -1.06166e-08, 0.00241874)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.617903, -0.786251, -1.55795e-05, 0.00224203)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.627003, -0.779015, -5.27133e-05, 0.00182031)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.637755, -0.770239, -9.70314e-05, 0.00131658)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.646667, -0.762772, -0.000134144, 0.000894395)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.650377, -0.759611, -0.000149696, 0.000717362)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.646828, -0.762636, -0.000158528, 0.000730905)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.638243, -0.769834, -0.000170197, 0.000826024)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.627746, -0.778417, -0.000162464, 0.00108445)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.618571, -0.785728, -0.000113129, 0.00158798)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.614063, -0.789253, -1.06166e-08, 0.00241874)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.614038, -0.78925, -6.78364e-05, 0.00649611)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.613916, -0.789234, -0.000449357, 0.0147423)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.613657, -0.7892, -0.000957024, 0.0242401)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.613349, -0.78916, -0.00140546, 0.0320728)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.613195, -0.78914, -0.00159967, 0.0353296)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.613356, -0.789161, -0.00143672, 0.0319083)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.613673, -0.789202, -0.00104588, 0.0237475)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.61393, -0.789236, -0.000573517, 0.0140046)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.614043, -0.789251, -0.000171023, 0.00584153)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.614063, -0.789253, -1.06166e-08, 0.00241874)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.614063, -0.789253, 1.96767e-06, 0.00241726)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.611369, -0.791342, 1.42813e-08, 0.00242519)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.60402, -0.796966, 1.69606e-08, 0.00244242)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.593093, -0.80513, 1.86471e-08, 0.00246745)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.579675, -0.814844, 1.90787e-08, 0.00249722)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.564892, -0.825161, 1.83415e-08, 0.00252883)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.549923, -0.835212, 1.84174e-08, 0.00255964)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.535993, -0.844218, 1.67241e-08, 0.00258724)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.524367, -0.851488, 1.57628e-08, 0.00260952)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.516328, -0.856387, 1.53318e-08, 0.00262453)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.513167, -0.858285, 1.49725e-08, 0.00263034)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.545084, -0.838377, 1.3028e-08, 0.00256933)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.619607, -0.784909, 6.01234e-09, 0.00240546)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.702452, -0.711728, -6.62908e-10, 0.00218118)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.764622, -0.644477, -7.15585e-09, 0.00197508)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.78839, -0.615173, -9.81953e-09, 0.00188527)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.787687, -0.616073, -4.89937e-07, 0.00188864)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.785647, -0.618672, -9.18701e-09, 0.001896)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.782368, -0.622813, -9.29991e-09, 0.00190869)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.77794, -0.628336, -8.5298e-09, 0.00192561)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.772448, -0.635075, -7.68619e-09, 0.00194627)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.765976, -0.642866, -6.83923e-09, 0.00197014)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.758612, -0.65154, -5.98488e-09, 0.00199673)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.750447, -0.660928, -5.35192e-09, 0.0020255)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.741578, -0.670863, -3.92458e-09, 0.00205595)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.732112, -0.681181, -2.54421e-09, 0.00208757)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.722164, -0.691719, 4.39441e-07, 0.00211941)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.711855, -0.702323, -8.17689e-11, 0.00215236)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.701321, -0.712842, 9.41851e-07, 0.00218368)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.690703, -0.723135, 9.3897e-07, 0.00221525)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.680151, -0.733069, 3.25206e-09, 0.00224659)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.66982, -0.74252, 3.99742e-09, 0.00227556)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.659871, -0.751375, 5.11622e-09, 0.0023027)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.650472, -0.759527, 6.44294e-09, 0.00232768)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.641788, -0.766879, 7.0743e-09, 0.00235021)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.633988, -0.773339, 8.26307e-09, 0.00237001)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.627241, -0.778822, 8.53756e-09, 0.00238681)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.621712, -0.783242, 9.17523e-09, 0.00240036)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.617566, -0.786516, 9.42534e-09, 0.00241039)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.614964, -0.788551, -6.11642e-07, 0.00241712)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.614063, -0.789253, 9.85827e-09, 0.00241878)
            }
        }
        KeyframeGroup {
            target: backFoot_r
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(5.07571e-08, 1.24557, 4.39701e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(4.92349e-08, 1.24557, 4.37691e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(4.77128e-08, 1.24557, 4.35681e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(4.61907e-08, 1.24557, 4.33672e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(4.46686e-08, 1.24557, 4.31662e-07)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(4.31464e-08, 1.24557, 4.29653e-07)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(4.16243e-08, 1.24557, 4.27643e-07)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(4.01022e-08, 1.24557, 4.25633e-07)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(3.858e-08, 1.24557, 4.23624e-07)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(3.70579e-08, 1.24557, 4.21614e-07)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(3.55358e-08, 1.24557, 4.19604e-07)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(3.40136e-08, 1.24557, 4.17595e-07)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(3.24915e-08, 1.24557, 4.15585e-07)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(3.09694e-08, 1.24557, 4.13576e-07)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(2.94473e-08, 1.24557, 4.11566e-07)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(2.79251e-08, 1.24557, 4.09556e-07)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(2.6403e-08, 1.24557, 4.07547e-07)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(2.48809e-08, 1.24557, 4.05537e-07)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(2.33587e-08, 1.24557, 4.03528e-07)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(2.18366e-08, 1.24557, 4.01518e-07)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(2.03145e-08, 1.24557, 3.99508e-07)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-1.01281e-08, 1.24557, 3.59316e-07)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-1.16503e-08, 1.24557, 3.57306e-07)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-1.31724e-08, 1.24557, 3.55297e-07)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-1.46945e-08, 1.24557, 3.53287e-07)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-1.62167e-08, 1.24557, 3.51277e-07)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-1.77388e-08, 1.24557, 3.49268e-07)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-1.92609e-08, 1.24557, 3.47258e-07)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-2.0783e-08, 1.24557, 3.45249e-07)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-2.23052e-08, 1.24557, 3.43239e-07)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-2.38273e-08, 1.24557, 3.41229e-07)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-2.53494e-08, 1.24557, 3.3922e-07)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-2.68716e-08, 1.24557, 3.3721e-07)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-2.83937e-08, 1.24557, 3.352e-07)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-2.99158e-08, 1.24557, 3.33191e-07)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-3.1438e-08, 1.24557, 3.31181e-07)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-3.29601e-08, 1.24557, 3.29172e-07)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-3.44822e-08, 1.24557, 3.27162e-07)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-3.60043e-08, 1.24557, 3.25152e-07)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-3.75265e-08, 1.24557, 3.23143e-07)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-3.90486e-08, 1.24557, 3.21133e-07)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-4.05707e-08, 1.24557, 3.19124e-07)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-4.20929e-08, 1.24557, 3.17114e-07)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-4.3615e-08, 1.24557, 3.15104e-07)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-4.51371e-08, 1.24557, 3.13095e-07)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-4.66593e-08, 1.24557, 3.11085e-07)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-4.81814e-08, 1.24557, 3.09075e-07)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-4.97035e-08, 1.24557, 3.07066e-07)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-5.12256e-08, 1.24557, 3.05056e-07)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-5.27478e-08, 1.24557, 3.03047e-07)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-5.42699e-08, 1.24557, 3.01037e-07)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-5.5792e-08, 1.24557, 2.99027e-07)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-5.73142e-08, 1.24557, 2.97018e-07)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-5.88363e-08, 1.24557, 2.95008e-07)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-6.03584e-08, 1.24557, 2.92998e-07)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-6.18806e-08, 1.24557, 2.90989e-07)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-6.34027e-08, 1.24557, 2.88979e-07)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-6.49248e-08, 1.24557, 2.8697e-07)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-6.64469e-08, 1.24557, 2.8496e-07)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-6.79691e-08, 1.24557, 2.8295e-07)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-6.94912e-08, 1.24557, 2.80941e-07)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-7.10133e-08, 1.24557, 2.78931e-07)
            }
        }
        KeyframeGroup {
            target: backFoot_r
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.614063, -0.789253, -2.21811e-08, -0.00241877)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.614043, -0.789251, 0.000170992, -0.00584156)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.61393, -0.789236, 0.00057349, -0.0140046)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.613673, -0.789202, 0.00104586, -0.0237475)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.613356, -0.789161, 0.00143671, -0.0319083)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.613195, -0.78914, 0.00159965, -0.0353296)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.613349, -0.78916, 0.00140544, -0.0320728)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.613657, -0.7892, 0.000956998, -0.0242402)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.613916, -0.789234, 0.000449324, -0.0147423)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.614038, -0.78925, 6.77966e-05, -0.00649615)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.614063, -0.789253, -2.21811e-08, -0.00241877)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.618571, -0.785727, 0.000113106, -0.00158799)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.627746, -0.778417, 0.000162448, -0.00108446)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.638243, -0.769834, 0.000170183, -0.000826016)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.646828, -0.762636, 0.000158517, -0.000730894)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.650377, -0.759611, 0.000149686, -0.000717353)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.646667, -0.762772, 0.000134132, -0.000894392)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.637755, -0.770239, 9.70135e-05, -0.00131658)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.627003, -0.779015, 5.26878e-05, -0.00182033)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.617903, -0.786251, 1.55486e-05, -0.00224206)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.614063, -0.789253, -2.21811e-08, -0.00241877)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.614063, -0.789253, -1.95725e-06, -0.00241721)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.611369, -0.791342, -5.71253e-10, -0.00242513)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.60402, -0.796966, -5.78203e-10, -0.00244237)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.593093, -0.80513, -1.96285e-10, -0.00246739)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.579675, -0.814844, 1.20497e-09, -0.00249716)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.564892, -0.825161, 1.64867e-09, -0.00252877)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.549923, -0.835212, 2.32863e-09, -0.00255958)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.535993, -0.844218, 3.25793e-09, -0.00258718)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.524367, -0.851488, 4.21821e-09, -0.00260946)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.516328, -0.856387, 4.9603e-09, -0.00262447)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.513166, -0.858285, 1.79217e-08, -0.0026303)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.545084, -0.838378, 1.64451e-08, -0.00256929)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.619607, -0.784908, 1.27762e-08, -0.00240543)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.702452, -0.711728, 7.9549e-09, -0.00218116)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.764622, -0.644477, 4.26306e-09, -0.00197506)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.78839, -0.615173, -2.60624e-08, -0.00188522)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.787687, -0.616073, 4.54318e-07, -0.0018886)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.785647, -0.618672, -2.5857e-08, -0.00189595)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.782368, -0.622813, -2.5891e-08, -0.00190864)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.77794, -0.628336, -2.57391e-08, -0.00192556)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.772448, -0.635076, -2.50178e-08, -0.00194622)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.765976, -0.642866, -2.47732e-08, -0.00197009)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.758612, -0.65154, -2.45533e-08, -0.00199668)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.750447, -0.660928, -2.44327e-08, -0.00202545)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.741578, -0.670863, -2.35475e-08, -0.00205589)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.732112, -0.681181, -2.35339e-08, -0.00208751)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.722163, -0.691719, -4.6346e-07, -0.00211935)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.711855, -0.702323, -2.24047e-08, -0.00215231)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.701321, -0.712842, -9.62269e-07, -0.00218362)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.690703, -0.723135, -9.58353e-07, -0.00221519)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.680151, -0.733069, -2.07105e-08, -0.00224653)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.66982, -0.74252, -2.01609e-08, -0.00227549)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.659871, -0.751375, -1.92299e-08, -0.00230263)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.650472, -0.759527, -1.93288e-08, -0.00232761)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.641788, -0.766879, -1.88648e-08, -0.00235014)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.633988, -0.773339, -1.83624e-08, -0.00236994)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.627241, -0.778822, -1.81887e-08, -0.00238674)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.621712, -0.783242, -1.74142e-08, -0.00240029)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.617566, -0.786516, -1.75311e-08, -0.00241032)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.614964, -0.788551, 6.13724e-07, -0.00241705)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.614063, -0.789253, -1.70624e-09, -0.00241873)
            }
        }
        KeyframeGroup {
            target: backLeg_l
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.41561e-07, 0.913591, -1.27824e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(1.41282e-07, 0.913591, -1.2815e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(1.41002e-07, 0.913591, -1.28476e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(1.40723e-07, 0.913591, -1.28802e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(1.40443e-07, 0.913591, -1.29128e-07)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(1.40164e-07, 0.913591, -1.29454e-07)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(1.39885e-07, 0.913591, -1.2978e-07)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(1.39605e-07, 0.913591, -1.30106e-07)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(1.39326e-07, 0.913591, -1.30432e-07)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(1.39046e-07, 0.913591, -1.30758e-07)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(1.38767e-07, 0.913591, -1.31084e-07)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(1.38488e-07, 0.913591, -1.3141e-07)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(1.38208e-07, 0.913591, -1.31736e-07)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(1.37929e-07, 0.913591, -1.32062e-07)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(1.37649e-07, 0.913591, -1.32387e-07)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(1.3737e-07, 0.913591, -1.32713e-07)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(1.37091e-07, 0.913591, -1.33039e-07)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(1.36811e-07, 0.913591, -1.33365e-07)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(1.36532e-07, 0.913591, -1.33691e-07)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(1.36252e-07, 0.913591, -1.34017e-07)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(1.35973e-07, 0.913591, -1.34343e-07)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(1.30385e-07, 0.913591, -1.40863e-07)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(1.30106e-07, 0.913591, -1.41189e-07)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(1.29826e-07, 0.913591, -1.41514e-07)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(1.29547e-07, 0.913591, -1.4184e-07)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(1.29268e-07, 0.913591, -1.42166e-07)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(1.28988e-07, 0.913591, -1.42492e-07)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(1.28709e-07, 0.913591, -1.42818e-07)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(1.28429e-07, 0.913591, -1.43144e-07)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(1.2815e-07, 0.913591, -1.4347e-07)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(1.27871e-07, 0.913591, -1.43796e-07)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(1.27591e-07, 0.913591, -1.44122e-07)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(1.27312e-07, 0.913591, -1.44448e-07)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(1.27032e-07, 0.913591, -1.44774e-07)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(1.26753e-07, 0.913591, -1.451e-07)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(1.26474e-07, 0.913591, -1.45426e-07)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(1.26194e-07, 0.913591, -1.45752e-07)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(1.25915e-07, 0.913591, -1.46078e-07)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(1.25635e-07, 0.913591, -1.46404e-07)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(1.25356e-07, 0.913591, -1.4673e-07)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(1.25077e-07, 0.913591, -1.47056e-07)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(1.24797e-07, 0.913591, -1.47382e-07)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(1.24518e-07, 0.913591, -1.47708e-07)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(1.24238e-07, 0.913591, -1.48034e-07)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(1.23959e-07, 0.913591, -1.4836e-07)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(1.2368e-07, 0.913591, -1.48686e-07)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(1.234e-07, 0.913591, -1.49012e-07)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(1.23121e-07, 0.913591, -1.49338e-07)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(1.22841e-07, 0.913591, -1.49664e-07)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(1.22562e-07, 0.913591, -1.4999e-07)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(1.22283e-07, 0.913591, -1.50315e-07)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(1.22003e-07, 0.913591, -1.50641e-07)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(1.21724e-07, 0.913591, -1.50967e-07)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(1.21444e-07, 0.913591, -1.51293e-07)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(1.21165e-07, 0.913591, -1.51619e-07)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(1.20886e-07, 0.913591, -1.51945e-07)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(1.20606e-07, 0.913591, -1.52271e-07)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(1.20327e-07, 0.913591, -1.52597e-07)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(1.20047e-07, 0.913591, -1.52923e-07)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(1.19768e-07, 0.913591, -1.53249e-07)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(1.19489e-07, 0.913591, -1.53575e-07)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(1.19209e-07, 0.913591, -1.53901e-07)
            }
        }
        KeyframeGroup {
            target: backLeg_l
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.918531, 0.141074, 0.0522254, 0.365611)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.90853, 0.198681, 0.0734512, 0.360145)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.868044, 0.339103, 0.125187, 0.340348)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.789352, 0.500062, 0.18448, 0.304679)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.70371, 0.617621, 0.227778, 0.267308)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.664591, 0.660485, 0.243564, 0.25051)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.70371, 0.617621, 0.227778, 0.267308)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.789352, 0.500062, 0.18448, 0.304679)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.868044, 0.339103, 0.125187, 0.340348)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.90853, 0.198681, 0.0734512, 0.360145)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.918531, 0.141074, 0.0522254, 0.365611)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.914093, 0.191792, 0.0666127, 0.351015)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.891324, 0.314498, 0.101263, 0.310451)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.841359, 0.456171, 0.140959, 0.253285)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.783141, 0.563109, 0.170653, 0.201187)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.755452, 0.603486, 0.18179, 0.179026)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.783141, 0.563109, 0.170653, 0.201187)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.841359, 0.456171, 0.140958, 0.253285)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.891324, 0.314498, 0.101263, 0.310451)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.914093, 0.191792, 0.0666127, 0.351015)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.918531, 0.141074, 0.0522254, 0.365611)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.918772, 0.141108, 0.0521322, 0.365004)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.916576, 0.154807, 0.0575839, 0.364153)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.909452, 0.192345, 0.0725422, 0.361438)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.895808, 0.248297, 0.0948668, 0.356198)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.874096, 0.316391, 0.12208, 0.347779)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.844167, 0.389296, 0.151264, 0.336079)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.808176, 0.459396, 0.179365, 0.321923)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.770492, 0.520094, 0.203776, 0.307115)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.736812, 0.566768, 0.222578, 0.293839)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.712901, 0.596534, 0.234591, 0.284406)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.70391, 0.607085, 0.238877, 0.280885)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.7073, 0.603101, 0.237313, 0.282276)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.716837, 0.5917, 0.232761, 0.286108)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.731392, 0.573578, 0.225503, 0.291929)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.749748, 0.549331, 0.215779, 0.299254)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.770706, 0.51948, 0.2038, 0.3076)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.793152, 0.484478, 0.18975, 0.316522)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.816096, 0.444699, 0.173785, 0.325621)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.838692, 0.400408, 0.156015, 0.334558)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.860227, 0.351712, 0.13649, 0.343044)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.880085, 0.2985, 0.115171, 0.350833)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.897802, 0.239925, 0.0917289, 0.357733)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.912335, 0.176691, 0.0664555, 0.363331)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.922584, 0.111241, 0.0403366, 0.367203)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.928041, 0.046455, 0.0145311, 0.369284)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.929025, -0.0146458, -0.00978347, 0.369599)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.926494, -0.069236, -0.0314904, 0.368543)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.921883, -0.114888, -0.0496356, 0.3667)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.916826, -0.149603, -0.0634364, 0.364726)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.912996, -0.171696, -0.0721709, 0.362975)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.911548, -0.179473, -0.075225, 0.362229)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.916933, -0.149849, -0.063465, 0.36435)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.925965, -0.0768049, -0.0344801, 0.368103)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.929094, 0.0135864, 0.00144768, 0.36959)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.924711, 0.0916611, 0.0325362, 0.368035)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.920259, 0.128972, 0.0474161, 0.36639)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.91933, 0.135503, 0.0500172, 0.366019)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.918793, 0.139157, 0.0514732, 0.365793)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.918559, 0.140759, 0.0521073, 0.365678)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.918513, 0.141128, 0.0522506, 0.365632)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.918531, 0.141074, 0.0522254, 0.365611)
            }
        }
        KeyframeGroup {
            target: backLeg_r
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(7.45058e-09, 0.913591, -1.17579e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(6.89179e-09, 0.913591, -1.17254e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(6.33299e-09, 0.913591, -1.16928e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(5.7742e-09, 0.913591, -1.16602e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(5.21541e-09, 0.913591, -1.16276e-07)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(4.65661e-09, 0.913591, -1.1595e-07)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(4.09782e-09, 0.913591, -1.15624e-07)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(3.53903e-09, 0.913591, -1.15298e-07)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(2.98023e-09, 0.913591, -1.14972e-07)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(2.42144e-09, 0.913591, -1.14646e-07)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(1.86265e-09, 0.913591, -1.1432e-07)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(1.30385e-09, 0.913591, -1.13994e-07)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(7.45058e-10, 0.913591, -1.13668e-07)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(1.86265e-10, 0.913591, -1.13342e-07)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-3.72529e-10, 0.913591, -1.13016e-07)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-9.31323e-10, 0.913591, -1.1269e-07)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-1.49012e-09, 0.913591, -1.12364e-07)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-2.04891e-09, 0.913591, -1.12038e-07)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-2.6077e-09, 0.913591, -1.11712e-07)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(-3.1665e-09, 0.913591, -1.11386e-07)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-3.72529e-09, 0.913591, -1.1106e-07)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-1.49012e-08, 0.913591, -1.04541e-07)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-1.546e-08, 0.913591, -1.04215e-07)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-1.60187e-08, 0.913591, -1.03889e-07)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-1.65775e-08, 0.913591, -1.03563e-07)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-1.71363e-08, 0.913591, -1.03237e-07)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-1.76951e-08, 0.913591, -1.02911e-07)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-1.82539e-08, 0.913591, -1.02585e-07)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-1.88127e-08, 0.913591, -1.02259e-07)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-1.93715e-08, 0.913591, -1.01933e-07)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-1.99303e-08, 0.913591, -1.01607e-07)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-2.04891e-08, 0.913591, -1.01281e-07)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-2.10479e-08, 0.913591, -1.00955e-07)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-2.16067e-08, 0.913591, -1.00629e-07)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-2.21655e-08, 0.913591, -1.00303e-07)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-2.27243e-08, 0.913591, -9.99775e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-2.32831e-08, 0.913591, -9.96515e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-2.38419e-08, 0.913591, -9.93256e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-2.44006e-08, 0.913591, -9.89996e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-2.49594e-08, 0.913591, -9.86736e-08)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-2.55182e-08, 0.913591, -9.83477e-08)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-2.6077e-08, 0.913591, -9.80217e-08)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-2.66358e-08, 0.913591, -9.76957e-08)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-2.71946e-08, 0.913591, -9.73698e-08)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-2.77534e-08, 0.913591, -9.70438e-08)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-2.83122e-08, 0.913591, -9.67178e-08)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-2.8871e-08, 0.913591, -9.63919e-08)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-2.94298e-08, 0.913591, -9.60659e-08)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-2.99886e-08, 0.913591, -9.574e-08)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-3.05474e-08, 0.913591, -9.5414e-08)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-3.11062e-08, 0.913591, -9.5088e-08)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-3.1665e-08, 0.913591, -9.47621e-08)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-3.22238e-08, 0.913591, -9.44361e-08)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-3.27826e-08, 0.913591, -9.41101e-08)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-3.33414e-08, 0.913591, -9.37842e-08)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-3.39001e-08, 0.913591, -9.34582e-08)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-3.44589e-08, 0.913591, -9.31323e-08)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-3.50177e-08, 0.913591, -9.28063e-08)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-3.55765e-08, 0.913591, -9.24803e-08)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-3.61353e-08, 0.913591, -9.21544e-08)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-3.66941e-08, 0.913591, -9.18284e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-3.72529e-08, 0.913591, -9.15024e-08)
            }
        }
        KeyframeGroup {
            target: backLeg_r
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.918531, 0.141074, -0.0522254, -0.365611)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.914093, 0.191792, -0.0666127, -0.351015)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.891324, 0.314498, -0.101263, -0.310451)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.841359, 0.456171, -0.140958, -0.253285)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.783141, 0.563109, -0.170653, -0.201187)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.755452, 0.603486, -0.18179, -0.179026)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.783141, 0.563109, -0.170653, -0.201187)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.841359, 0.456171, -0.140958, -0.253285)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.891324, 0.314498, -0.101263, -0.31045)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.914093, 0.191792, -0.0666127, -0.351015)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.918531, 0.141074, -0.0522254, -0.365611)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.90853, 0.198681, -0.0734512, -0.360145)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.868044, 0.339103, -0.125187, -0.340348)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.789352, 0.500062, -0.18448, -0.304679)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.70371, 0.617621, -0.227778, -0.267308)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.664591, 0.660485, -0.243564, -0.25051)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.70371, 0.617621, -0.227778, -0.267308)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.789352, 0.500062, -0.18448, -0.304679)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.868044, 0.339103, -0.125187, -0.340347)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.90853, 0.198681, -0.0734512, -0.360145)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.918531, 0.141074, -0.0522254, -0.365611)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.918772, 0.141109, -0.0521322, -0.365004)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.916576, 0.154807, -0.0575838, -0.364152)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.909452, 0.192346, -0.0725421, -0.361438)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.895808, 0.248297, -0.0948667, -0.356198)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.874096, 0.316391, -0.12208, -0.347779)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.844167, 0.389296, -0.151264, -0.336079)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.808176, 0.459396, -0.179365, -0.321923)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.770492, 0.520094, -0.203776, -0.307115)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.736812, 0.566768, -0.222578, -0.293839)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.712901, 0.596534, -0.234591, -0.284406)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.70391, 0.607085, -0.238877, -0.280884)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.7073, 0.603101, -0.237313, -0.282276)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.716838, 0.5917, -0.232761, -0.286108)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.731392, 0.573578, -0.225503, -0.291929)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.749748, 0.549331, -0.215779, -0.299253)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.770706, 0.51948, -0.2038, -0.3076)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.793152, 0.484478, -0.18975, -0.316522)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.816096, 0.444699, -0.173785, -0.325621)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.838692, 0.400408, -0.156015, -0.334558)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.860227, 0.351713, -0.13649, -0.343044)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.880085, 0.2985, -0.115171, -0.350832)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.897802, 0.239926, -0.0917289, -0.357733)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.912335, 0.176691, -0.0664555, -0.363331)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.922584, 0.111241, -0.0403367, -0.367203)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.928041, 0.0464551, -0.0145311, -0.369284)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.929025, -0.0146458, 0.00978347, -0.369599)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.926494, -0.069236, 0.0314904, -0.368543)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.921883, -0.114888, 0.0496356, -0.3667)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.916826, -0.149603, 0.0634364, -0.364726)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.912996, -0.171696, 0.0721709, -0.362974)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.911548, -0.179473, 0.075225, -0.362229)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.916933, -0.149849, 0.0634649, -0.36435)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.925966, -0.0768049, 0.03448, -0.368103)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.929095, 0.0135864, -0.00144769, -0.36959)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.924711, 0.0916611, -0.0325362, -0.368035)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.920259, 0.128972, -0.0474161, -0.36639)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.91933, 0.135503, -0.0500172, -0.366019)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.918794, 0.139157, -0.0514732, -0.365792)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.918559, 0.140759, -0.0521073, -0.365678)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.918513, 0.141128, -0.0522505, -0.365632)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.918531, 0.141074, -0.0522254, -0.365611)
            }
        }
        KeyframeGroup {
            target: boneMain
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-2.95694e-14, -0.811494, 0.526446)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(0.0106302, -0.80226, 0.517123)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(0.0359792, -0.780242, 0.494892)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(0.0662345, -0.753962, 0.468357)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(0.0915835, -0.731943, 0.446126)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0.102214, -0.72271, 0.436803)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0.0964897, -0.731943, 0.446126)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0.0809532, -0.753962, 0.468357)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0.0580574, -0.780242, 0.494892)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0.0302553, -0.80226, 0.517123)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-2.95694e-14, -0.811494, 0.526446)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-0.0302553, -0.80226, 0.517123)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-0.0580574, -0.780242, 0.494892)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-0.0809533, -0.753962, 0.468357)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-0.0964898, -0.731943, 0.446126)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-0.102214, -0.72271, 0.436803)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-0.0915835, -0.731943, 0.446126)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-0.0662345, -0.753962, 0.468357)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-0.0359792, -0.780242, 0.494892)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(-0.0106302, -0.80226, 0.517123)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-2.95694e-14, -0.811494, 0.526446)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-1.29183e-09, -0.811494, 0.526446)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-1.35642e-09, -0.769604, 0.498667)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-1.42101e-09, -0.654626, 0.422296)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-1.4856e-09, -0.4826, 0.307786)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-1.55019e-09, -0.269563, 0.165586)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-1.61479e-09, -0.0315536, 0.00614792)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-1.67938e-09, 0.215389, -0.160077)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-1.74397e-09, 0.455227, -0.322639)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-1.80856e-09, 0.671921, -0.471086)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-1.87315e-09, 0.849433, -0.594968)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-1.93774e-09, 0.971724, -0.683833)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-2.00233e-09, 1.03435, -0.739273)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-2.06692e-09, 1.07833, -0.772759)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-2.13151e-09, 1.15583, -0.788656)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-2.1961e-09, 1.31901, -0.791327)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-2.26069e-09, 1.62003, -0.785139)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-2.32528e-09, 2.48235, -0.666083)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-2.38987e-09, 3.97839, -0.389777)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-2.45446e-09, 5.63373, -0.050022)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-2.51905e-09, 6.97397, 0.259382)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-2.58364e-09, 7.52469, 0.444633)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-2.64823e-09, 7.44711, 0.524595)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-2.71282e-09, 7.22806, 0.582675)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-2.77741e-09, 6.88154, 0.621893)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-2.842e-09, 6.42156, 0.645269)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-2.90659e-09, 5.86213, 0.655823)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-2.97118e-09, 5.21724, 0.656575)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-3.03577e-09, 4.5009, 0.650545)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-3.10036e-09, 3.72712, 0.640751)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-3.16495e-09, 2.9099, 0.630215)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-3.22954e-09, 2.06325, 0.621955)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-3.29413e-09, 1.21129, 0.618217)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-3.35872e-09, 0.418601, 0.618146)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-3.42331e-09, -0.240097, 0.620113)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-3.4879e-09, -0.690103, 0.622487)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-3.55249e-09, -0.856706, 0.623641)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-3.61708e-09, -0.852004, 0.613533)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-3.68167e-09, -0.840792, 0.589428)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-3.74626e-09, -0.827409, 0.560659)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-3.81085e-09, -0.816196, 0.536554)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-3.87544e-09, -0.811494, 0.526446)
            }
        }
        KeyframeGroup {
            target: boneMain
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.71542, -0.698694, -8.52848e-08, 8.32909e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.71388, -0.700266, 0.00178567, 0.000170808)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.710183, -0.703991, 0.00604432, 0.000577951)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.705729, -0.708394, 0.0111271, 0.00106389)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.701961, -0.712048, 0.0153849, 0.00147095)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.700371, -0.71357, 0.01717, 0.00164162)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.701951, -0.712039, 0.0162089, 0.00154973)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.705707, -0.708372, 0.0135994, 0.00130025)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.710162, -0.70397, 0.00975309, 0.000932525)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.713872, -0.700258, 0.0050824, 0.000485989)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.71542, -0.698694, -8.52848e-08, 8.32909e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.713872, -0.700258, -0.00508257, -0.000485822)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.710162, -0.70397, -0.00975326, -0.000932361)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.705707, -0.708372, -0.0135996, -0.00130008)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.701951, -0.712039, -0.016209, -0.00154956)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.700371, -0.71357, -0.0171702, -0.00164145)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.701961, -0.712048, -0.0153851, -0.00147078)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.705729, -0.708394, -0.0111273, -0.00106372)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.710183, -0.703991, -0.00604449, -0.000577787)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.71388, -0.700266, -0.00178584, -0.000170643)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.71542, -0.698694, -8.52848e-08, 8.32909e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.711438, -0.702749, -8.57567e-08, 8.28049e-08)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.700238, -0.713909, -8.70552e-08, 8.14386e-08)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.682826, -0.730581, -8.8993e-08, 7.93166e-08)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.660194, -0.751095, -9.1374e-08, 7.65614e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.633444, -0.773789, -9.40031e-08, 7.33095e-08)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.60387, -0.797083, -9.66958e-08, 6.97193e-08)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.572973, -0.819574, -9.92891e-08, 6.59738e-08)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.542429, -0.840102, -1.01649e-07, 6.22757e-08)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.514018, -0.85778, -1.03676e-07, 5.884e-08)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(-0.489558, 0.871971, 1.05298e-07, -5.5885e-08)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(-0.470471, 0.882415, 1.06489e-07, -5.35808e-08)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(-0.456619, 0.889662, 1.07314e-07, -5.19095e-08)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(-0.44745, 0.894309, 1.07842e-07, -5.08036e-08)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(-0.442388, 0.896824, 1.08127e-07, -5.01934e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(-0.440837, 0.897587, 1.08214e-07, -5.00064e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(-0.466612, 0.884462, 1.06722e-07, -5.31151e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.530676, -0.847574, -1.02507e-07, 6.08541e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.611861, -0.790965, -9.59892e-08, 7.06889e-08)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.689756, -0.724042, -8.82333e-08, 8.01608e-08)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.749345, -0.66218, -8.10288e-08, 8.74368e-08)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.790344, -0.612664, -7.52433e-08, 9.24625e-08)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.82072, -0.571331, -7.0403e-08, 9.61992e-08)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.842923, -0.538034, -6.64975e-08, 9.89391e-08)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.858878, -0.51218, -6.34613e-08, 1.00913e-07)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.870054, -0.492957, -6.12018e-08, 1.023e-07)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.877567, -0.479454, -5.96138e-08, 1.03233e-07)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.882284, -0.470718, -5.85859e-08, 1.0382e-07)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.884912, -0.465758, -5.80023e-08, 1.04147e-07)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.886067, -0.463557, -5.77432e-08, 1.04291e-07)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.886091, -0.463512, -5.77379e-08, 1.04294e-07)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.886115, -0.463466, -5.77325e-08, 1.04297e-07)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.884625, -0.466303, -5.80664e-08, 1.04111e-07)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.880526, -0.473998, -5.89719e-08, 1.03601e-07)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.872309, -0.488955, -6.07313e-08, 1.0258e-07)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.85809, -0.5135, -6.36163e-08, 1.00816e-07)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.832992, -0.553285, -6.8287e-08, 9.77126e-08)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.79745, -0.603385, -7.41575e-08, 9.33356e-08)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.75913, -0.650939, -7.97167e-08, 8.86347e-08)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.728124, -0.685446, -8.37417e-08, 8.48422e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.71542, -0.698694, -8.52848e-08, 8.32909e-08)
            }
        }
        KeyframeGroup {
            target: boneMain_001
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-1.04361e-14, 1, -3.53903e-08)
            }
        }
        KeyframeGroup {
            target: boneMain_001
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.768593, 0.639738, 0, -1.52525e-07)
            }
        }
        KeyframeGroup {
            target: boneMain_002
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(2.95454e-15, 0.663666, 3.1665e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(1.68754e-14, 0.663666, 3.1665e-08)
            }
        }
        KeyframeGroup {
            target: boneMain_002
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.981588, 0.191008, -2.44306e-14, -4.554e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.981588, 0.191008, 9.00262e-09, -7.87819e-08)
            }
        }
        KeyframeGroup {
            target: boneMain_003
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.38098e-14, 0.140353, -3.27709e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-1.13243e-14, 0.140353, -3.27709e-08)
            }
        }
        KeyframeGroup {
            target: boneMain_003
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.998652, 0.0519158, -6.4173e-10, -1.23443e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.998652, 0.0519158, -3.26372e-10, -6.27808e-09)
            }
        }
        KeyframeGroup {
            target: but_l
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-3.32751e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-3.3986e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-3.46969e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-3.54079e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-3.61188e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-3.68298e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-3.75407e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-3.82516e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-3.89626e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-3.96735e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-4.03845e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-4.10954e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-4.18063e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-4.25173e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-4.32282e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-4.39391e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-4.46501e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-4.5361e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-4.6072e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(-4.67829e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-4.74938e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-6.17126e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-6.24235e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-6.31345e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-6.38454e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-6.45563e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-6.52673e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-6.59782e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-6.66892e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-6.74001e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-6.8111e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-6.8822e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-6.95329e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-7.02438e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-7.09548e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-7.16657e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-7.23767e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-7.30876e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-7.37985e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-7.45095e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-7.52204e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-7.59314e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-7.66423e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-7.73532e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-7.80642e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-7.87751e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-7.9486e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-8.0197e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-8.09079e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-8.16188e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-8.23298e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-8.30407e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-8.37517e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-8.44626e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-8.51735e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-8.58845e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-8.65954e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-8.73064e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-8.80173e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-8.87282e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-8.94392e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-9.01501e-14, 1.19085, 7.45057e-09)
            }
        }
        KeyframeGroup {
            target: but_l
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.676744, -0.636641, -0.251657, -0.270878)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.664132, -0.650063, -0.256305, -0.265808)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.632892, -0.68118, -0.267031, -0.253249)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.59367, -0.716427, -0.279086, -0.237486)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.559443, -0.744141, -0.288482, -0.223732)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.544782, -0.755226, -0.292216, -0.217842)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.559443, -0.744141, -0.288482, -0.223733)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.59367, -0.716427, -0.279086, -0.237486)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.632892, -0.68118, -0.267031, -0.253249)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.664132, -0.650063, -0.256305, -0.265808)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.676744, -0.636641, -0.251657, -0.270878)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.642599, -0.677158, -0.256074, -0.250897)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.549155, -0.768012, -0.26344, -0.197955)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(-0.420323, 0.858218, 0.265337, 0.12801)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(-0.30549, 0.913196, 0.261038, 0.0678771)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(-0.257374, 0.930277, 0.257833, 0.043198)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(-0.305491, 0.913196, 0.261038, 0.0678771)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(-0.420323, 0.858218, 0.265337, 0.12801)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.549155, -0.768012, -0.26344, -0.197955)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.642599, -0.677158, -0.256073, -0.250897)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.676744, -0.636641, -0.251657, -0.270878)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.676504, -0.636454, -0.252227, -0.271387)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.674709, -0.638428, -0.252911, -0.270581)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.6698, -0.643764, -0.254768, -0.268381)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.662426, -0.651526, -0.257616, -0.265218)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.65334, -0.660855, -0.261033, -0.261303)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.64318, -0.670752, -0.264994, -0.257273)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.632771, -0.680364, -0.269165, -0.253489)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.623175, -0.689163, -0.272691, -0.249692)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.615187, -0.696303, -0.275552, -0.246531)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.609724, -0.701092, -0.277471, -0.244369)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.607641, -0.702737, -0.278364, -0.243815)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.609376, -0.701395, -0.277592, -0.244232)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.614152, -0.697217, -0.275918, -0.246122)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.621652, -0.690537, -0.273241, -0.24909)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.631482, -0.68156, -0.269644, -0.252979)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.643234, -0.67048, -0.265206, -0.257628)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.656601, -0.657617, -0.259733, -0.262593)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.670831, -0.642868, -0.25415, -0.268541)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.685842, -0.626828, -0.24773, -0.274474)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.701123, -0.609689, -0.240872, -0.280512)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.716293, -0.591792, -0.233713, -0.286505)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.731007, -0.573518, -0.226404, -0.292314)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.744956, -0.555278, -0.219112, -0.29782)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.757876, -0.537511, -0.212009, -0.302917)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.769546, -0.520665, -0.205277, -0.307519)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.779786, -0.5052, -0.199097, -0.311555)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.78845, -0.491569, -0.193652, -0.314969)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.795412, -0.480222, -0.189119, -0.317711)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.800556, -0.471597, -0.185674, -0.319737)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.803758, -0.466118, -0.183486, -0.320997)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.804867, -0.464202, -0.182721, -0.321434)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.791665, -0.486375, -0.191577, -0.316235)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.757347, -0.538256, -0.212307, -0.302708)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.711554, -0.597481, -0.235988, -0.284633)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.669714, -0.644032, -0.254616, -0.268099)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.651525, -0.662714, -0.261676, -0.260482)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.654256, -0.660082, -0.260527, -0.26147)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.660649, -0.653701, -0.257942, -0.263978)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.668104, -0.645966, -0.255004, -0.267091)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.674208, -0.639402, -0.25265, -0.26977)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.676744, -0.636641, -0.251657, -0.270878)
            }
        }
        KeyframeGroup {
            target: but_r
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-3.32751e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-3.3986e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-3.46969e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-3.54079e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-3.61188e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-3.68298e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-3.75407e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-3.82516e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-3.89626e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-3.96735e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-4.03845e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-4.10954e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-4.18063e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-4.25173e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-4.32282e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-4.39391e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-4.46501e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-4.5361e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-4.6072e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(-4.67829e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-4.74938e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-6.17126e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-6.24235e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-6.31345e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-6.38454e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-6.45563e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-6.52673e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-6.59782e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-6.66892e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-6.74001e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-6.8111e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-6.8822e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-6.95329e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-7.02438e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-7.09548e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-7.16657e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-7.23767e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-7.30876e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-7.37985e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-7.45095e-14, 1.19085, 7.45058e-09)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-7.52204e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-7.59314e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-7.66423e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-7.73532e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-7.80642e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-7.87751e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-7.9486e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-8.0197e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-8.09079e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-8.16188e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-8.23298e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-8.30407e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-8.37517e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-8.44626e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-8.51735e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-8.58845e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-8.65954e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-8.73064e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-8.80173e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-8.87282e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-8.94392e-14, 1.19085, 7.45057e-09)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-9.01501e-14, 1.19085, 7.45057e-09)
            }
        }
        KeyframeGroup {
            target: but_r
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.676744, -0.636641, 0.251656, 0.270877)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.6426, -0.677159, 0.256072, 0.250895)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.549155, -0.768013, 0.263439, 0.197953)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(-0.420323, 0.858219, -0.265336, -0.128009)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(-0.305491, 0.913197, -0.261037, -0.0678753)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(-0.257375, 0.930277, -0.257832, -0.0431962)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(-0.305491, 0.913197, -0.261037, -0.0678753)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(-0.420323, 0.858219, -0.265336, -0.128009)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.549155, -0.768012, 0.263439, 0.197953)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.6426, -0.677159, 0.256072, 0.250896)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.676744, -0.636641, 0.251656, 0.270877)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.664133, -0.650064, 0.256304, 0.265806)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.632893, -0.681181, 0.26703, 0.253248)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.593671, -0.716427, 0.279085, 0.237484)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.559444, -0.744141, 0.288481, 0.223731)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.544782, -0.755227, 0.292215, 0.217841)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.559444, -0.744141, 0.288481, 0.223731)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.593671, -0.716427, 0.279085, 0.237484)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.632893, -0.681181, 0.26703, 0.253248)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.664133, -0.650064, 0.256304, 0.265806)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.676646, -0.636565, 0.251889, 0.271085)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.676714, -0.636618, 0.251728, 0.270941)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.674932, -0.638606, 0.252378, 0.2701)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.670033, -0.643962, 0.254205, 0.267859)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.662664, -0.651746, 0.257029, 0.26465)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.653491, -0.66101, 0.26065, 0.260915)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.643251, -0.670834, 0.264808, 0.257073)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.632771, -0.680364, 0.269164, 0.253487)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.623176, -0.689164, 0.272689, 0.249691)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.615188, -0.696304, 0.275551, 0.24653)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.609725, -0.701093, 0.27747, 0.244368)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.607642, -0.702738, 0.278363, 0.243813)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.609377, -0.701395, 0.277591, 0.24423)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.614153, -0.697217, 0.275916, 0.24612)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.621653, -0.690538, 0.27324, 0.249088)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.631483, -0.68156, 0.269643, 0.252978)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.643234, -0.670481, 0.265205, 0.257626)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.656601, -0.657617, 0.259731, 0.262592)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.670832, -0.642869, 0.254149, 0.268539)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.685843, -0.626829, 0.247729, 0.274473)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.701123, -0.609689, 0.24087, 0.280511)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.716294, -0.591793, 0.233711, 0.286503)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.731007, -0.573518, 0.226403, 0.292313)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.744956, -0.555279, 0.21911, 0.297819)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.757876, -0.537511, 0.212008, 0.302916)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.769547, -0.520666, 0.205275, 0.307518)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.779787, -0.5052, 0.199096, 0.311554)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.78845, -0.49157, 0.19365, 0.314968)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.795412, -0.480223, 0.189118, 0.31771)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.800557, -0.471597, 0.185673, 0.319736)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.803759, -0.466119, 0.183485, 0.320996)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.804867, -0.464202, 0.182719, 0.321433)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.791665, -0.486375, 0.191575, 0.316234)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.757347, -0.538257, 0.212306, 0.302707)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.711555, -0.597482, 0.235987, 0.284632)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.669714, -0.644032, 0.254615, 0.268098)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.651525, -0.662715, 0.261675, 0.26048)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.654257, -0.660082, 0.260526, 0.261468)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.660649, -0.653701, 0.257941, 0.263977)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.668105, -0.645966, 0.255003, 0.26709)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.674209, -0.639403, 0.252649, 0.269769)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.676744, -0.636642, 0.251656, 0.270877)
            }
        }
        KeyframeGroup {
            target: costas1
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-1.04361e-14, 1, -3.53903e-08)
            }
        }
        KeyframeGroup {
            target: costas2
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-3.0563e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-1.4713e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-7.6175e-16, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-5.21942e-17, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(6.57355e-16, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(1.36691e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(2.07646e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(2.78602e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(3.49557e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(4.20512e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(4.91467e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(5.62423e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(6.33378e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(7.04333e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(7.75289e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(8.46244e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(9.17199e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(9.88154e-15, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(1.05911e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(1.13007e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(1.20102e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(1.27198e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(1.34293e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(1.41389e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(1.48484e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(1.5558e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(1.62675e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(1.69771e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(1.76866e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(1.83962e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(1.91057e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(1.98153e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(2.05248e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(2.12344e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(2.19439e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(2.26535e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(2.33631e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(2.40726e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(2.47822e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(2.54917e-14, 1.1187, -1.49012e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(2.62013e-14, 1.1187, -1.49012e-08)
            }
        }
        KeyframeGroup {
            target: costas2
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.999205, -0.0398682, 2.27777e-13, -7.60426e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.999203, -0.0399155, 3.82666e-12, -7.60426e-08)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.99919, -0.0402466, 2.90217e-11, -7.60426e-08)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.999153, -0.0411451, 9.7408e-11, -7.60425e-08)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.99908, -0.042895, 2.30589e-10, -7.60422e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.998952, -0.0457799, 4.50179e-10, -7.60412e-08)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.998745, -0.0500835, 7.77798e-10, -7.60386e-08)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.998426, -0.0560887, 1.23506e-09, -7.60326e-08)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.997945, -0.0640775, 1.84352e-09, -7.60202e-08)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.997234, -0.074329, 2.6246e-09, -7.59973e-08)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.996198, -0.0871169, 3.5994e-09, -7.59573e-08)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.99466, -0.103203, 4.82633e-09, -7.58893e-08)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.992479, -0.122417, 6.29284e-09, -7.57818e-08)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.989634, -0.143616, 7.91225e-09, -7.56298e-08)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.986185, -0.165649, 9.59677e-09, -7.54346e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.982292, -0.187357, 1.1258e-08, -7.52046e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.978215, -0.207594, 1.28081e-08, -7.49562e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.974305, -0.225233, 1.41601e-08, -7.47125e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.970977, -0.239172, 1.52293e-08, -7.4502e-08)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.968676, -0.248329, 1.59321e-08, -7.43549e-08)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.967825, -0.251624, 1.6185e-08, -7.43002e-08)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.968212, -0.25013, 1.60703e-08, -7.43251e-08)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.969308, -0.245848, 1.57417e-08, -7.43954e-08)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.971002, -0.239073, 1.52217e-08, -7.45035e-08)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.973169, -0.230093, 1.45329e-08, -7.4641e-08)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.97568, -0.2192, 1.36976e-08, -7.47987e-08)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.978407, -0.206688, 1.27386e-08, -7.4968e-08)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.981227, -0.192858, 1.16792e-08, -7.51403e-08)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.984027, -0.178019, 1.05432e-08, -7.53081e-08)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.986711, -0.162487, 9.35498e-09, -7.5465e-08)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.989198, -0.146588, 8.13938e-09, -7.56057e-08)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.991428, -0.130651, 6.92168e-09, -7.57269e-08)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.993364, -0.115009, 5.72729e-09, -7.58266e-08)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.994988, -0.0999952, 4.58159e-09, -7.59044e-08)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.9963, -0.0859416, 3.50979e-09, -7.59616e-08)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.997319, -0.0731765, 2.53678e-09, -7.60003e-08)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.998075, -0.0620234, 1.68705e-09, -7.60239e-08)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.998605, -0.0528015, 9.84742e-10, -7.60362e-08)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.998949, -0.045826, 4.53684e-10, -7.60412e-08)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.999142, -0.0414103, 1.17589e-10, -7.60425e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.999205, -0.0398682, 2.27777e-13, -7.60426e-08)
            }
        }
        KeyframeGroup {
            target: face
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.48231e-21, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(2.0886e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(2.13717e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(2.18575e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(2.23432e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(2.33146e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(2.47718e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(2.52575e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(2.57432e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(2.6229e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(2.67147e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(2.72004e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(2.76861e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(2.81719e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(2.86576e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(2.91433e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(2.9629e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(3.01148e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(3.06005e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(3.10862e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(3.15719e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(3.20577e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(3.25434e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(3.30291e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(3.35148e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(3.40006e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(3.44863e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(3.4972e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(3.54577e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(3.59435e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(3.64292e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(3.69149e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(3.74006e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(3.78864e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(3.83721e-16, 1.05892, 4.09782e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(3.88578e-16, 1.05892, 4.09782e-08)
            }
        }
        KeyframeGroup {
            target: face
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.701845, 0.71233, 0, 0)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.703586, 0.71061, 0, 0)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.704681, 0.709525, 0, 0)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.70587, 0.708342, 0, 0)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.707057, 0.707157, 0, 0)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.709042, 0.705167, 0, 0)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.709262, 0.704945, 0, 0)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.707494, 0.706719, 0, 0)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.70466, 0.709546, 0, 0)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.700845, 0.713313, 0, 0)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.696136, 0.71791, 0, 0)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.690617, 0.72322, 0, 0)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.684374, 0.729131, 0, 0)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.677494, 0.735528, 0, 0)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.67007, 0.742298, 0, 0)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.662195, 0.749332, 0, 0)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.65397, 0.75652, 0, 0)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.6455, 0.76376, 0, 0)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.636893, 0.770952, 0, 0)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.628263, 0.778001, 0, 0)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.619727, 0.784817, 0, 0)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.611407, 0.791317, 0, 0)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.603425, 0.79742, 0, 0)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.595907, 0.803053, 0, 0)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.588981, 0.808147, 0, 0)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.582774, 0.812634, 0, 0)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.577414, 0.816452, 0, 0)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.573029, 0.819535, 0, 0)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.569743, 0.821823, 0, 0)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.567683, 0.823247, 0, 0)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.56697, 0.823739, 0, 0)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.581827, 0.813313, 0, 0)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.616602, 0.787275, 0, 0)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.656665, 0.754183, 0, 0)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.688801, 0.724951, 0, 0)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.701845, 0.71233, 0, 0)
            }
        }
        KeyframeGroup {
            target: frontFoot_l
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.12914e-07, 1.22521, 6.25907e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-1.11461e-07, 1.22521, 6.12333e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-1.10009e-07, 1.22521, 5.98759e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-1.08557e-07, 1.22521, 5.85185e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-1.07104e-07, 1.22521, 5.7161e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-1.05652e-07, 1.22521, 5.58036e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-1.04199e-07, 1.22521, 5.44462e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-1.02747e-07, 1.22521, 5.30888e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-1.01295e-07, 1.22521, 5.17314e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-9.98423e-08, 1.22521, 5.0374e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-9.83899e-08, 1.22521, 4.90166e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-9.69375e-08, 1.22521, 4.76592e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-9.54851e-08, 1.22521, 4.63018e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-9.40327e-08, 1.22521, 4.49443e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-9.25803e-08, 1.22521, 4.35869e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-9.11279e-08, 1.22521, 4.22295e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-8.96755e-08, 1.22521, 4.08721e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-8.82231e-08, 1.22521, 3.95147e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-8.67707e-08, 1.22521, 3.81573e-08)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(-8.53183e-08, 1.22521, 3.67999e-08)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-8.38659e-08, 1.22521, 3.54425e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-5.33656e-08, 1.22521, 6.93682e-09)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-5.19132e-08, 1.22521, 5.57941e-09)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-5.04608e-08, 1.22521, 4.22199e-09)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-4.90084e-08, 1.22521, 2.86457e-09)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-4.7556e-08, 1.22521, 1.50717e-09)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-4.61036e-08, 1.22521, 1.49754e-10)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-4.46512e-08, 1.22521, -1.20766e-09)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-4.31988e-08, 1.22521, -2.56507e-09)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-4.17465e-08, 1.22521, -3.92247e-09)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-4.0294e-08, 1.22521, -5.27989e-09)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-3.88417e-08, 1.22521, -6.6373e-09)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-3.73893e-08, 1.22521, -7.99471e-09)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-3.59369e-08, 1.22521, -9.35212e-09)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-3.44845e-08, 1.22521, -1.07095e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-3.30321e-08, 1.22521, -1.20669e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-3.15797e-08, 1.22521, -1.34244e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-3.01273e-08, 1.22521, -1.47818e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-2.86749e-08, 1.22521, -1.61392e-08)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-2.72225e-08, 1.22521, -1.74966e-08)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-2.57701e-08, 1.22521, -1.8854e-08)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-2.43177e-08, 1.22521, -2.02114e-08)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-2.28653e-08, 1.22521, -2.15688e-08)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-2.14129e-08, 1.22521, -2.29262e-08)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-1.99605e-08, 1.22521, -2.42837e-08)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-1.85081e-08, 1.22521, -2.56411e-08)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-1.70557e-08, 1.22521, -2.69985e-08)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-1.56033e-08, 1.22521, -2.83559e-08)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-1.41509e-08, 1.22521, -2.97133e-08)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-1.26985e-08, 1.22521, -3.10707e-08)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-1.12461e-08, 1.22521, -3.24281e-08)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-9.79374e-09, 1.22521, -3.37855e-08)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-8.34135e-09, 1.22521, -3.51429e-08)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-6.88895e-09, 1.22521, -3.65004e-08)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-5.43655e-09, 1.22521, -3.78578e-08)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-3.98416e-09, 1.22521, -3.92152e-08)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-2.53176e-09, 1.22521, -4.05726e-08)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-1.07938e-09, 1.22521, -4.193e-08)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(3.73028e-10, 1.22521, -4.32874e-08)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(1.82542e-09, 1.22521, -4.46448e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(3.27782e-09, 1.22521, -4.60022e-08)
            }
        }
        KeyframeGroup {
            target: frontFoot_l
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.717398, 0.696663, 1.60203e-07, 8.69911e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.785432, 0.618947, -0.000784629, 0.000903544)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.931896, 0.362696, -0.00295959, 0.00340736)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.999585, -0.0275672, -0.00544849, 0.00627255)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.947972, -0.318186, -0.00676118, 0.00778368)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.910085, -0.414281, -0.00708487, 0.0081563)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.947972, -0.318186, -0.00676118, 0.00778368)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.999585, -0.0275674, -0.00544849, 0.00627255)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.931896, 0.362696, -0.00295958, 0.00340736)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.785432, 0.618947, -0.000784628, 0.000903543)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.717398, 0.696663, 1.60203e-07, 8.69911e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.727606, 0.685989, 0.000739271, 0.00285472)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.751339, 0.659841, 0.00250533, 0.0096757)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.778427, 0.627466, 0.00461195, 0.017812)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.799982, 0.599486, 0.00636789, 0.0245939)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.808692, 0.58755, 0.00710002, 0.0274216)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.799982, 0.599486, 0.00636788, 0.0245939)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.778427, 0.627466, 0.00461195, 0.017812)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.751339, 0.659841, 0.00250533, 0.0096757)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.727606, 0.685988, 0.000739272, 0.00285472)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.717398, 0.696663, 1.60203e-07, 8.69911e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.717688, 0.696364, -2.78218e-07, 3.32165e-07)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.719719, 0.694265, -2.68355e-06, 2.64212e-06)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.725213, 0.688525, -9.28948e-06, 8.86411e-06)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.73583, 0.677166, -2.24971e-05, 2.07391e-05)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.753075, 0.657934, -4.43039e-05, 4.05857e-05)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.778115, 0.628122, -7.71126e-05, 7.04446e-05)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.811437, 0.584439, -0.000123203, 0.000112391)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.852273, 0.523097, -0.000184421, 0.000168103)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.897808, 0.440387, -0.000261357, 0.000238117)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.942519, 0.334153, -0.00035207, 0.000320666)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.982861, 0.184345, -0.000466634, 0.000424906)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.999852, -0.0171558, -0.000598802, 0.000545146)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.97404, -0.226373, -0.000710461, 0.000646709)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.924309, -0.381643, -0.000775338, 0.000705702)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.897877, -0.440244, -0.000795315, 0.000723862)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.899521, -0.436876, -0.00079424, 0.000722885)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.904213, -0.42708, -0.000791062, 0.000719996)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.9115, -0.4113, -0.000785783, 0.000715196)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.920839, -0.389941, -0.000778329, 0.000708419)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.931645, -0.363368, -0.000768578, 0.000699552)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.943314, -0.331899, -0.000756366, 0.000688447)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.955248, -0.295803, -0.000741505, 0.000674932)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.966863, -0.255295, -0.00072378, 0.000658812)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.977588, -0.210525, -0.00070295, 0.000639866)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.98686, -0.161574, -0.000678728, 0.000617834)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.994103, -0.108439, -0.000650776, 0.000592408)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.998697, -0.0510294, -0.000618674, 0.000563205)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.999941, 0.0108392, -0.000581897, 0.000529748)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.996997, 0.0774358, -0.000539788, 0.00049144)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.988823, 0.149091, -0.000491536, 0.000447539)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.974195, 0.225709, -0.000436477, 0.000397444)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.9523, 0.305162, -0.000375422, 0.000341891)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.923217, 0.38428, -0.00031034, 0.000282672)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.888137, 0.459578, -0.000244046, 0.000222348)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.849383, 0.527778, -0.000179892, 0.00016397)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.810121, 0.586263, -0.000121329, 0.000110678)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.773921, 0.633282, -7.15198e-05, 6.53502e-05)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.744318, 0.667825, -3.31564e-05, 3.04381e-05)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.72454, 0.689233, -8.24996e-06, 8.33784e-06)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.717398, 0.696663, 1.69616e-07, 1.09821e-07)
            }
        }
        KeyframeGroup {
            target: frontFoot_r
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.11759e-08, 1.19826, 1.04308e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(1.10129e-08, 1.19826, 1.03377e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(1.08499e-08, 1.19826, 1.02445e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(1.06869e-08, 1.19826, 1.01514e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(1.05239e-08, 1.19826, 1.00583e-07)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(1.0361e-08, 1.19826, 9.96515e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(1.0198e-08, 1.19826, 9.87202e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(1.0035e-08, 1.19826, 9.77889e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(9.87202e-09, 1.19826, 9.68575e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(9.70904e-09, 1.19826, 9.59262e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(9.54606e-09, 1.19826, 9.49949e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(9.38307e-09, 1.19826, 9.40636e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(9.22009e-09, 1.19826, 9.31323e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(9.05711e-09, 1.19826, 9.22009e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(8.89413e-09, 1.19826, 9.12696e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(8.73115e-09, 1.19826, 9.03383e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(8.56817e-09, 1.19826, 8.9407e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(8.40519e-09, 1.19826, 8.84756e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(8.24221e-09, 1.19826, 8.75443e-08)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(8.07922e-09, 1.19826, 8.6613e-08)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(7.91624e-09, 1.19826, 8.56817e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(4.49363e-09, 1.19826, 6.61239e-08)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(4.33065e-09, 1.19826, 6.51926e-08)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(4.16767e-09, 1.19826, 6.42613e-08)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(4.00469e-09, 1.19826, 6.33299e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(3.84171e-09, 1.19826, 6.23986e-08)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(3.67872e-09, 1.19826, 6.14673e-08)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(3.51574e-09, 1.19826, 6.0536e-08)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(3.35276e-09, 1.19826, 5.96046e-08)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(3.18978e-09, 1.19826, 5.86733e-08)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(3.0268e-09, 1.19826, 5.7742e-08)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(2.86382e-09, 1.19826, 5.68107e-08)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(2.70084e-09, 1.19826, 5.58794e-08)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(2.53785e-09, 1.19826, 5.4948e-08)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(2.37487e-09, 1.19826, 5.40167e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(2.21189e-09, 1.19826, 5.30854e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(2.04891e-09, 1.19826, 5.21541e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(1.88593e-09, 1.19826, 5.12227e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(1.72295e-09, 1.19826, 5.02914e-08)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(1.55997e-09, 1.19826, 4.93601e-08)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(1.39698e-09, 1.19826, 4.84288e-08)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(1.234e-09, 1.19826, 4.74975e-08)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(1.07102e-09, 1.19826, 4.65661e-08)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(9.08039e-10, 1.19826, 4.56348e-08)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(7.45058e-10, 1.19826, 4.47035e-08)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(5.82077e-10, 1.19826, 4.37722e-08)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(4.19095e-10, 1.19826, 4.28408e-08)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(2.56114e-10, 1.19826, 4.19095e-08)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(9.31326e-11, 1.19826, 4.09782e-08)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-6.98481e-11, 1.19826, 4.00469e-08)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-2.32831e-10, 1.19826, 3.91155e-08)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-3.95812e-10, 1.19826, 3.81842e-08)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-5.58793e-10, 1.19826, 3.72529e-08)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-7.21776e-10, 1.19826, 3.63216e-08)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-8.84756e-10, 1.19826, 3.53903e-08)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-1.04774e-09, 1.19826, 3.44589e-08)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-1.21072e-09, 1.19826, 3.35276e-08)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-1.3737e-09, 1.19826, 3.25963e-08)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-1.53668e-09, 1.19826, 3.1665e-08)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-1.69966e-09, 1.19826, 3.07336e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-1.86265e-09, 1.19826, 2.98023e-08)
            }
        }
        KeyframeGroup {
            target: frontFoot_r
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.713169, 0.686127, 0.106462, -0.0963601)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.723342, 0.67511, 0.107129, -0.0975983)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.746996, 0.648154, 0.108624, -0.100468)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.773997, 0.614833, 0.110226, -0.103728)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.795485, 0.58608, 0.111409, -0.106308)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.804169, 0.573826, 0.111861, -0.107346)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.795485, 0.58608, 0.111409, -0.106308)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.773997, 0.614833, 0.110226, -0.103728)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.746996, 0.648154, 0.108624, -0.100468)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.723342, 0.67511, 0.107129, -0.0975983)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.713169, 0.686127, 0.106462, -0.0963601)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.780031, 0.608769, 0.116607, -0.085762)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.923494, 0.354131, 0.138474, -0.0507381)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.988338, -0.0328195, 0.148671, 0.00276155)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.935739, -0.320408, 0.141092, 0.0427056)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.897757, -0.415387, 0.135489, 0.0559346)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.935739, -0.320408, 0.141092, 0.0427055)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.988338, -0.0328195, 0.148671, 0.00276153)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.923494, 0.354131, 0.138474, -0.0507381)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.780031, 0.608769, 0.116607, -0.0857621)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.713169, 0.686127, 0.106462, -0.0963601)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.71348, 0.685854, 0.106331, -0.096143)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.715481, 0.683769, 0.106603, -0.0958238)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.720893, 0.678063, 0.107353, -0.0949656)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.731349, 0.666775, 0.108808, -0.0932771)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.748328, 0.647664, 0.111172, -0.0904279)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.772973, 0.618045, 0.114599, -0.0860246)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.80575, 0.574663, 0.119148, -0.0795839)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.84588, 0.51377, 0.12469, -0.0705642)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.890562, 0.431713, 0.130801, -0.0584391)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.934317, 0.326381, 0.136694, -0.0429231)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.97355, 0.177955, 0.141724, -0.0211217)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.989444, -0.0215097, 0.143082, 0.00804381)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.962956, -0.228414, 0.138173, 0.0380884)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.913047, -0.381834, 0.130096, 0.0601827)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.886628, -0.439705, 0.125947, 0.0684681)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.888268, -0.436378, 0.126214, 0.067995)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.892954, -0.426705, 0.126956, 0.0666195)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.900233, -0.411122, 0.12811, 0.0643945)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.90957, -0.390028, 0.129593, 0.0613772)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.92038, -0.363781, 0.131318, 0.0576156)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.932067, -0.332694, 0.133198, 0.0531512)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.944036, -0.297029, 0.135142, 0.0480185)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.955709, -0.256998, 0.137066, 0.0422442)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.966522, -0.212746, 0.138885, 0.0358466)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.975916, -0.164351, 0.140516, 0.0288336)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.983321, -0.111808, 0.141877, 0.0212016)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.988125, -0.0550221, 0.142875, 0.0129345)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.989636, 0.00619028, 0.143411, 0.00400265)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.987024, 0.0720998, 0.143364, -0.00563602)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.979261, 0.143039, 0.142583, -0.0160327)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.965135, 0.218918, 0.140892, -0.0271773)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.943833, 0.297638, 0.138162, -0.038763)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.915416, 0.376059, 0.13439, -0.0503284)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.881049, 0.45073, 0.129733, -0.0613628)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.843011, 0.518396, 0.124511, -0.0713824)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.804427, 0.576452, 0.11917, -0.0799972)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.768819, 0.623148, 0.114215, -0.0869412)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.739682, 0.657468, 0.110149, -0.0920537)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.720205, 0.678743, 0.107435, -0.0952412)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.713169, 0.686127, 0.106462, -0.0963601)
            }
        }
        KeyframeGroup {
            target: frontLeg_l
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.031958, -0.383629, 0.919858, -0.075288)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.0311985, -0.385433, 0.919308, -0.0730788)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.0293523, -0.389727, 0.917961, -0.0678171)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.0270839, -0.39484, 0.916286, -0.0615502)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.0251294, -0.399111, 0.914827, -0.0563124)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.0242952, -0.400899, 0.9142, -0.0541198)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.0242683, -0.399169, 0.914944, -0.0543379)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.0245272, -0.395018, 0.91666, -0.0556153)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.0255656, -0.390005, 0.918572, -0.0588962)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.0278693, -0.385693, 0.919903, -0.0651371)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.031958, -0.383629, 0.919858, -0.075288)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.0383304, -0.38779, 0.915286, -0.101988)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.0460539, -0.397756, 0.904355, -0.147685)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.0534411, -0.40881, 0.889328, -0.197772)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.0588989, -0.417296, 0.875133, -0.237775)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.0610175, -0.420644, 0.868788, -0.254052)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.0580949, -0.417511, 0.875601, -0.235865)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.051003, -0.409336, 0.890508, -0.191934)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.042365, -0.398333, 0.905688, -0.138796)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.0350403, -0.388145, 0.916118, -0.0940408)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.031958, -0.383629, 0.919858, -0.075288)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.0319699, -0.383801, 0.919779, -0.075373)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.0264859, -0.384227, 0.920758, -0.0622339)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.01146, -0.384977, 0.922482, -0.0262313)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(-0.0109683, -0.385, 0.922441, 0.027504)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(-0.038421, -0.383244, 0.918122, 0.0932688)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(-0.0682047, -0.379087, 0.908045, 0.164608)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(-0.0975339, -0.372629, 0.892458, 0.234847)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(-0.123905, -0.364718, 0.873401, 0.297991)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(-0.145356, -0.356721, 0.854154, 0.349345)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(-0.160431, -0.35021, 0.838488, 0.385425)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(-0.167837, -0.346731, 0.830111, 0.403142)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(-0.133603, -0.361315, 0.865133, 0.321164)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(-0.0242278, -0.384471, 0.920917, 0.0592153)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.123697, -0.364844, 0.874328, -0.295192)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.222092, -0.314791, 0.75471, -0.531032)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.252459, -0.291014, 0.697827, -0.603832)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.252034, -0.291394, 0.698714, -0.602799)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.250701, -0.292553, 0.701464, -0.599591)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.248392, -0.294527, 0.706164, -0.594044)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.245036, -0.297337, 0.712861, -0.585985)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.240547, -0.300991, 0.721577, -0.575212)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.234819, -0.305491, 0.732316, -0.561469)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.227713, -0.310835, 0.74507, -0.544425)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.219047, -0.317012, 0.759816, -0.523642)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.208581, -0.324004, 0.776507, -0.49855)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.196008, -0.331772, 0.795048, -0.468409)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.180931, -0.340239, 0.815256, -0.432273)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.162854, -0.349261, 0.836785, -0.388954)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.14117, -0.358584, 0.859022, -0.337001)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.115172, -0.367768, 0.880914, -0.274722)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.0841028, -0.3761, 0.900752, -0.200304)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.0416053, -0.383145, 0.917475, -0.0985328)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(-0.0118381, -0.385224, 0.922278, 0.0294258)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(-0.0638583, -0.380088, 0.90981, 0.15395)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(-0.101843, -0.371725, 0.889659, 0.244857)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(-0.116328, -0.367459, 0.879384, 0.279511)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(-0.101614, -0.371805, 0.889809, 0.244287)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(-0.0652452, -0.379887, 0.909234, 0.157235)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(-0.0205897, -0.384908, 0.921351, 0.0503415)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.0166368, -0.385107, 0.921907, -0.0387763)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.0319297, -0.38415, 0.919633, -0.0753896)
            }
        }
        KeyframeGroup {
            target: frontLeg_r
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.0982305, 0.364062, 0.916488, -0.133642)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.0958237, 0.370695, 0.911296, -0.151468)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.0899069, 0.385985, 0.897402, -0.193912)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.0825598, 0.403133, 0.878108, -0.244121)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.0762142, 0.416461, 0.859799, -0.285476)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.0735132, 0.421748, 0.851578, -0.302555)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.0754054, 0.416528, 0.859208, -0.287369)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.0801442, 0.403457, 0.87655, -0.24992)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.0863199, 0.386685, 0.895494, -0.202768)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.0926758, 0.371469, 0.909951, -0.159407)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.0982305, 0.364062, 0.916488, -0.133642)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.102277, 0.36465, 0.917263, -0.12328)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.104729, 0.367981, 0.916543, -0.116497)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.106026, 0.372415, 0.915092, -0.112569)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.106556, 0.376293, 0.913664, -0.110759)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.106702, 0.377955, 0.913012, -0.110339)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.105911, 0.376532, 0.913391, -0.112803)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.103943, 0.373126, 0.914274, -0.11864)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.101646, 0.369039, 0.915259, -0.125613)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.0997925, 0.365587, 0.916026, -0.131471)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.0990823, 0.364093, 0.916338, -0.133955)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.100836, 0.36363, 0.916237, -0.134594)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.105807, 0.365892, 0.916613, -0.121445)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.119709, 0.371798, 0.916585, -0.0854907)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.141597, 0.379642, 0.913666, -0.0322006)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.168505, 0.387488, 0.905743, 0.0330062)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.196933, 0.393802, 0.891798, 0.104085)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.224124, 0.397712, 0.872449, 0.174433)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.247857, 0.399172, 0.85005, 0.238)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.26663, 0.398832, 0.828116, 0.289939)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.279518, 0.397718, 0.810581, 0.32657)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.28575, 0.396887, 0.801296, 0.344604)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.256389, 0.399177, 0.840586, 0.261415)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.154651, 0.383654, 0.910435, -0.000802273)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(-0.000212408, 0.31295, 0.883828, -0.347721)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(-0.115764, 0.229815, 0.7782, -0.572877)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(-0.154248, 0.196026, 0.725794, -0.641096)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(-0.153149, 0.197237, 0.726429, -0.640269)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(-0.151455, 0.198898, 0.728962, -0.637272)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(-0.149114, 0.20102, 0.733487, -0.631944)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(-0.14466, 0.204772, 0.73973, -0.624453)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(-0.138923, 0.209901, 0.747783, -0.61438)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(-0.131658, 0.216288, 0.757678, -0.601506)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(-0.122727, 0.223976, 0.76939, -0.585501)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(-0.111951, 0.23302, 0.782873, -0.565932)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(-0.0990971, 0.243485, 0.798046, -0.542233)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(-0.0838698, 0.255438, 0.814778, -0.513667)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(-0.0658987, 0.268943, 0.832832, -0.479289)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(-0.0447355, 0.284032, 0.851802, -0.437903)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(-0.0198598, 0.300666, 0.870996, -0.388035)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.00928854, 0.318664, 0.889279, -0.327948)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.0432262, 0.337592, 0.904853, -0.255742)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.0881714, 0.359248, 0.915821, -0.156327)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.142395, 0.379883, 0.913507, -0.030289)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.192746, 0.39299, 0.894243, 0.0934696)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.227947, 0.398061, 0.869216, 0.184528)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.241, 0.39894, 0.857103, 0.219408)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.227732, 0.398045, 0.869401, 0.183959)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.194044, 0.39325, 0.893499, 0.0967522)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.151023, 0.382583, 0.911444, -0.00957568)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.113317, 0.369805, 0.917013, -0.0974182)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.0981672, 0.363532, 0.916708, -0.133615)
            }
        }
        KeyframeGroup {
            target: frontUpperLeg_l
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-1.02538e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-1.02561e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-1.02584e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-1.02607e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-1.0263e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-1.02653e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-1.02676e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-1.02699e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-1.02723e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-1.02746e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-1.02769e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-1.02792e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-1.02815e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-1.02838e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-1.02861e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-1.02884e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-1.02907e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-1.0293e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(-1.02953e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-1.02976e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-1.03438e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-1.03461e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-1.03484e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-1.03507e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-1.0353e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-1.03553e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-1.03576e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-1.03599e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-1.03623e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-1.03646e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-1.03669e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-1.03692e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-1.03715e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-1.03738e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-1.03761e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-1.03784e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-1.03807e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-1.0383e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-1.03853e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-1.03876e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-1.03899e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-1.03923e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-1.03946e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-1.03969e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-1.03992e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-1.04015e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-1.04038e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-1.04061e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-1.04084e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-1.04107e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-1.0413e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-1.04153e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-1.04176e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-1.04199e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-1.04223e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-1.04246e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-1.04269e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-1.04292e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-1.04315e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-1.04338e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-1.04361e-14, 1, -3.53903e-08)
            }
        }
        KeyframeGroup {
            target: frontUpperLeg_l
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.718551, -0.579216, -0.241159, -0.300059)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.686618, -0.617004, -0.256418, -0.28655)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.599537, -0.702544, -0.290873, -0.24976)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(-0.479425, 0.790104, 0.325956, 0.199098)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(-0.371458, 0.846752, 0.348471, 0.153619)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(-0.325788, 0.865535, 0.355878, 0.134395)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(-0.358287, 0.852737, 0.34987, 0.14853)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(-0.439556, 0.813929, 0.332526, 0.183678)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.542831, -0.748595, -0.304958, -0.227905)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.64168, -0.664697, -0.271766, -0.269385)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.718551, -0.579216, -0.241159, -0.300059)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.768083, -0.507608, -0.222819, -0.32052)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.796448, -0.453685, -0.217575, -0.335413)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.810945, -0.417167, -0.220605, -0.345938)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.816793, -0.396601, -0.226589, -0.35244)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.817978, -0.390186, -0.229883, -0.354711)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.809478, -0.410779, -0.231582, -0.349823)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.787368, -0.459285, -0.235162, -0.337354)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.757773, -0.515551, -0.238519, -0.321086)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.730552, -0.560832, -0.240533, -0.306439)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.718314, -0.579123, -0.241664, -0.300399)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.718551, -0.579216, -0.241159, -0.300059)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.712739, -0.586353, -0.244139, -0.297639)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.696506, -0.605546, -0.252154, -0.29088)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.671401, -0.633267, -0.263732, -0.280425)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.639138, -0.665815, -0.277327, -0.266988)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.602032, -0.699546, -0.291419, -0.251531)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.563148, -0.731212, -0.30465, -0.235332)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.526157, -0.758265, -0.315956, -0.219919)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(-0.495005, 0.778959, 0.324607, 0.206937)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(-0.473607, 0.792152, 0.330122, 0.19802)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(-0.465684, 0.796835, 0.332081, 0.194718)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(-0.485856, 0.784698, 0.327006, 0.203125)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.533006, -0.753467, -0.313951, -0.222773)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.586877, -0.712308, -0.296751, -0.245218)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.629403, -0.675025, -0.281174, -0.262933)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.646416, -0.658751, -0.274376, -0.270019)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.646224, -0.659009, -0.274237, -0.269993)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.646138, -0.659158, -0.274358, -0.269711)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.645348, -0.659987, -0.274626, -0.269302)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.643772, -0.661563, -0.275231, -0.268589)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.641135, -0.664123, -0.276295, -0.267483)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.637148, -0.667891, -0.277953, -0.265906)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.631501, -0.673063, -0.280355, -0.263807)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.624012, -0.680012, -0.283258, -0.260687)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.614265, -0.688829, -0.286941, -0.256627)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.601893, -0.699665, -0.291469, -0.251473)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.586496, -0.712621, -0.296882, -0.245059)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.567642, -0.727729, -0.303195, -0.237204)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.544873, -0.74493, -0.310383, -0.227717)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.517727, -0.764046, -0.318373, -0.216406)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(-0.485761, 0.784757, 0.327031, 0.203086)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(-0.444828, 0.808663, 0.337026, 0.186027)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(-0.395882, 0.833717, 0.347506, 0.165626)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(-0.347577, 0.854984, 0.356406, 0.145491)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(-0.310331, 0.869196, 0.362356, 0.129964)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(-0.295424, 0.874375, 0.364525, 0.123749)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(-0.345118, 0.85598, 0.356823, 0.144466)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(-0.462615, 0.79862, 0.332827, 0.19344)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.5924, -0.707722, -0.294835, -0.247518)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.685041, -0.618487, -0.257559, -0.286105)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.718551, -0.579216, -0.241159, -0.300059)
            }
        }
        KeyframeGroup {
            target: frontUpperLeg_r
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.02515e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-1.02538e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-1.02561e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-1.02584e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-1.02607e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-1.0263e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-1.02653e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-1.02676e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-1.02699e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-1.02723e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-1.02746e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-1.02769e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-1.02792e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-1.02815e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-1.02838e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-1.02861e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-1.02884e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-1.02907e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-1.0293e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(-1.02953e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-1.02976e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-1.03438e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-1.03461e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-1.03484e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-1.03507e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-1.0353e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-1.03553e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-1.03576e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-1.03599e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-1.03623e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-1.03646e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-1.03669e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-1.03692e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-1.03715e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-1.03738e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-1.03761e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-1.03784e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-1.03807e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-1.0383e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-1.03853e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-1.03876e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-1.03899e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-1.03923e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-1.03946e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-1.03969e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-1.03992e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-1.04015e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-1.04038e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-1.04061e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-1.04084e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-1.04107e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-1.0413e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-1.04153e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-1.04176e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-1.04199e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-1.04223e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-1.04246e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-1.04269e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-1.04292e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-1.04315e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-1.04338e-14, 1, -3.53903e-08)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-1.04361e-14, 1, -3.53903e-08)
            }
        }
        KeyframeGroup {
            target: frontUpperLeg_r
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.718551, -0.579216, 0.241159, 0.300059)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.730552, -0.560832, 0.240533, 0.306439)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.757773, -0.515551, 0.238519, 0.321086)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.787368, -0.459285, 0.235163, 0.337354)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.809478, -0.410779, 0.231582, 0.349823)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.817978, -0.390186, 0.229883, 0.354711)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.816793, -0.396601, 0.22659, 0.35244)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.810945, -0.417167, 0.220606, 0.345939)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.796447, -0.453685, 0.217576, 0.335413)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.768083, -0.507608, 0.22282, 0.32052)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.718551, -0.579216, 0.241159, 0.300059)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.64168, -0.664697, 0.271766, 0.269386)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.542831, -0.748595, 0.304958, 0.227905)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(-0.439556, 0.813929, -0.332526, -0.183678)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(-0.358287, 0.852737, -0.34987, -0.14853)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(-0.325787, 0.865535, -0.355878, -0.134396)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(-0.371458, 0.846752, -0.348471, -0.153619)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(-0.479424, 0.790104, -0.325956, -0.199098)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.599537, -0.702544, 0.290874, 0.24976)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.686618, -0.617004, 0.256419, 0.28655)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.718551, -0.579216, 0.241159, 0.300059)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.712739, -0.586353, 0.244139, 0.297639)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.696506, -0.605546, 0.252154, 0.29088)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.671401, -0.633267, 0.263732, 0.280425)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.639138, -0.665815, 0.277327, 0.266988)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.602032, -0.699546, 0.291419, 0.251531)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.563148, -0.731212, 0.30465, 0.235332)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.526157, -0.758265, 0.315957, 0.219919)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(-0.495004, 0.778959, -0.324607, -0.206938)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(-0.473606, 0.792152, -0.330122, -0.198021)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(-0.465683, 0.796835, -0.332081, -0.194719)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(-0.485856, 0.784698, -0.327006, -0.203125)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.533006, -0.753466, 0.313951, 0.222773)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.586877, -0.712308, 0.296751, 0.245218)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.629403, -0.675025, 0.281175, 0.262933)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.646416, -0.658751, 0.274377, 0.270019)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.646224, -0.659009, 0.274237, 0.269993)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.646138, -0.659158, 0.274359, 0.269712)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.645348, -0.659987, 0.274626, 0.269302)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.643772, -0.661563, 0.275231, 0.268589)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.641135, -0.664123, 0.276295, 0.267483)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.637148, -0.667891, 0.277953, 0.265906)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.631501, -0.673063, 0.280355, 0.263807)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.624012, -0.680012, 0.283258, 0.260687)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.614265, -0.688829, 0.286941, 0.256627)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.601893, -0.699665, 0.291469, 0.251473)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.586496, -0.712621, 0.296882, 0.245059)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.567642, -0.727729, 0.303195, 0.237204)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.544873, -0.74493, 0.310383, 0.227718)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.517727, -0.764046, 0.318373, 0.216406)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(-0.485761, 0.784757, -0.327031, -0.203086)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(-0.444828, 0.808662, -0.337027, -0.186027)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(-0.395882, 0.833717, -0.347506, -0.165627)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(-0.347577, 0.854984, -0.356406, -0.145491)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(-0.310331, 0.869196, -0.362356, -0.129964)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(-0.295423, 0.874375, -0.364526, -0.12375)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(-0.345118, 0.85598, -0.356823, -0.144466)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(-0.462615, 0.79862, -0.332827, -0.19344)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.5924, -0.707722, 0.294835, 0.247518)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.685041, -0.618487, 0.257559, 0.286105)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.718551, -0.579216, 0.241159, 0.300059)
            }
        }
        KeyframeGroup {
            target: pesco_o
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-9.41752e-15, 0.169037, 0)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-4.70876e-15, 0.169037, -1.83187e-15)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-4.59104e-15, 0.169037, -1.87766e-15)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-4.47332e-15, 0.169037, -1.92346e-15)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-4.3556e-15, 0.169037, -1.96926e-15)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-4.23789e-15, 0.169037, -2.01505e-15)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-4.12017e-15, 0.169037, -2.06085e-15)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-4.00245e-15, 0.169037, -2.10665e-15)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-3.88473e-15, 0.169037, -2.15244e-15)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-3.76701e-15, 0.169037, -2.19824e-15)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-3.64929e-15, 0.169037, -2.24404e-15)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-3.53157e-15, 0.169037, -2.28983e-15)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-3.41385e-15, 0.169037, -2.33563e-15)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-3.29613e-15, 0.169037, -2.38143e-15)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-3.17841e-15, 0.169037, -2.42723e-15)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-3.0607e-15, 0.169037, -2.47302e-15)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-2.94298e-15, 0.169037, -2.51882e-15)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-2.82526e-15, 0.169037, -2.56462e-15)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-2.70754e-15, 0.169037, -2.61041e-15)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-2.58982e-15, 0.169037, -2.65621e-15)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-2.4721e-15, 0.169037, -2.70201e-15)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-2.35438e-15, 0.169037, -2.7478e-15)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-2.23666e-15, 0.169037, -2.7936e-15)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-2.11894e-15, 0.169037, -2.8394e-15)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-2.00122e-15, 0.169037, -2.88519e-15)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-1.8835e-15, 0.169037, -2.93099e-15)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-1.76579e-15, 0.169037, -2.97679e-15)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-1.64807e-15, 0.169037, -3.02258e-15)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-1.53035e-15, 0.169037, -3.06838e-15)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-1.41263e-15, 0.169037, -3.11418e-15)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-1.29491e-15, 0.169037, -3.15997e-15)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-1.17719e-15, 0.169037, -3.20577e-15)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-1.05947e-15, 0.169037, -3.25157e-15)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-9.41752e-16, 0.169037, -3.29736e-15)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-8.24033e-16, 0.169037, -3.34316e-15)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-7.06315e-16, 0.169037, -3.38896e-15)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-5.88595e-16, 0.169037, -3.43475e-15)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-4.70877e-16, 0.169037, -3.48055e-15)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-3.53158e-16, 0.169037, -3.52635e-15)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-2.35438e-16, 0.169037, -3.57214e-15)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-1.1772e-16, 0.169037, -3.61794e-15)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(0, 0.169037, -3.66374e-15)
            }
        }
        KeyframeGroup {
            target: pesco_o
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.998334, 0.0576965, 1.19011e-07, -6.87795e-09)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.998162, 0.0605965, 1.1899e-07, -7.22367e-09)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.997653, 0.0684676, 1.1893e-07, -8.16198e-09)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.99679, 0.0800634, 1.18827e-07, -9.5443e-09)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.99556, 0.0941338, 1.1868e-07, -1.12216e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.993995, 0.109428, 1.18493e-07, -1.30448e-08)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.992194, 0.124701, 1.18279e-07, -1.48656e-08)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.990331, 0.138723, 1.18057e-07, -1.65371e-08)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.988643, 0.150281, 1.17855e-07, -1.79148e-08)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.987411, 0.158175, 1.17709e-07, -1.88559e-08)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.986921, 0.161208, 1.1765e-07, -1.92174e-08)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.987141, 0.159854, 1.17676e-07, -1.90561e-08)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.987835, 0.155503, 1.17759e-07, -1.85374e-08)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.988941, 0.148311, 1.17891e-07, -1.768e-08)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.990373, 0.138428, 1.18062e-07, -1.65018e-08)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.99203, 0.126002, 1.18259e-07, -1.50206e-08)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.9938, 0.111185, 1.1847e-07, -1.32543e-08)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.99556, 0.0941317, 1.1868e-07, -1.12214e-08)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.997183, 0.075006, 1.18873e-07, -8.94142e-09)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.998542, 0.0539824, 1.19035e-07, -6.4352e-09)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.999512, 0.0312476, 1.19151e-07, -3.725e-09)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.999976, 0.00700137, 1.19206e-07, -8.34629e-10)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.999828, -0.0185433, 1.19189e-07, 2.21053e-09)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.99898, -0.0451623, 1.19088e-07, 5.38376e-09)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.99736, -0.0726224, 1.18895e-07, 8.65726e-09)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.994918, -0.100685, 1.18604e-07, 1.20026e-08)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.99163, -0.129109, 1.18212e-07, 1.5391e-08)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.987494, -0.157658, 1.17718e-07, 1.87942e-08)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.982531, -0.1861, 1.17127e-07, 2.21849e-08)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.976786, -0.214219, 1.16442e-07, 2.55369e-08)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.970324, -0.24181, 1.15672e-07, 2.8826e-08)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.963087, -0.269192, 1.14809e-07, 3.20901e-08)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.955431, -0.295216, 1.13896e-07, 3.51925e-08)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.948316, -0.317328, 1.13048e-07, 3.78284e-08)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.943014, -0.332752, 1.12416e-07, 3.96671e-08)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.940946, -0.338557, 1.12169e-07, 4.03592e-08)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.954195, -0.299186, 1.13749e-07, 3.56657e-08)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.979432, -0.201776, 1.16757e-07, 2.40536e-08)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.99661, -0.0822653, 1.18805e-07, 9.80679e-09)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.999855, 0.0170332, 1.19192e-07, -2.03051e-09)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.998334, 0.0576965, 1.19011e-07, -6.87795e-09)
            }
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
            target: armature
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(64.5599, 8.34465e-05, 121.264)
            }
        }
        KeyframeGroup {
            target: armature
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            }
        }
        KeyframeGroup {
            target: backFoot_l
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.614063, -0.789253, -1.06166e-08, 0.00241874)
            }
        }
        KeyframeGroup {
            target: backFoot_r
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.614063, -0.789253, -2.21811e-08, -0.00241877)
            }
        }
        KeyframeGroup {
            target: boneMain_001
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.768593, 0.639738, 0, -1.52525e-07)
            }
        }
        KeyframeGroup {
            target: boneMain_002
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.981588, 0.191008, -2.44306e-14, -4.554e-08)
            }
        }
        KeyframeGroup {
            target: costas2
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.999205, -0.0398682, 2.27777e-13, -7.60426e-08)
            }
        }
    }
}
