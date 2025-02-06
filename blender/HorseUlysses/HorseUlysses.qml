import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: material_004_material

    // Resources
    PrincipledMaterial {
        id: material_006_material3
        objectName: "Material.006"
        baseColor: "#ff07cc0f"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: eaer_r
        objectName: "Material.002"
        baseColor: "#ff9c3608"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: material_002_material
        objectName: "Material.004"
        baseColor: "#ff9c3608"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: bone_001
        objectName: "Material.001"
        baseColor: "#ff9c3608"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: material_006_material
        objectName: "Material.003"
        baseColor: "#ff9c3608"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: bone_002
        objectName: "Material.005"
        baseColor: "#ffcc2206"
        roughness: 0.4000000059604645
    }
    PrincipledMaterial {
        id: material_007_material9
        objectName: "Material.007"
        roughness: 0.5
    }
    Skin {
        id: bone_004
        joints: [
            sphere_005_mesh,
            sphere_005,
            material_005_material,
            material_001_material,
            bone,
            rootNode,
            node,
            eaer_r_end,
            bone_00324,
            frontUpperLeg_r25,
            frontLowerLeg_r26,
            frontFoot_r27,
            frontUpperLeg_l29,
            frontLowerLeg_l30,
            frontFoot_l31,
            bone_00733,
            bone_00834,
            bone_00935,
            backUpperLeg_r36,
            backLowerLeg_r37,
            backFoot_r38,
            backUpperLeg_l40,
            backLowerLeg_l41,
            backFoot_l42
        ]
        inverseBindPoses: [
            Qt.matrix4x4(-0.17855, 3.84154e-08, -0.0409195, -0.519027, -0.0337072, -3.76957e-09, 0.216754, -2.21555, 3.66561e-08, 0.181704, 1.15446e-08, -1.77932e-07, 0, 0, 0, 1),
            Qt.matrix4x4(-0.171988, 1.21216e-08, -0.0711657, -0.0613667, -0.0586225, 1.0006e-08, 0.208788, -3.24009, 1.43084e-08, 0.181704, -8.35305e-09, -4.0853e-08, 0, 0, 0, 1),
            Qt.matrix4x4(-0.134633, -4.62075e-08, -0.148136, 1.57389, -0.122026, 1.03067e-07, 0.16344, -3.79766, 3.45858e-08, 0.181704, -1.31981e-07, 2.29317e-06, 0, 0, 0, 1),
            Qt.matrix4x4(0.104452, -3.23186e-08, -0.180495, 4.08196, -0.148682, -1.47637e-08, -0.126801, 1.07766, 6.10436e-09, 0.181704, -4.40094e-08, 4.55936e-07, 0, 0, 0, 1),
            Qt.matrix4x4(-0.170559, 0.062005, -0.0109673, -1.17796, 0.0426827, 0.134148, 0.139469, -2.1595, 0.0458739, 0.105718, -0.170543, 3.43114, 0, 0, 0, 1),
            Qt.matrix4x4(-0.171424, 0.0565698, -0.0251742, -0.895796, -0.0208334, 0.00302797, 0.219097, -4.42829, 0.0565344, 0.172647, 0.00440595, -0.0435775, 0, 0, 0, 1),
            Qt.matrix4x4(0.170559, 0.062005, 0.0109673, 1.17796, 0.0426828, -0.134148, 0.139469, -2.1595, 0.0458739, -0.105718, -0.170543, 3.43114, 0, 0, 0, 1),
            Qt.matrix4x4(0.171424, 0.0565699, 0.0251742, 0.895794, -0.0208335, -0.00302795, 0.219097, -4.42829, 0.0565344, -0.172647, 0.00440596, -0.0435769, 0, 0, 0, 1),
            Qt.matrix4x4(-2.54201e-07, -0.181704, 1.91817e-07, -2.8549e-06, -0.081641, -2.69468e-08, -0.197064, 1.44513, 0.162331, -2.98092e-07, -0.0991095, 1.75774, 0, 0, 0, 1),
            Qt.matrix4x4(-0.119396, -0.120236, -0.0796463, -0.175819, -0.072752, 0.129412, -0.127184, 0.468817, 0.116053, -0.0425728, -0.161671, 1.92165, 0, 0, 0, 1),
            Qt.matrix4x4(-0.000413372, -0.181624, 0.00653838, 0.591131, 5.17802e-05, -0.00538609, -0.220486, 1.12568, 0.181704, -0.000411678, 7.76981e-05, 1.50904, 0, 0, 0, 1),
            Qt.matrix4x4(0.00536095, -0.18155, 0.00633862, 0.638937, -0.180737, -0.00584854, -0.0215957, -1.46573, 0.0179424, -0.00466876, -0.219432, 0.313587, 0, 0, 0, 1),
            Qt.matrix4x4(0.119396, -0.120236, 0.0796463, 0.17582, -0.0727519, -0.129412, -0.127184, 0.468818, 0.116053, 0.0425729, -0.161671, 1.92165, 0, 0, 0, 1),
            Qt.matrix4x4(0.000413392, -0.181624, -0.0065384, -0.59113, 5.18663e-05, 0.0053861, -0.220486, 1.12568, 0.181704, 0.000411682, 7.7773e-05, 1.50904, 0, 0, 0, 1),
            Qt.matrix4x4(-0.00536093, -0.18155, -0.0063386, -0.638937, -0.180737, 0.00584852, -0.0215956, -1.46573, 0.0179424, 0.00466875, -0.219432, 0.313587, 0, 0, 0, 1),
            Qt.matrix4x4(4.08437e-09, -0.181704, -2.54521e-08, 5.09973e-07, 0.181693, 4.32235e-09, -0.00250649, 0.944602, 0.00206471, -2.09183e-08, 0.220569, -2.07022, 0, 0, 0, 1),
            Qt.matrix4x4(1.57691e-09, -0.181704, -9.41778e-09, 3.87753e-07, 0.179849, 2.66654e-09, -0.0314396, 0.35109, 0.0258983, -7.4539e-09, 0.218331, -2.0418, 0, 0, 0, 1),
            Qt.matrix4x4(-6.31012e-09, -0.181704, 3.75277e-08, 5.75342e-09, -0.085913, -2.4256e-08, -0.194369, 2.22298, 0.160111, -2.01766e-08, -0.104296, -0.136718, 0, 0, 0, 1),
            Qt.matrix4x4(-0.0773909, -0.125151, -0.129413, 1.28189, -0.0740995, 0.131732, -0.122438, 1.21742, 0.146753, 0.000516311, -0.130069, 0.107774, 0, 0, 0, 1),
            Qt.matrix4x4(-0.0825563, -0.152798, -0.0648485, 1.09904, 0.0987111, -5.02173e-08, -0.185195, 0.521058, 0.128285, -0.0983316, 0.100769, -0.545961, 0, 0, 0, 1),
            Qt.matrix4x4(-0.00483018, -0.152798, 0.119227, 0.464535, -0.181485, 4.53544e-08, -0.0108353, 1.14927, 0.0075056, -0.0983317, -0.185268, 0.44, 0, 0, 0, 1),
            Qt.matrix4x4(0.077391, -0.125151, 0.129413, -1.28189, -0.0740995, -0.131732, -0.122438, 1.21742, 0.146753, -0.000516276, -0.130069, 0.107774, 0, 0, 0, 1),
            Qt.matrix4x4(0.0825563, -0.152798, 0.0648486, -1.09904, 0.0987111, 7.39946e-08, -0.185195, 0.521058, 0.128285, 0.0983316, 0.100769, -0.545962, 0, 0, 0, 1),
            Qt.matrix4x4(0.00483017, -0.152798, -0.119227, -0.464534, -0.181485, -1.92469e-08, -0.0108353, 1.14927, 0.00750559, 0.0983317, -0.185268, 0.439999, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: light_light
        objectName: "RootNode"
        Model {
            id: material_003_material
            objectName: "Sphere.005"
            position: Qt.vector3d(21.818, 1.19209e-05, -21.818)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            scale: Qt.vector3d(18.1704, 18.1704, 22.0583)
            source: "meshes/skin.mesh"
            skin: bone_004
            materials: [
                material_006_material3,
                eaer_r,
                material_002_material,
                bone_001,
                material_006_material,
                bone_002,
                material_007_material9
            ]
        }
        Node {
            id: armature12
            objectName: "Armature"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            Node {
                id: sphere_005_mesh
                objectName: "Bone"
                position: Qt.vector3d(0.218179, -0.702837, 2.08082)
                rotation: Qt.quaternion(-0.451247, -0.544405, 0.451247, 0.544405)
                scale: Qt.vector3d(1, 1, 1)
                Node {
                    id: sphere_005
                    objectName: "Bone.001"
                    position: Qt.vector3d(-2.70829e-09, 0.983288, 3.46046e-09)
                    rotation: Qt.quaternion(0.991768, -1.37661e-09, 7.48169e-08, -0.12805)
                    Node {
                        id: material_005_material
                        objectName: "Bone.004"
                        position: Qt.vector3d(-8.79463e-08, 0.870333, -1.66281e-08)
                        rotation: Qt.quaternion(0.979283, 2.69766e-07, 9.41738e-08, -0.202498)
                        Node {
                            id: material_001_material
                            objectName: "Bone.002"
                            position: Qt.vector3d(4.59113e-07, 0.119812, -8.14029e-09)
                            rotation: Qt.quaternion(0.74953, -9.99856e-08, -1.89496e-07, -0.661971)
                            Node {
                                id: camera_camera
                                objectName: "Bone.002_end"
                                position: Qt.vector3d(0, 1.17227, 0)
                            }
                        }
                        Node {
                            id: bone
                            objectName: "lowerEaer.r"
                            position: Qt.vector3d(4.59113e-07, 0.119812, -8.14029e-09)
                            rotation: Qt.quaternion(0.809541, 0.45726, -0.00280553, 0.36817)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: rootNode
                                objectName: "eaer.r"
                                position: Qt.vector3d(2.23517e-07, 0.533794, 4.17233e-07)
                                rotation: Qt.quaternion(0.898161, -0.438224, 2.20864e-07, -0.0355864)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: bone_002_end
                                    objectName: "eaer.r_end"
                                    position: Qt.vector3d(0, 0.337835, 0)
                                }
                            }
                        }
                        Node {
                            id: node
                            objectName: "lowerEaer.l"
                            position: Qt.vector3d(4.59113e-07, 0.119812, -3.06164e-07)
                            rotation: Qt.quaternion(-0.00280561, -0.36817, 0.809541, -0.45726)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: eaer_r_end
                                objectName: "eaer.l"
                                position: Qt.vector3d(5.96046e-08, 0.533794, -1.78814e-07)
                                rotation: Qt.quaternion(0.898161, -0.438224, -1.52428e-07, 0.0355865)
                                Node {
                                    id: lowerEaer_l
                                    objectName: "eaer.l_end"
                                    position: Qt.vector3d(0, 0.337836, 0)
                                }
                            }
                        }
                    }
                }
            }
            Node {
                id: bone_00324
                objectName: "Bone.003"
                position: Qt.vector3d(0.218179, -0.702837, 2.08082)
                rotation: Qt.quaternion(0.524735, -0.851266, 3.99435e-07, -7.56982e-07)
                Node {
                    id: frontUpperLeg_r25
                    objectName: "frontUpperLeg.r"
                    position: Qt.vector3d(-3.45381e-10, 0.52112, -1.04191e-07)
                    rotation: Qt.quaternion(0.907786, -0.113221, 0.170284, 0.366208)
                    scale: Qt.vector3d(1, 1, 1)
                    Node {
                        id: frontLowerLeg_r26
                        objectName: "frontLowerLeg.r"
                        position: Qt.vector3d(-1.49012e-08, 0.881278, -2.6077e-07)
                        rotation: Qt.quaternion(0.839655, 0.348314, -0.260388, -0.325355)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: frontFoot_r27
                            objectName: "frontFoot.r"
                            position: Qt.vector3d(8.84756e-09, 0.95746, -6.65896e-08)
                            rotation: Qt.quaternion(0.729634, -0.683641, -0.0125956, -0.0104927)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: frontFoot_r_end28
                                objectName: "frontFoot.r_end"
                                position: Qt.vector3d(0, 0.610439, 0)
                            }
                        }
                    }
                }
                Node {
                    id: frontUpperLeg_l29
                    objectName: "frontUpperLeg.l"
                    position: Qt.vector3d(-1.19555e-07, 0.52112, -1.04191e-07)
                    rotation: Qt.quaternion(0.896635, -0.164016, -0.196722, -0.361173)
                    scale: Qt.vector3d(1, 1, 1)
                    Node {
                        id: frontLowerLeg_l30
                        objectName: "frontLowerLeg.l"
                        position: Qt.vector3d(-1.62981e-08, 0.881278, 8.9407e-08)
                        rotation: Qt.quaternion(0.834057, 0.361974, 0.265219, 0.32091)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: frontFoot_l31
                            objectName: "frontFoot.l"
                            position: Qt.vector3d(6.00703e-08, 0.957459, 4.34229e-08)
                            rotation: Qt.quaternion(0.773426, -0.633783, 0.0103038, 0.00494452)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: frontFoot_l_end32
                                objectName: "frontFoot.l_end"
                                position: Qt.vector3d(0, 0.610439, 0)
                            }
                        }
                    }
                }
            }
            Node {
                id: bone_00733
                objectName: "Bone.007"
                position: Qt.vector3d(0.218179, -0.702837, 2.08082)
                rotation: Qt.quaternion(0.999984, -0.0056816, 5.78426e-08, -2.61817e-08)
                Node {
                    id: bone_00834
                    objectName: "Bone.008"
                    position: Qt.vector3d(-2.40182e-08, 0.864583, -1.75861e-07)
                    rotation: Qt.quaternion(0.997834, -0.0657792, -3.57051e-08, -9.68201e-09)
                    Node {
                        id: bone_00935
                        objectName: "Bone.009"
                        position: Qt.vector3d(5.08313e-09, 1.24069, -1.52615e-07)
                        rotation: Qt.quaternion(0.573411, -0.819268, -2.85966e-08, -1.0477e-07)
                        Node {
                            id: backUpperLeg_r36
                            objectName: "backUpperLeg.r"
                            position: Qt.vector3d(2.00588e-08, 0.457115, -1.69875e-07)
                            rotation: Qt.quaternion(0.913887, -0.0893921, 0.03712, 0.39426)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: backLowerLeg_r37
                                objectName: "backLowerLeg.r"
                                position: Qt.vector3d(1.19209e-07, 0.867259, 1.46683e-08)
                                rotation: Qt.quaternion(0.790546, 0.58906, 0.00211737, -0.167458)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: backFoot_r38
                                    objectName: "backFoot.r"
                                    position: Qt.vector3d(0, 0.994622, 4.47035e-08)
                                    rotation: Qt.quaternion(0.546184, -0.704383, -0.00174386, -0.453348)
                                    Node {
                                        id: backFoot_r_end39
                                        objectName: "backFoot.r_end"
                                        position: Qt.vector3d(0, 0.599999, 0)
                                    }
                                }
                            }
                        }
                        Node {
                            id: backUpperLeg_l40
                            objectName: "backUpperLeg.l"
                            position: Qt.vector3d(-3.07767e-07, 0.457115, -1.69875e-07)
                            rotation: Qt.quaternion(0.913673, -0.0320845, -0.00749407, -0.405112)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: backLowerLeg_l41
                                objectName: "backLowerLeg.l"
                                position: Qt.vector3d(-5.96046e-08, 0.867258, 5.12227e-08)
                                rotation: Qt.quaternion(0.79885, 0.572553, -0.0217287, 0.183167)
                                Node {
                                    id: backFoot_l42
                                    objectName: "backFoot.l"
                                    position: Qt.vector3d(-7.45058e-09, 0.994622, -8.9407e-08)
                                    rotation: Qt.quaternion(0.522798, -0.717164, 0.00667195, 0.460775)
                                    scale: Qt.vector3d(1, 1, 1)
                                    Node {
                                        id: backFoot_l_end43
                                        objectName: "backFoot.l_end"
                                        position: Qt.vector3d(0, 0.599999, 0)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // Animations:
    Timeline {
        id: armature_ArmatureAction_timeline1
        objectName: "armature_ArmatureAction_timeline1"
        property real framesPerSecond: 24
        startFrame: 0
        endFrame: 3334
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 3334
            from: 0
            to: 3334
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: sphere_005
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.991765, 1.30421e-08, 6.52168e-08, -0.128067)
            }
        }
        KeyframeGroup {
            target: material_001_material
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.60704e-07, 0.119812, -2.4511e-08)
            }
        }
        KeyframeGroup {
            target: material_005_material
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-3.16901e-08, 0.870333, 9.47971e-10)
            }
        }
        KeyframeGroup {
            target: backFoot_l42
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.11759e-08, 0.994622, 8.9407e-08)
            }
        }
        KeyframeGroup {
            target: backFoot_l42
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(-0.499322, 0.728585, 5.11305e-08, -0.468872)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.502625, -0.72699, 0.00016611, 0.467818)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.512096, -0.722348, 0.000671649, 0.464726)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.52691, -0.714792, 0.00128936, 0.459823)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.546184, -0.704383, 0.00174399, 0.453348)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.569557, -0.691155, 0.00263556, 0.444862)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.596032, -0.675168, 0.00366459, 0.434604)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.624741, -0.656539, 0.0048046, 0.422649)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.654775, -0.635485, 0.00602685, 0.409136)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.685223, -0.612341, 0.00729975, 0.394279)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.715205, -0.587571, 0.00859053, 0.378376)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.743923, -0.561763, 0.00986608, 0.361806)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.770699, -0.535603, 0.0110949, 0.345006)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.795002, -0.509839, 0.0122483, 0.32846)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.816453, -0.485249, 0.0133011, 0.312666)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.83482, -0.4626, 0.0142327, 0.298118)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.849981, -0.442626, 0.0150256, 0.285287)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.861887, -0.426017, 0.0156658, 0.274618)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.870514, -0.413415, 0.0161404, 0.266521)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.875806, -0.405425, 0.0164363, 0.261389)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.877623, -0.402634, 0.0165388, 0.259595)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.875806, -0.405425, 0.0164363, 0.261389)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.870514, -0.413415, 0.0161404, 0.266522)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.861887, -0.426017, 0.0156658, 0.274618)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.849981, -0.442626, 0.0150256, 0.285287)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.83482, -0.4626, 0.0142327, 0.298118)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.816453, -0.485249, 0.0133011, 0.312666)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.795002, -0.509839, 0.0122482, 0.32846)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.770699, -0.535603, 0.0110949, 0.345006)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.743923, -0.561763, 0.00986609, 0.361806)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.715205, -0.587571, 0.00859052, 0.378376)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.685223, -0.612341, 0.00729977, 0.394279)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.654775, -0.635485, 0.00602673, 0.409136)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.624741, -0.656539, 0.0048047, 0.422649)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.596032, -0.675168, 0.00366454, 0.434604)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.569557, -0.691155, 0.00263566, 0.444862)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.546184, -0.704383, 0.00174405, 0.453349)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.526929, -0.714792, 0.00131957, 0.459801)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.512135, -0.722348, 0.000732583, 0.464683)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.502685, -0.72699, 0.000258103, 0.467754)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(-0.499401, 0.728585, -0.00012301, -0.468788)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.500966, -0.72781, 0.000463544, 0.468322)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.505666, -0.725575, 0.00179197, 0.466734)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.513064, -0.721993, 0.00389205, 0.464194)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.522798, -0.717164, 0.00667192, 0.460775)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.534493, -0.711183, 0.0100385, 0.456547)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.547772, -0.704146, 0.0138967, 0.451586)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.562255, -0.696166, 0.0181492, 0.445974)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.577561, -0.687372, 0.0226964, 0.439804)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.593319, -0.677915, 0.0274363, 0.433187)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.609165, -0.667974, 0.0322659, 0.426248)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.624754, -0.657752, 0.0370819, 0.419129)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.639763, -0.647475, 0.0417821, 0.411988)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.653892, -0.637389, 0.046267, 0.404994)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.666868, -0.627757, 0.0504398, 0.398328)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.678443, -0.618851, 0.0542077, 0.392174)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.688389, -0.610952, 0.0574815, 0.386723)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.696494, -0.604338, 0.0601752, 0.382165)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.702553, -0.599287, 0.0622044, 0.378687)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.706357, -0.596069, 0.0634853, 0.376472)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.707679, -0.594941, 0.0639318, 0.375696)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.706357, -0.596069, 0.0634852, 0.376472)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.702554, -0.599287, 0.0622044, 0.378687)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.696494, -0.604338, 0.0601752, 0.382165)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.688389, -0.610952, 0.0574816, 0.386723)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.678443, -0.618851, 0.0542077, 0.392174)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.666868, -0.627757, 0.0504397, 0.398328)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.653892, -0.637389, 0.046267, 0.404994)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.639763, -0.647475, 0.0417821, 0.411988)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.624754, -0.657752, 0.0370819, 0.419129)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.609165, -0.667974, 0.0322659, 0.426248)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.593319, -0.677915, 0.0274363, 0.433187)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.577562, -0.687372, 0.0226964, 0.439804)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.562255, -0.696166, 0.0181493, 0.445974)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.547772, -0.704146, 0.0138967, 0.451586)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.534493, -0.711183, 0.0100384, 0.456547)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.522798, -0.717164, 0.00667192, 0.460775)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.513065, -0.721993, 0.003892, 0.464194)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.505666, -0.725575, 0.0017918, 0.466734)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.500966, -0.72781, 0.000463544, 0.468322)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(-0.499322, 0.728585, 5.11305e-08, -0.468872)
            }
        }
        KeyframeGroup {
            target: backFoot_r38
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.11759e-08, 0.994622, 1.19209e-07)
            }
        }
        KeyframeGroup {
            target: backFoot_r38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(-0.499322, 0.728585, -1.8407e-07, 0.468872)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.500966, -0.72781, -0.000463514, -0.468322)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.505666, -0.725574, -0.00179171, -0.466734)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.513065, -0.721993, -0.00389196, -0.464194)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.522798, -0.717164, -0.0066718, -0.460774)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.534493, -0.711183, -0.0100382, -0.456547)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.547772, -0.704146, -0.0138964, -0.451587)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.562255, -0.696166, -0.0181492, -0.445974)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.577562, -0.687371, -0.0226963, -0.439804)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.593319, -0.677915, -0.0274363, -0.433187)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.609165, -0.667974, -0.0322658, -0.426248)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.624754, -0.657752, -0.0370818, -0.419129)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.639763, -0.647475, -0.0417821, -0.411988)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.653892, -0.637389, -0.0462669, -0.404994)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.666868, -0.627756, -0.0504396, -0.398328)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.678443, -0.618851, -0.0542076, -0.392174)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.688389, -0.610951, -0.0574814, -0.386723)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.696494, -0.604338, -0.0601751, -0.382165)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.702554, -0.599287, -0.0622043, -0.378687)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.706357, -0.596069, -0.0634851, -0.376472)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.707679, -0.594941, -0.0639317, -0.375696)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.706357, -0.596069, -0.0634851, -0.376472)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.702554, -0.599287, -0.0622043, -0.378687)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.696494, -0.604338, -0.0601751, -0.382165)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.688389, -0.610951, -0.0574815, -0.386723)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.678443, -0.618851, -0.0542076, -0.392174)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.666868, -0.627756, -0.0504396, -0.398328)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.653892, -0.637389, -0.0462669, -0.404994)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.639763, -0.647474, -0.041782, -0.411988)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.624754, -0.657752, -0.0370817, -0.419129)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.609165, -0.667974, -0.0322658, -0.426248)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.593319, -0.677915, -0.0274361, -0.433187)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.577562, -0.687371, -0.0226964, -0.439804)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.562255, -0.696166, -0.0181491, -0.445974)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.547772, -0.704146, -0.0138966, -0.451587)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.534493, -0.711183, -0.0100382, -0.456547)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.522798, -0.717164, -0.00667174, -0.460774)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.513065, -0.721993, -0.00389196, -0.464194)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.505666, -0.725574, -0.0017918, -0.466734)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.500966, -0.72781, -0.000463454, -0.468322)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(-0.499343, 0.728585, 3.29894e-05, 0.46885)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.502569, -0.72699, -7.84835e-05, -0.467878)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.511963, -0.722349, -0.00046488, -0.464873)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.526844, -0.714792, -0.00118696, -0.459898)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.546184, -0.704383, -0.00174383, -0.453349)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.569557, -0.691155, -0.00263548, -0.444862)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.596032, -0.675168, -0.00366436, -0.434604)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.624741, -0.656539, -0.00480443, -0.422649)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.654775, -0.635485, -0.00602664, -0.409136)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.685223, -0.61234, -0.00729963, -0.394279)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.715205, -0.587571, -0.00859035, -0.378376)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.743923, -0.561763, -0.00986597, -0.361806)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.770699, -0.535603, -0.0110948, -0.345006)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.795002, -0.509839, -0.0122481, -0.32846)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.816453, -0.485249, -0.013301, -0.312666)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.83482, -0.462599, -0.0142326, -0.298118)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.849981, -0.442626, -0.0150256, -0.285287)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.861887, -0.426017, -0.0156657, -0.274618)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.870514, -0.413414, -0.0161403, -0.266522)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.875806, -0.405425, -0.0164363, -0.261389)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.877623, -0.402634, -0.0165387, -0.259595)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.875806, -0.405425, -0.0164362, -0.261389)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.870514, -0.413414, -0.0161403, -0.266522)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.861887, -0.426017, -0.0156657, -0.274618)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.849981, -0.442626, -0.0150255, -0.285287)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.83482, -0.4626, -0.0142325, -0.298118)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.816454, -0.485249, -0.013301, -0.312666)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.795002, -0.509839, -0.0122481, -0.32846)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.770699, -0.535603, -0.0110948, -0.345006)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.743923, -0.561763, -0.00986596, -0.361806)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.715205, -0.587571, -0.00859035, -0.378376)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.685223, -0.61234, -0.00729965, -0.394279)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.654775, -0.635485, -0.00602669, -0.409136)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.624741, -0.656539, -0.00480446, -0.422649)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.596032, -0.675168, -0.00366441, -0.434604)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.569557, -0.691155, -0.0026355, -0.444862)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.546184, -0.704383, -0.00174386, -0.453349)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.52691, -0.714792, -0.00128919, -0.459823)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.512096, -0.722348, -0.000671416, -0.464726)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.502625, -0.72699, -0.000165754, -0.467818)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(-0.499322, 0.728585, -1.8407e-07, 0.468872)
            }
        }
        KeyframeGroup {
            target: backLowerLeg_l41
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.49012e-07, 0.867258, 1.27591e-07)
            }
        }
        KeyframeGroup {
            target: backLowerLeg_l41
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.788821, 0.591907, 1.03897e-07, 0.165555)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.789205, 0.591338, -0.000173084, 0.165757)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.789539, 0.590785, -0.000594497, 0.166135)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.78983, 0.590245, -0.00123669, 0.166667)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.790546, 0.58906, -0.00211724, 0.167458)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.791406, 0.587625, -0.00318111, 0.168413)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.792386, 0.58598, -0.00439771, 0.169504)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.793459, 0.584166, -0.00573657, 0.170704)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.794598, 0.582223, -0.00716711, 0.171984)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.795779, 0.580192, -0.00865865, 0.173318)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.796975, 0.578113, -0.0101808, 0.174677)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.798165, 0.576028, -0.0117027, 0.176034)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.799322, 0.57398, -0.013194, 0.177363)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.800425, 0.57201, -0.0146241, 0.178635)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.801451, 0.570162, -0.0159623, 0.179824)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.802377, 0.56848, -0.0171783, 0.180904)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.803184, 0.567005, -0.0182415, 0.181847)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.803848, 0.565783, -0.0191214, 0.182627)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.804359, 0.564855, -0.0198158, 0.183177)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.804235, 0.564882, -0.0200694, 0.183606)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.804276, 0.564878, -0.0201966, 0.183425)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.804379, 0.564853, -0.0198793, 0.183086)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.803848, 0.565783, -0.0191214, 0.182627)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.803184, 0.567005, -0.0182415, 0.181847)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.802377, 0.56848, -0.0171783, 0.180904)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.801451, 0.570162, -0.0159623, 0.179824)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.800425, 0.57201, -0.0146241, 0.178635)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.799322, 0.57398, -0.0131941, 0.177363)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.798165, 0.576028, -0.0117028, 0.176034)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.796975, 0.578113, -0.0101807, 0.174677)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.795779, 0.580192, -0.00865869, 0.173318)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.794598, 0.582223, -0.00716709, 0.171984)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.793459, 0.584166, -0.00573657, 0.170704)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.792386, 0.58598, -0.00439772, 0.169504)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.791406, 0.587625, -0.00318106, 0.168413)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.790546, 0.58906, -0.00211726, 0.167458)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.78983, 0.590245, -0.00123669, 0.166667)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.789408, 0.59097, -0.000581619, 0.1661)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.788942, 0.591708, -0.000147493, 0.165688)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.788821, 0.591907, 1.03897e-07, 0.165555)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.789548, 0.590588, -0.00150689, 0.166783)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.791607, 0.58679, -0.00582701, 0.170298)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.794787, 0.580717, -0.012665, 0.175846)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.79885, 0.572553, -0.0217286, 0.183167)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.803545, 0.562479, -0.0327211, 0.191997)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.808619, 0.550681, -0.0453361, 0.202065)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.813826, 0.537371, -0.0592547, 0.213092)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.81894, 0.522789, -0.0741448, 0.224791)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.823763, 0.507212, -0.0896631, 0.236879)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.828135, 0.490952, -0.10546, 0.24907)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.831944, 0.474358, -0.121185, 0.261092)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.835121, 0.457805, -0.136494, 0.272685)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.837651, 0.441691, -0.151055, 0.283607)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.839559, 0.426425, -0.164553, 0.293641)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.840909, 0.41242, -0.176694, 0.30259)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.841794, 0.400086, -0.187201, 0.310274)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.842319, 0.389826, -0.195814, 0.316531)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.842593, 0.38203, -0.202282, 0.321205)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.842712, 0.377081, -0.206355, 0.324136)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.842743, 0.37535, -0.207774, 0.325155)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.842712, 0.377081, -0.206355, 0.324136)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.842593, 0.38203, -0.202282, 0.321205)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.842319, 0.389826, -0.195814, 0.316531)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.841794, 0.400086, -0.187201, 0.310274)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.840909, 0.41242, -0.176694, 0.30259)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.839559, 0.426425, -0.164553, 0.293641)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.837651, 0.441691, -0.151055, 0.283607)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.835121, 0.457805, -0.136494, 0.272685)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.831944, 0.474358, -0.121185, 0.261092)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.828135, 0.490952, -0.10546, 0.24907)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.823763, 0.507212, -0.0896631, 0.236879)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.81894, 0.522789, -0.0741447, 0.224791)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.813826, 0.537371, -0.0592547, 0.213092)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.808619, 0.550681, -0.045336, 0.202065)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.803545, 0.562479, -0.032721, 0.191997)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.79885, 0.572553, -0.0217287, 0.183167)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.794787, 0.580717, -0.0126651, 0.175846)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.791607, 0.58679, -0.00582697, 0.170298)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.789548, 0.590588, -0.00150693, 0.166783)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.788821, 0.591907, 1.03897e-07, 0.165555)
            }
        }
        KeyframeGroup {
            target: backLowerLeg_r37
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.19209e-07, 0.867258, 6.51926e-09)
            }
        }
        KeyframeGroup {
            target: backLowerLeg_r37
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.788821, 0.591907, 2.83356e-08, -0.165555)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.789548, 0.590588, 0.00150705, -0.166783)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.791608, 0.586789, 0.00582713, -0.170298)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.794787, 0.580716, 0.0126652, -0.175846)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.79885, 0.572553, 0.0217287, -0.183167)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.803545, 0.562479, 0.0327212, -0.191997)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.808619, 0.550681, 0.0453362, -0.202065)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.813826, 0.537371, 0.0592548, -0.213092)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.81894, 0.522789, 0.0741449, -0.224792)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.823763, 0.507212, 0.0896633, -0.236879)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.828135, 0.490952, 0.10546, -0.24907)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.831944, 0.474357, 0.121185, -0.261092)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.835121, 0.457805, 0.136494, -0.272685)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.837651, 0.441691, 0.151055, -0.283607)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.839559, 0.426425, 0.164553, -0.293642)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.840909, 0.41242, 0.176694, -0.30259)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.841794, 0.400086, 0.187201, -0.310274)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.842319, 0.389825, 0.195814, -0.316531)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.842593, 0.38203, 0.202282, -0.321205)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.842712, 0.377081, 0.206355, -0.324136)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.842743, 0.37535, 0.207774, -0.325155)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.842712, 0.377081, 0.206355, -0.324136)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.842593, 0.38203, 0.202282, -0.321205)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.842319, 0.389825, 0.195814, -0.316531)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.841794, 0.400086, 0.187201, -0.310274)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.840909, 0.41242, 0.176694, -0.30259)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.839559, 0.426424, 0.164553, -0.293641)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.837651, 0.441691, 0.151055, -0.283607)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.835121, 0.457805, 0.136494, -0.272685)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.831944, 0.474357, 0.121185, -0.261092)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.828135, 0.490952, 0.10546, -0.24907)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.823763, 0.507212, 0.0896632, -0.236879)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.81894, 0.522789, 0.0741449, -0.224792)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.813826, 0.537371, 0.0592548, -0.213092)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.808619, 0.550681, 0.0453361, -0.202065)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.803545, 0.562479, 0.0327211, -0.191997)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.79885, 0.572553, 0.0217288, -0.183167)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.794787, 0.580716, 0.0126652, -0.175846)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.791608, 0.58679, 0.00582707, -0.170298)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.789548, 0.590588, 0.00150705, -0.166783)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.788821, 0.591907, 2.83356e-08, -0.165555)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.789205, 0.591338, 0.000173254, -0.165757)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.789539, 0.590785, 0.000594648, -0.166135)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.78983, 0.590245, 0.00123678, -0.166667)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.790546, 0.589059, 0.00211736, -0.167458)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.791406, 0.587625, 0.00318123, -0.168413)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.792386, 0.58598, 0.00439786, -0.169504)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.793459, 0.584166, 0.00573669, -0.170704)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.794598, 0.582223, 0.00716727, -0.171984)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.795779, 0.580192, 0.0086588, -0.173318)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.796975, 0.578113, 0.0101808, -0.174677)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.798165, 0.576028, 0.0117029, -0.176034)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.799322, 0.57398, 0.0131942, -0.177363)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.800425, 0.57201, 0.0146242, -0.178635)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.801451, 0.570162, 0.0159625, -0.179824)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.802378, 0.568479, 0.0171784, -0.180904)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.803184, 0.567005, 0.0182416, -0.181847)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.803848, 0.565782, 0.0191215, -0.182627)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.804359, 0.564855, 0.0198159, -0.183177)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.804235, 0.564882, 0.0200696, -0.183606)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.804277, 0.564877, 0.0201967, -0.183425)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.804379, 0.564852, 0.0198795, -0.183086)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.803848, 0.565782, 0.0191215, -0.182627)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.803184, 0.567005, 0.0182416, -0.181847)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.802378, 0.568479, 0.0171784, -0.180904)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.801451, 0.570162, 0.0159625, -0.179824)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.800425, 0.57201, 0.0146242, -0.178635)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.799322, 0.57398, 0.0131942, -0.177363)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.798165, 0.576028, 0.0117028, -0.176034)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.796975, 0.578113, 0.0101809, -0.174677)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.795779, 0.580192, 0.00865881, -0.173318)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.794598, 0.582223, 0.00716722, -0.171984)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.793459, 0.584166, 0.00573669, -0.170704)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.792386, 0.58598, 0.00439787, -0.169504)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.791406, 0.587625, 0.00318123, -0.168413)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.790546, 0.58906, 0.00211736, -0.167458)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.78983, 0.590245, 0.00123683, -0.166667)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.789408, 0.59097, 0.000581732, -0.1661)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.788942, 0.591708, 0.000147644, -0.165688)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.788821, 0.591907, 2.83356e-08, -0.165555)
            }
        }
        KeyframeGroup {
            target: backUpperLeg_l40
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.916672, -0.0639846, -0.0259263, -0.393633)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.916594, -0.0657456, -0.0267204, -0.39347)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.916157, -0.0708015, -0.0289641, -0.393452)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.915325, -0.0787967, -0.032497, -0.393593)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.914034, -0.0893782, -0.0371536, -0.393919)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.912211, -0.102192, -0.0427603, -0.39446)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.910066, -0.116846, -0.0492177, -0.394593)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.907424, -0.132977, -0.056327, -0.39462)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.904276, -0.150203, -0.0639196, -0.39451)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.900636, -0.168135, -0.0718239, -0.394242)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.896549, -0.186379, -0.0798672, -0.393806)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.892091, -0.204547, -0.0878774, -0.393207)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.887367, -0.222253, -0.0956851, -0.392463)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.882514, -0.239125, -0.103126, -0.391604)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.877691, -0.254803, -0.110041, -0.390673)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.873078, -0.268943, -0.116278, -0.389722)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.86887, -0.281217, -0.121693, -0.38881)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.865266, -0.291306, -0.126144, -0.387998)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.862466, -0.298902, -0.129496, -0.387351)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.860661, -0.303694, -0.13161, -0.386926)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.859752, -0.305457, -0.132132, -0.38738)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.860126, -0.304651, -0.131916, -0.387258)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.861274, -0.302258, -0.131306, -0.386788)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.862775, -0.298472, -0.130005, -0.386824)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.864796, -0.293279, -0.128185, -0.386889)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.867285, -0.286737, -0.125843, -0.386992)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.870182, -0.278904, -0.122976, -0.387134)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.873426, -0.269835, -0.119583, -0.38732)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.876952, -0.259584, -0.11566, -0.387549)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.880694, -0.248205, -0.111204, -0.387823)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.884584, -0.235751, -0.106209, -0.38814)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.888553, -0.222276, -0.100674, -0.3885)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.892532, -0.207833, -0.0945931, -0.388901)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.896452, -0.192475, -0.0879634, -0.389345)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.900245, -0.176257, -0.0807815, -0.389828)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.903844, -0.159234, -0.073044, -0.390353)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.907182, -0.141461, -0.0647482, -0.390919)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.910195, -0.122993, -0.055891, -0.391527)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.912821, -0.103887, -0.04647, -0.39218)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.914999, -0.0841991, -0.0364827, -0.392881)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.916672, -0.0639846, -0.0259263, -0.393633)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.917522, -0.0432921, -0.0148567, -0.395043)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.917283, -0.0222144, -0.00338952, -0.397602)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.915977, -0.000883385, 0.00838351, -0.401142)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.913636, 0.0205574, 0.0203648, -0.405503)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.910306, 0.0419538, 0.0324509, -0.410525)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.90605, 0.0631425, 0.0445334, -0.416056)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.900954, 0.0839536, 0.0565001, -0.421948)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.895124, 0.104213, 0.0682366, -0.428062)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.888686, 0.123745, 0.0796277, -0.434263)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.881789, 0.142376, 0.0905589, -0.440428)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.874602, 0.159936, 0.100918, -0.446439)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.867308, 0.176261, 0.110598, -0.452192)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.860105, 0.191194, 0.119492, -0.457588)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.853198, 0.204585, 0.127503, -0.462537)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.846801, 0.216292, 0.134534, -0.466954)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.841125, 0.226177, 0.140493, -0.47076)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.836378, 0.234106, 0.145289, -0.473875)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.832763, 0.239943, 0.148832, -0.476216)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.83047, 0.243553, 0.151029, -0.477695)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.830013, 0.244681, 0.151959, -0.477617)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.831115, 0.242552, 0.15077, -0.477163)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.834001, 0.236512, 0.147234, -0.476263)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.83835, 0.226951, 0.141561, -0.474998)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.844309, 0.214095, 0.13419, -0.472545)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.85125, 0.198405, 0.125191, -0.469401)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.858825, 0.18027, 0.114783, -0.465561)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.866695, 0.160104, 0.103204, -0.461038)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.874538, 0.138355, 0.090707, -0.455865)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.882071, 0.1155, 0.077567, -0.450105)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.889054, 0.0920471, 0.0640734, -0.443853)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.895308, 0.0685182, 0.0505272, -0.437236)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.900717, 0.0454442, 0.0372341, -0.430415)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.905227, 0.0233497, 0.0244972, -0.423578)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.908845, 0.00274376, 0.0126112, -0.416933)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.91163, -0.0158877, 0.0018583, -0.410702)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.913673, -0.0320845, -0.00749407, -0.405112)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.915092, -0.0454105, -0.015192, -0.400393)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.916003, -0.055446, -0.0209909, -0.396767)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.916508, -0.0617776, -0.0246505, -0.394448)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.916672, -0.0639846, -0.0259263, -0.393633)
            }
        }
        KeyframeGroup {
            target: backUpperLeg_r36
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.916672, -0.0639847, 0.025926, 0.393633)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.916508, -0.0617775, 0.0246502, 0.394448)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.916003, -0.0554459, 0.0209907, 0.396767)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.915092, -0.0454105, 0.0151917, 0.400393)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.913673, -0.0320846, 0.00749385, 0.405112)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.911629, -0.0158877, -0.00185855, 0.410702)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.908845, 0.00274374, -0.0126115, 0.416933)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.905227, 0.0233496, -0.0244974, 0.423579)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.900717, 0.0454441, -0.0372343, 0.430415)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.895308, 0.0685181, -0.0505274, 0.437236)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.889054, 0.092047, -0.0640736, 0.443853)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.88207, 0.1155, -0.0775672, 0.450105)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.874538, 0.138355, -0.0907073, 0.455865)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.866695, 0.160104, -0.103204, 0.461038)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.858825, 0.18027, -0.114784, 0.465561)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.85125, 0.198405, -0.125191, 0.469401)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.844309, 0.214095, -0.134191, 0.472545)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.83835, 0.226951, -0.141561, 0.474998)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.833806, 0.236572, -0.147137, 0.476604)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.830724, 0.242675, -0.150572, 0.477843)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.829818, 0.244743, -0.15186, 0.477956)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.830469, 0.243553, -0.151029, 0.477695)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.832763, 0.239943, -0.148832, 0.476216)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.836378, 0.234106, -0.145289, 0.473875)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.841124, 0.226177, -0.140493, 0.47076)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.846801, 0.216292, -0.134534, 0.466954)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.853198, 0.204585, -0.127503, 0.462537)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.860105, 0.191194, -0.119493, 0.457588)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.867308, 0.176261, -0.110598, 0.452192)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.874601, 0.159936, -0.100919, 0.446439)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.881789, 0.142376, -0.0905591, 0.440428)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.888685, 0.123745, -0.0796279, 0.434263)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.895124, 0.104213, -0.0682369, 0.428062)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.900954, 0.0839536, -0.0565004, 0.421949)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.90605, 0.0631425, -0.0445336, 0.416056)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.910306, 0.0419537, -0.0324511, 0.410525)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.913636, 0.0205574, -0.020365, 0.405503)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.915977, -0.000883391, -0.00838375, 0.401142)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.917283, -0.0222144, 0.00338927, 0.397602)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.917522, -0.0432921, 0.0148564, 0.395043)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.916672, -0.0639847, 0.025926, 0.393633)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.914999, -0.0841991, 0.0364825, 0.392881)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.912821, -0.103887, 0.0464698, 0.39218)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.910195, -0.122993, 0.0558908, 0.391527)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.907182, -0.141461, 0.0647479, 0.390919)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.903844, -0.159234, 0.0730438, 0.390353)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.900245, -0.176257, 0.0807812, 0.389828)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.896452, -0.192475, 0.0879632, 0.389345)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.892532, -0.207833, 0.0945929, 0.388901)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.888553, -0.222276, 0.100674, 0.3885)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.884584, -0.235751, 0.106209, 0.38814)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.880694, -0.248205, 0.111204, 0.387823)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.876952, -0.259584, 0.11566, 0.387549)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.873426, -0.269835, 0.119583, 0.38732)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.870182, -0.278904, 0.122976, 0.387134)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.867285, -0.286737, 0.125842, 0.386992)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.864797, -0.293279, 0.128185, 0.386889)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.862775, -0.298472, 0.130005, 0.386823)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.861274, -0.302259, 0.131306, 0.386788)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.860263, -0.304604, 0.132023, 0.386955)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.860025, -0.305364, 0.132347, 0.386775)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.860661, -0.303694, 0.13161, 0.386926)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.862466, -0.298902, 0.129495, 0.387351)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.865266, -0.291306, 0.126144, 0.387998)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.86887, -0.281217, 0.121693, 0.38881)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.873078, -0.268943, 0.116278, 0.389722)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.877691, -0.254803, 0.110041, 0.390673)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.882514, -0.239125, 0.103126, 0.391604)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.887367, -0.222253, 0.0956849, 0.392463)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.892091, -0.204547, 0.0878771, 0.393207)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.896549, -0.186379, 0.079867, 0.393806)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.900636, -0.168135, 0.0718237, 0.394242)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.904276, -0.150203, 0.0639194, 0.39451)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.907425, -0.132977, 0.0563268, 0.39462)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.910066, -0.116846, 0.0492174, 0.394593)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.912211, -0.102192, 0.0427601, 0.39446)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.913939, -0.0893872, 0.0371317, 0.39414)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.915134, -0.0788125, 0.0324586, 0.394037)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.91603, -0.0708109, 0.028941, 0.393748)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.91653, -0.0657499, 0.0267095, 0.393618)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.916672, -0.0639847, 0.025926, 0.393633)
            }
        }
        KeyframeGroup {
            target: eaer_r_end
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(7.45058e-08, 0.533794, 8.9407e-08)
            }
        }
        KeyframeGroup {
            target: eaer_r_end
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.898161, -0.438224, -1.30652e-07, 0.0355865)
            }
        }
        KeyframeGroup {
            target: rootNode
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(5.58794e-08, 0.533793, -1.78814e-07)
            }
        }
        KeyframeGroup {
            target: rootNode
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.898161, -0.438224, 2.26049e-07, -0.0355864)
            }
        }
        KeyframeGroup {
            target: frontFoot_l31
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(2.53785e-08, 0.95746, -8.48377e-09)
            }
        }
        KeyframeGroup {
            target: frontFoot_l31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.741026, -0.671289, 0.0120798, 0.0103342)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.740239, -0.672155, 0.0121158, 0.0103453)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.737982, -0.67463, 0.0122189, 0.0103771)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.7344, -0.678524, 0.0123814, 0.010427)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.729634, -0.683641, 0.0125956, 0.0104926)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.723823, -0.689785, 0.0128538, 0.0105712)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.717107, -0.696757, 0.0131483, 0.0106602)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.709633, -0.704361, 0.0134712, 0.0107572)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.701551, -0.712403, 0.0138147, 0.0108594)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.693022, -0.720694, 0.0141713, 0.0109646)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.684215, -0.729052, 0.0145331, 0.0110704)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.675306, -0.737302, 0.0148928, 0.0111746)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.666483, -0.745279, 0.0152431, 0.011275)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.657937, -0.752826, 0.0155768, 0.0113698)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.649867, -0.759795, 0.0158871, 0.011457)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.642476, -0.766048, 0.0161672, 0.0115352)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.63597, -0.771452, 0.0164107, 0.0116025)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.630556, -0.775878, 0.0166111, 0.0116576)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.626439, -0.779202, 0.0167622, 0.0116989)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.623823, -0.781296, 0.0168577, 0.0117249)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.624098, -0.781076, 0.0168926, 0.0116879)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.624371, -0.780858, 0.0168636, 0.011702)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.624644, -0.780641, 0.0167786, 0.0117609)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.624916, -0.780425, 0.0166434, 0.0118601)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.625187, -0.78021, 0.0164641, 0.0119948)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.625457, -0.779995, 0.0162463, 0.0121606)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.627084, -0.77869, 0.0160175, 0.0123248)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.629275, -0.776922, 0.0157719, 0.0125001)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.632114, -0.774618, 0.0154854, 0.0126417)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.635675, -0.771702, 0.0151826, 0.0127652)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.640038, -0.768092, 0.0148685, 0.0128619)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.645274, -0.763703, 0.0145476, 0.0129228)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.651453, -0.758445, 0.0142247, 0.0129392)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.658641, -0.752218, 0.0139043, 0.0129019)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.666898, -0.744915, 0.0135907, 0.0128016)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.676276, -0.736421, 0.0132881, 0.0126289)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.686817, -0.726609, 0.0130008, 0.0123741)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.698555, -0.715342, 0.0127325, 0.0120274)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.711507, -0.702473, 0.0124873, 0.0115786)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.725671, -0.687844, 0.0122685, 0.0110176)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.741026, -0.671289, 0.0120798, 0.0103342)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.757485, -0.65268, 0.0117987, 0.00928476)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.774788, -0.632074, 0.0113136, 0.00767196)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.792625, -0.609591, 0.0106437, 0.00555478)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.810687, -0.58539, 0.00980852, 0.00299337)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.828666, -0.559673, 0.0088289, 5.04041e-05)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.846267, -0.532693, 0.00772697, -0.00320815)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.863215, -0.50475, 0.00652646, -0.00671283)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.879263, -0.476195, 0.00525262, -0.0103911)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.894204, -0.447418, 0.00393193, -0.0141684)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.907876, -0.418845, 0.00259168, -0.017969)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.920167, -0.390922, 0.00125952, -0.0217179)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.931012, -0.364108, -3.71059e-05, -0.0253417)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.940394, -0.338865, -0.00127134, -0.0287698)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.948337, -0.315644, -0.00241726, -0.0319351)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.954893, -0.294887, -0.00345007, -0.0347743)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.960134, -0.277016, -0.00434599, -0.037227)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.964137, -0.26244, -0.0050821, -0.0392356)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.966969, -0.251552, -0.00563599, -0.040743)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.968674, -0.24474, -0.00598524, -0.0416918)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.969251, -0.242384, -0.00610691, -0.0420221)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.96843, -0.245705, -0.0059802, -0.0416783)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.966009, -0.255225, -0.00561599, -0.0406887)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.961971, -0.27029, -0.00503654, -0.0391091)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.956229, -0.290242, -0.00426325, -0.0369914)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.948663, -0.314396, -0.00331795, -0.0343877)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.939165, -0.342024, -0.00222407, -0.0313545)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.927671, -0.372348, -0.00100748, -0.0279554)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.914196, -0.404545, 0.000303203, -0.0242636)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.89886, -0.43776, 0.00167673, -0.0203615)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.881904, -0.471135, 0.00307994, -0.0163399)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.863697, -0.503842, 0.00447876, -0.012295)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.84472, -0.535112, 0.00583958, -0.00832545)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.82555, -0.564266, 0.00713037, -0.00452812)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.806827, -0.590729, 0.00832171, -0.000995133)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.789225, -0.614028, 0.0093873, 0.00218828)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.773426, -0.633783, 0.0103038, 0.00494452)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.760094, -0.64968, 0.0110506, 0.00720284)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.74986, -0.661435, 0.0116084, 0.0088972)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.74332, -0.668755, 0.0119583, 0.00996316)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.741026, -0.671289, 0.0120798, 0.0103342)
            }
        }
        KeyframeGroup {
            target: frontFoot_r27
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-2.56114e-08, 0.95746, -1.09354e-07)
            }
        }
        KeyframeGroup {
            target: frontFoot_r27
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.741026, -0.671288, -0.0120798, -0.0103342)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.743321, -0.668754, -0.0119582, -0.00996323)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.74986, -0.661435, -0.0116084, -0.00889727)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.760094, -0.64968, -0.0110506, -0.00720291)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.773427, -0.633783, -0.0103038, -0.00494459)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.789226, -0.614028, -0.00938729, -0.00218835)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.806827, -0.590729, -0.00832171, 0.000995057)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.82555, -0.564266, -0.00713037, 0.00452804)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.84472, -0.535112, -0.00583958, 0.00832537)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.863697, -0.503842, -0.00447877, 0.0122949)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.881904, -0.471135, -0.00307994, 0.0163398)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.89886, -0.43776, -0.00167675, 0.0203614)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.914196, -0.404545, -0.000303224, 0.0242636)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.927671, -0.372348, 0.00100745, 0.0279554)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.939166, -0.342024, 0.00222404, 0.0313544)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.948663, -0.314395, 0.00331793, 0.0343877)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.956229, -0.290242, 0.00426322, 0.0369914)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.961971, -0.27029, 0.00503651, 0.0391091)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.966009, -0.255225, 0.00561595, 0.0406886)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.96843, -0.245705, 0.00598017, 0.0416783)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.969251, -0.242384, 0.00610687, 0.042022)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.968674, -0.24474, 0.0059852, 0.0416917)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.966969, -0.251552, 0.00563595, 0.0407429)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.964137, -0.262439, 0.00508206, 0.0392355)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.960134, -0.277016, 0.00434595, 0.037227)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.954893, -0.294887, 0.00345004, 0.0347742)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.948337, -0.315644, 0.00241724, 0.031935)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.940394, -0.338864, 0.00127131, 0.0287697)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.931012, -0.364108, 3.70799e-05, 0.0253416)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.920167, -0.390921, -0.00125955, 0.0217178)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.907876, -0.418844, -0.0025917, 0.017969)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.894204, -0.447418, -0.00393194, 0.0141683)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.879263, -0.476195, -0.00525263, 0.0103911)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.863215, -0.50475, -0.00652647, 0.00671275)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.846267, -0.532693, -0.00772697, 0.00320808)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.828666, -0.559673, -0.0088289, -5.04853e-05)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.810687, -0.58539, -0.00980852, -0.00299345)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.792625, -0.609591, -0.0106437, -0.00555485)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.774788, -0.632073, -0.0113136, -0.00767203)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.757485, -0.65268, -0.0117987, -0.00928484)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.741026, -0.671288, -0.0120798, -0.0103342)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.725671, -0.687844, -0.0122685, -0.0110176)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.711507, -0.702473, -0.0124872, -0.0115786)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.698555, -0.715342, -0.0127325, -0.0120274)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.686817, -0.726608, -0.0130008, -0.0123742)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.676276, -0.73642, -0.0132881, -0.012629)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.666898, -0.744915, -0.0135906, -0.0128017)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.658642, -0.752218, -0.0139042, -0.0129019)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.651454, -0.758445, -0.0142247, -0.0129393)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.645274, -0.763703, -0.0145476, -0.0129229)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.640038, -0.768092, -0.0148684, -0.012862)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.635676, -0.771701, -0.0151826, -0.0127653)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.632114, -0.774618, -0.0154854, -0.0126418)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.629276, -0.776922, -0.0157719, -0.0125002)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.627084, -0.778689, -0.0160323, -0.0123433)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.625457, -0.779994, -0.0162758, -0.0121976)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.624515, -0.780746, -0.0164783, -0.0120399)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.623572, -0.781498, -0.0166427, -0.0119134)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.623636, -0.781446, -0.0167781, -0.0118011)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.623699, -0.781394, -0.0168633, -0.0117289)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.623762, -0.781344, -0.0168924, -0.0117014)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.623824, -0.781295, -0.0168576, -0.0117249)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.626439, -0.779202, -0.0167622, -0.011699)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.630556, -0.775878, -0.0166111, -0.0116577)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.635971, -0.771452, -0.0164106, -0.0116026)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.642476, -0.766048, -0.0161672, -0.0115353)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.649867, -0.759795, -0.0158871, -0.0114571)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.657937, -0.752826, -0.0155768, -0.0113698)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.666483, -0.745279, -0.0152431, -0.0112751)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.675307, -0.737302, -0.0148928, -0.0111746)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.684215, -0.729051, -0.0145331, -0.0110705)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.693022, -0.720694, -0.0141712, -0.0109647)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.701551, -0.712403, -0.0138147, -0.0108595)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.709633, -0.704361, -0.0134712, -0.0107572)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.717107, -0.696757, -0.0131483, -0.0106603)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.723823, -0.689785, -0.0128538, -0.0105713)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.729634, -0.683641, -0.0125956, -0.0104927)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.7344, -0.678524, -0.0123814, -0.0104271)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.737982, -0.67463, -0.0122189, -0.0103771)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.74024, -0.672154, -0.0121158, -0.0103454)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.741026, -0.671288, -0.0120798, -0.0103342)
            }
        }
        KeyframeGroup {
            target: frontLowerLeg_l30
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.04308e-07, 0.881278, 1.49012e-07)
            }
        }
        KeyframeGroup {
            target: frontLowerLeg_l30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.843545, 0.338433, 0.256872, 0.328499)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.843308, 0.339168, 0.257046, 0.328213)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.84256, 0.341167, 0.257711, 0.327541)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.841348, 0.344287, 0.258809, 0.326523)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.839719, 0.348384, 0.260284, 0.325197)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.837716, 0.353313, 0.262077, 0.323602)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.835378, 0.358952, 0.264085, 0.3218)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.832759, 0.365134, 0.266296, 0.319807)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.829905, 0.371719, 0.268642, 0.317669)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.826902, 0.378585, 0.271042, 0.315345)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.823778, 0.385564, 0.273475, 0.312956)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.820595, 0.392517, 0.275888, 0.310549)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.817422, 0.399301, 0.278236, 0.308164)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.814317, 0.405774, 0.280477, 0.305889)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.811371, 0.411804, 0.282567, 0.303728)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.808661, 0.41727, 0.284438, 0.301743)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.806267, 0.422044, 0.286044, 0.299986)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.804286, 0.425954, 0.287424, 0.298454)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.802711, 0.428843, 0.28856, 0.29746)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.8017, 0.430658, 0.289297, 0.296847)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.801658, 0.430592, 0.289403, 0.296953)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.802626, 0.428712, 0.288771, 0.297671)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.804159, 0.425758, 0.287739, 0.298772)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.806174, 0.421858, 0.286352, 0.300204)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.808588, 0.417137, 0.284656, 0.301916)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.811319, 0.411724, 0.282696, 0.303854)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.814287, 0.405747, 0.280517, 0.305968)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.817422, 0.399301, 0.278236, 0.308164)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.820595, 0.392517, 0.275888, 0.310549)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.823778, 0.385564, 0.273475, 0.312956)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.826902, 0.378585, 0.271042, 0.315345)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.829905, 0.371719, 0.268642, 0.317669)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.832749, 0.365127, 0.266306, 0.319831)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.83536, 0.358937, 0.264106, 0.321847)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.837688, 0.353291, 0.262107, 0.323673)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.839684, 0.348345, 0.260342, 0.325283)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.841305, 0.344232, 0.258894, 0.326624)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.842509, 0.341097, 0.257822, 0.327658)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.843335, 0.339208, 0.256982, 0.328152)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.84365, 0.338584, 0.256635, 0.32826)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.843041, 0.340256, 0.25718, 0.327668)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.841199, 0.344941, 0.258894, 0.326151)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.83821, 0.352295, 0.261634, 0.32379)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.834127, 0.362032, 0.265139, 0.320727)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.829022, 0.373752, 0.269355, 0.316985)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.823057, 0.387174, 0.274022, 0.312386)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.816212, 0.401851, 0.279111, 0.307263)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.808612, 0.417438, 0.284444, 0.301635)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.800353, 0.433546, 0.289919, 0.295668)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.7916, 0.449828, 0.295383, 0.289437)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.782521, 0.465916, 0.30074, 0.283087)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.773316, 0.481493, 0.305848, 0.276774)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.764225, 0.496226, 0.310638, 0.270599)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.755473, 0.509825, 0.315006, 0.264783)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.747352, 0.522013, 0.318884, 0.259385)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.740084, 0.532508, 0.322233, 0.254708)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.733987, 0.54112, 0.324905, 0.250777)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.729349, 0.547578, 0.326899, 0.247681)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.726299, 0.551518, 0.328352, 0.245974)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.725208, 0.552853, 0.32892, 0.245436)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.726235, 0.551404, 0.328546, 0.246158)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.72922, 0.54735, 0.327286, 0.248052)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.733914, 0.540939, 0.325215, 0.250979)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.740051, 0.53241, 0.322403, 0.254796)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.74736, 0.521995, 0.318917, 0.259357)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.755473, 0.509825, 0.315006, 0.264783)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.764225, 0.496226, 0.310638, 0.270599)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.773316, 0.481493, 0.305848, 0.276774)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.782521, 0.465916, 0.30074, 0.283087)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.7916, 0.449827, 0.295383, 0.289437)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.800353, 0.433546, 0.289919, 0.295668)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.808612, 0.417439, 0.284444, 0.301635)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.816212, 0.401851, 0.279111, 0.307263)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.823057, 0.387174, 0.274022, 0.312386)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.829022, 0.373752, 0.269355, 0.316985)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.834079, 0.361992, 0.265194, 0.320852)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.83811, 0.352225, 0.261723, 0.324052)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.84106, 0.344781, 0.259133, 0.326486)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.842919, 0.340102, 0.257418, 0.327956)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.843545, 0.338433, 0.256872, 0.328499)
            }
        }
        KeyframeGroup {
            target: frontLowerLeg_r26
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-2.98023e-08, 0.881278, -5.96046e-08)
            }
        }
        KeyframeGroup {
            target: frontLowerLeg_r26
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.843545, 0.338433, -0.256872, -0.328499)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.842955, 0.340144, -0.257355, -0.327868)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.841133, 0.344866, -0.259006, -0.32631)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.838164, 0.352258, -0.261684, -0.32391)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.834104, 0.362013, -0.265165, -0.320786)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.829022, 0.373751, -0.269355, -0.316985)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.823057, 0.387174, -0.274022, -0.312386)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.816212, 0.401851, -0.279111, -0.307263)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.808612, 0.417438, -0.284444, -0.301635)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.800353, 0.433546, -0.289919, -0.295668)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.7916, 0.449827, -0.295383, -0.289437)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.782521, 0.465916, -0.30074, -0.283087)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.773316, 0.481493, -0.305848, -0.276774)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.764225, 0.496226, -0.310638, -0.270599)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.755473, 0.509825, -0.315006, -0.264783)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.747352, 0.522013, -0.318884, -0.259386)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.740084, 0.532508, -0.322233, -0.254708)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.733987, 0.54112, -0.324905, -0.250777)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.729349, 0.547578, -0.326899, -0.247681)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.726299, 0.551518, -0.328352, -0.245974)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.725208, 0.552853, -0.32892, -0.245436)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.726235, 0.551404, -0.328546, -0.246158)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.72922, 0.54735, -0.327286, -0.248052)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.733914, 0.540939, -0.325215, -0.250979)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.740051, 0.532409, -0.322403, -0.254796)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.74736, 0.521995, -0.318917, -0.259357)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.755473, 0.509825, -0.315006, -0.264783)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.764225, 0.496226, -0.310638, -0.270599)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.773316, 0.481493, -0.305848, -0.276774)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.782521, 0.465916, -0.30074, -0.283087)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.7916, 0.449827, -0.295383, -0.289437)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.800353, 0.433546, -0.289919, -0.295668)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.808612, 0.417438, -0.284444, -0.301635)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.816212, 0.401851, -0.279111, -0.307263)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.823057, 0.387174, -0.274022, -0.312386)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.829023, 0.373751, -0.269355, -0.316985)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.834079, 0.361992, -0.265194, -0.320852)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.83811, 0.352225, -0.261723, -0.324052)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.84106, 0.344781, -0.259133, -0.326486)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.842971, 0.34019, -0.257274, -0.327843)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.84365, 0.33861, -0.256585, -0.328272)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.843405, 0.339327, -0.256789, -0.328002)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.842648, 0.341308, -0.257484, -0.327346)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.841428, 0.34441, -0.258613, -0.326344)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.83979, 0.348488, -0.260118, -0.325035)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.837778, 0.3534, -0.261941, -0.323456)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.835437, 0.358999, -0.264023, -0.321646)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.832807, 0.365176, -0.266238, -0.319683)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.829943, 0.371751, -0.268598, -0.317569)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.8269, 0.378584, -0.271044, -0.315349)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.823776, 0.385563, -0.273476, -0.312962)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.820593, 0.392514, -0.275892, -0.310552)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.81742, 0.399301, -0.278235, -0.308171)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.814328, 0.405779, -0.280472, -0.305856)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.81137, 0.411803, -0.282568, -0.303731)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.808647, 0.417263, -0.284445, -0.301782)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.806247, 0.422009, -0.286101, -0.300033)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.804247, 0.425935, -0.287446, -0.298564)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.80273, 0.428914, -0.288436, -0.297426)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.801776, 0.430819, -0.289027, -0.296671)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.801739, 0.430806, -0.28904, -0.296777)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.801713, 0.430759, -0.289118, -0.296839)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.802677, 0.428864, -0.288512, -0.297567)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.804205, 0.425895, -0.287506, -0.298677)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.806216, 0.421979, -0.286145, -0.300118)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.808626, 0.417243, -0.284475, -0.301838)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.811359, 0.411793, -0.282582, -0.303759)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.814328, 0.405779, -0.280472, -0.305856)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.817419, 0.399301, -0.278235, -0.308171)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.820593, 0.392514, -0.275892, -0.310552)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.823776, 0.385563, -0.273476, -0.312961)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.826901, 0.378583, -0.271044, -0.315349)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.829915, 0.371727, -0.268632, -0.317644)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.832749, 0.365128, -0.266304, -0.319833)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.83535, 0.358927, -0.264121, -0.321873)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.837666, 0.353279, -0.262119, -0.323732)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.839653, 0.34832, -0.260376, -0.325361)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.841303, 0.344221, -0.258913, -0.326628)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.842529, 0.341124, -0.257779, -0.327612)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.843293, 0.339146, -0.25708, -0.328249)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.843545, 0.338433, -0.256872, -0.328499)
            }
        }
        KeyframeGroup {
            target: frontUpperLeg_l29
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.902304, -0.129237, -0.182615, -0.368507)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.902776, -0.128086, -0.181787, -0.368161)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.903925, -0.124884, -0.179345, -0.367639)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.905637, -0.119855, -0.175456, -0.366975)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.907786, -0.113221, -0.170286, -0.366208)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.910395, -0.105133, -0.164046, -0.364989)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.913257, -0.0958551, -0.156876, -0.363542)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.916256, -0.0856142, -0.148948, -0.361884)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.919281, -0.074642, -0.140437, -0.36004)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.922237, -0.0631748, -0.131525, -0.358036)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.925041, -0.0514529, -0.122395, -0.355908)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.927631, -0.039719, -0.113237, -0.353696)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.929957, -0.0282168, -0.104241, -0.35145)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.931991, -0.0171894, -0.0955995, -0.349225)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.933719, -0.00687787, -0.0875035, -0.347079)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.935143, 0.00248009, -0.0801434, -0.345078)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.936272, 0.0106501, -0.0737078, -0.343289)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.937127, 0.0174015, -0.0683826, -0.341782)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.937724, 0.022506, -0.0643523, -0.340625)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.938082, 0.0257362, -0.0617999, -0.339884)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.938039, 0.0268349, -0.0609212, -0.340076)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.937968, 0.0265512, -0.0613333, -0.340218)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.937875, 0.0256992, -0.0625386, -0.340321)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.937481, 0.0241945, -0.0645253, -0.341146)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.936941, 0.022032, -0.0672473, -0.342249)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.936258, 0.0191792, -0.0706699, -0.343597)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.935433, 0.0156036, -0.0747586, -0.345157)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.934462, 0.0112722, -0.0794791, -0.346895)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.933342, 0.00615201, -0.0847969, -0.348776)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.932063, 0.000209364, -0.0906781, -0.350765)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.930615, -0.00658969, -0.0970885, -0.352826)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.928985, -0.0142795, -0.103994, -0.35492)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.927156, -0.0228946, -0.111361, -0.35701)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.925109, -0.0324698, -0.119154, -0.359057)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.922821, -0.0430401, -0.127339, -0.361018)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.920266, -0.05464, -0.135881, -0.362851)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.917415, -0.0673038, -0.144742, -0.364514)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.914233, -0.0810647, -0.153886, -0.365959)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.910817, -0.0958946, -0.163309, -0.366806)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.906722, -0.112003, -0.172865, -0.368006)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.902304, -0.129237, -0.182615, -0.368507)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.89754, -0.147724, -0.19242, -0.368203)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.892532, -0.167371, -0.202168, -0.366746)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.887221, -0.187958, -0.211799, -0.364215)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.881567, -0.209253, -0.22125, -0.360696)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.875548, -0.231018, -0.230456, -0.356282)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.869163, -0.253007, -0.239351, -0.351076)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.862435, -0.274968, -0.247871, -0.345193)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.855411, -0.296649, -0.255958, -0.338758)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.848161, -0.317801, -0.263555, -0.331909)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.84078, -0.33818, -0.270615, -0.324793)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.833382, -0.357552, -0.277096, -0.317567)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.826101, -0.375692, -0.282965, -0.310393)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.819084, -0.39239, -0.288197, -0.303439)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.812488, -0.407448, -0.292772, -0.296874)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.806479, -0.420678, -0.296676, -0.29087)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.801221, -0.431904, -0.2999, -0.285594)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.796879, -0.440949, -0.302434, -0.281214)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.793608, -0.447642, -0.304267, -0.277892)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.791649, -0.451819, -0.305189, -0.275702)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.790845, -0.453231, -0.305764, -0.275053)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.792056, -0.451112, -0.305026, -0.275871)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.795497, -0.445016, -0.302899, -0.278205)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.800851, -0.435307, -0.299492, -0.281869)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.807772, -0.422325, -0.294904, -0.286666)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.815895, -0.40641, -0.289228, -0.292391)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.824848, -0.387918, -0.282565, -0.298836)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.834262, -0.367234, -0.275027, -0.305787)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.843787, -0.344787, -0.266749, -0.313034)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.853103, -0.321045, -0.257887, -0.320375)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.861935, -0.296518, -0.24862, -0.327618)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.870061, -0.271749, -0.23915, -0.334594)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.877324, -0.247301, -0.229695, -0.341153)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.883625, -0.223745, -0.220487, -0.347175)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.888928, -0.201647, -0.211764, -0.352564)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.893247, -0.18156, -0.203764, -0.357247)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.896635, -0.164016, -0.196722, -0.361173)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.899165, -0.149524, -0.190867, -0.364301)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.900917, -0.138576, -0.186422, -0.366595)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.901955, -0.131653, -0.183601, -0.368016)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.902304, -0.129237, -0.182615, -0.368507)
            }
        }
        KeyframeGroup {
            target: frontUpperLeg_r25
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.902304, -0.129238, 0.182613, 0.368506)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.901955, -0.131654, 0.1836, 0.368016)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.900917, -0.138576, 0.18642, 0.366595)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.899165, -0.149525, 0.190866, 0.364301)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.896635, -0.164017, 0.19672, 0.361173)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.893247, -0.181561, 0.203762, 0.357247)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.888928, -0.201648, 0.211762, 0.352564)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.883625, -0.223745, 0.220486, 0.347175)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.877324, -0.247302, 0.229694, 0.341153)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.870062, -0.27175, 0.239148, 0.334593)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.861935, -0.296519, 0.248618, 0.327618)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.853103, -0.321046, 0.257885, 0.320374)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.843787, -0.344787, 0.266748, 0.313034)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.834263, -0.367235, 0.275026, 0.305786)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.824849, -0.387918, 0.282563, 0.298835)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.815896, -0.406411, 0.289227, 0.292391)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.807773, -0.422326, 0.294903, 0.286665)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.800851, -0.435308, 0.299491, 0.281868)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.795497, -0.445017, 0.302897, 0.278205)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.792056, -0.451112, 0.305025, 0.27587)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.791134, -0.453292, 0.305165, 0.274787)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.791794, -0.451848, 0.304888, 0.275569)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.793609, -0.447642, 0.304266, 0.277892)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.796879, -0.44095, 0.302432, 0.281213)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.801221, -0.431904, 0.299899, 0.285594)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.806479, -0.420679, 0.296675, 0.290869)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.812488, -0.407448, 0.29277, 0.296874)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.819084, -0.39239, 0.288195, 0.303438)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.826101, -0.375692, 0.282963, 0.310392)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.833383, -0.357552, 0.277094, 0.317566)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.84078, -0.338181, 0.270613, 0.324793)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.848162, -0.317802, 0.263553, 0.331908)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.855411, -0.29665, 0.255956, 0.338758)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.862436, -0.274968, 0.24787, 0.345192)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.869163, -0.253008, 0.239349, 0.351076)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.875548, -0.231019, 0.230454, 0.356282)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.881567, -0.209254, 0.221249, 0.360696)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.887221, -0.187958, 0.211798, 0.364215)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.892532, -0.167372, 0.202167, 0.366745)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.897541, -0.147725, 0.192419, 0.368203)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.902304, -0.129238, 0.182613, 0.368506)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.906722, -0.112004, 0.172863, 0.368006)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.910817, -0.0958953, 0.163308, 0.366806)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.914233, -0.0810654, 0.153885, 0.365959)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.917415, -0.0673045, 0.144741, 0.364514)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.920266, -0.0546407, 0.135879, 0.362851)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.922821, -0.0430408, 0.127338, 0.361018)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.925109, -0.0324705, 0.119152, 0.359057)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.927156, -0.0228953, 0.111359, 0.357011)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.928985, -0.0142801, 0.103992, 0.354921)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.930615, -0.00659037, 0.0970869, 0.352826)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.932063, 0.0002087, 0.0906765, 0.350765)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.933342, 0.00615136, 0.0847953, 0.348776)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.934462, 0.0112716, 0.0794775, 0.346895)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.935433, 0.0156029, 0.074757, 0.345157)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.936258, 0.0191786, 0.0706683, 0.343597)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.936941, 0.0220313, 0.0672457, 0.34225)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.937481, 0.0241939, 0.0645238, 0.341147)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.937876, 0.0256985, 0.062537, 0.340321)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.93805, 0.0265653, 0.0613253, 0.339993)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.938202, 0.0268635, 0.0609067, 0.339625)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.938082, 0.0257356, 0.0617983, 0.339885)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.937724, 0.0225053, 0.0643507, 0.340625)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.937127, 0.0174009, 0.068381, 0.341782)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.936273, 0.0106495, 0.0737062, 0.34329)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.935143, 0.00247942, 0.0801419, 0.345078)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.93372, -0.0068785, 0.0875019, 0.347079)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.931991, -0.0171901, 0.095598, 0.349225)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.929957, -0.0282174, 0.10424, 0.35145)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.927631, -0.0397197, 0.113236, 0.353696)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.925042, -0.0514536, 0.122394, 0.355908)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.922237, -0.0631755, 0.131523, 0.358036)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.919281, -0.0746427, 0.140436, 0.36004)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.916256, -0.0856149, 0.148946, 0.361885)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.913258, -0.0958559, 0.156874, 0.363542)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.910395, -0.105134, 0.164044, 0.364989)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.907822, -0.113205, 0.170295, 0.366119)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.905553, -0.119896, 0.175427, 0.367185)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.903869, -0.124912, 0.179324, 0.367779)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.902748, -0.128101, 0.181775, 0.36823)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.902304, -0.129238, 0.182613, 0.368506)
            }
        }
        KeyframeGroup {
            target: node
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.60704e-07, 0.119812, -3.22534e-07)
            }
        }
        KeyframeGroup {
            target: bone
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.60704e-07, 0.119812, -2.4511e-08)
            }
        }
    }
}
