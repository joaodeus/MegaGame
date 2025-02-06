import QtQuick 2.0
import QtQuick3D
import QtQuick3D.Particles3D

Bullet_template {
    id: root
    property real scaleBall: 1
    property alias fireballColor: material.diffuseColor

    shotDuration: 500
    Model {
        id: fireball
        source: "#Sphere"
        scale: Qt.vector3d(scaleBall, scaleBall, scaleBall)
        materials: DefaultMaterial {
            id: material
            diffuseColor: "yellow"
        }
        opacity: 0.3
    }

    ParticleSystem3D {
        id: psystemEngine
        running: true
        visible: running
        //running: true
        //visible: true
        eulerRotation.x: 90
        SpriteParticle3D {
            id: engineParticle
            sprite: Texture {
                source: "qrc:/images/shipExplosion/sphere.png"
            }
            colorTable: Texture {
                source: "qrc:/images/shipExplosion/colorTable.png"
            }
            maxAmount: 500
            fadeInDuration: 50
            fadeOutDuration: 200
            color: "#40808020"
            colorVariation: Qt.vector4d(0.2, 0.2, 0.2, 0.2)
            billboard: true
            blendMode: SpriteParticle3D.Screen
        }

        ParticleEmitter3D {
            particle: engineParticle
            x: 0//-50
            scale: Qt.vector3d(0.4, 0.4, 0.4)
            shape: ParticleShape3D {
                type: ParticleShape3D.Sphere
            }

            particleScale: 32.0
            particleEndScale: 4.0
            particleScaleVariation: 1.0
            velocity: VectorDirection3D {
                direction: Qt.vector3d(-200, 0, 0)
                directionVariation: Qt.vector3d(10, 10, 10)
            }
            emitRate: 400
            lifeSpan: 1000
        }
    }//ParticleSystem3D

}

