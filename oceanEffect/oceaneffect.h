#ifndef OCEANEFFECT_H
#define OCEANEFFECT_H

#include <QObject>
#include <QQuick3DGeometry>
#include <QVector3D>

class OceanEffect : public QQuick3DGeometry
{
    Q_OBJECT
    QML_NAMED_ELEMENT(OceanEffect)
    //Q_PROPERTY(QVector3D position READ position WRITE setPosition NOTIFY positionChanged)
    Q_PROPERTY(float distanceX READ distanceX WRITE setDistanceX NOTIFY distanceXChanged)
    Q_PROPERTY(float distanceZ READ distanceZ WRITE setDistanceZ NOTIFY distanceZChanged)
    Q_PROPERTY(float delta READ delta WRITE setDelta NOTIFY deltaChanged)
    Q_PROPERTY(float t READ t WRITE setT NOTIFY tChanged)
    Q_PROPERTY(float w READ w WRITE setW NOTIFY wChanged)
    Q_PROPERTY(float amplitude READ amplitude WRITE setAmplitude NOTIFY amplitudeChanged)

public:
    OceanEffect();

    //QVector3D position() const {return m_position;}
    float distanceX() const {return m_distanceX;}
    float distanceZ() const {return m_distanceZ;}
    float delta() const {return m_delta;}
    float t() const {return m_t;}
    float w() const {return m_w;}
    float amplitude() const {return m_amplitude;}


public slots:
    //void setPosition(QVector3D position);
    void setDistanceX(float distanceX);
    void setDistanceZ(float distanceZ);
    void setDelta(float delta);
    void setT(float t);
    void setW(float w);
    void setAmplitude(float amplitude);


signals:
    //void positionChanged(QVector3D newPosition);
    void distanceXChanged(float newDistanceX);
    void distanceZChanged(float newDistanceZ);
    void deltaChanged(float newDelta);
    void tChanged(float newT);
    void wChanged(float newW);
    void amplitudeChanged(float newAmplitude);


public:
    void setupGeometry();
    void updateGeometry();
private:
    void setupVertices();
    void setupIndexes();

private:
    //QVector3D m_position;
    float m_delta;
    float m_distanceX;
    float m_distanceZ;
    float m_t;
    float m_w;
    float m_amplitude;

    QByteArray vertices;
    QByteArray indices;
};

#endif // OCEANEFFECT_H
