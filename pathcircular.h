#ifndef PATHCIRCULAR_H
#define PATHCIRCULAR_H

#include <QObject>
#include <QVector3D>

class PathCircular// : public QObject
{
public:
    PathCircular();
    PathCircular(const QVector3D &center, const float &radius, const float &pathHeight);

    void setCenter(const QVector3D &center);
    void setRadius(const float &radius);
    void setHeight(const float &height);

    bool chekPath(const QVector3D &pos);

private:
    QVector3D m_center;
    float m_radius;
    float m_height;
};

#endif // PATHCIRCULAR_H
