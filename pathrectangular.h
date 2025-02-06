#ifndef PATHRECTANGULAR_H
#define PATHRECTANGULAR_H

#include <QObject>
#include <QVector4D>
#include <QtQml/qqmlregistration.h>

class PathRectangular : public QObject
{
    Q_OBJECT
    QML_NAMED_ELEMENT(PathRectangular)
    Q_PROPERTY(float xmin READ xmin WRITE setXmin NOTIFY xminChanged)
    Q_PROPERTY(float xmax READ xmax WRITE setXmax NOTIFY xmaxChanged)
    Q_PROPERTY(float ymin READ ymin WRITE setYmin NOTIFY yminChanged)
    Q_PROPERTY(float ymax READ ymax WRITE setYmax NOTIFY ymaxChanged)
    Q_PROPERTY(float zmin READ zmin WRITE setZmin NOTIFY zminChanged)
    Q_PROPERTY(float zmax READ zmax WRITE setZmax NOTIFY zmaxChanged)

    //QML_ELEMENT
public:
    PathRectangular();
    PathRectangular(const float &xmin, const float &xmax, const float &ymin, const float &ymax,
                    const float &zmin, const float &zmax);

   // friend void operator= (PathRectangular &t);
    PathRectangular(const PathRectangular &t);
    PathRectangular &operator=(const PathRectangular & );

public slots:

    void setXmin(const float &xmin);
    void setXmax(const float &xmax);
    void setYmin(const float &ymin);
    void setYmax(const float &ymax);
    void setZmin(const float &zmin);
    void setZmax(const float &zmax);

    void setXminmax(const float &xmin, const float &xmax);
    void setYminmax(const float &ymin, const float &ymax);
    void setZminmax(const float &zmin, const float &zmax);


    bool chekPath(const QVector3D &pos);


public:
    float xmin(){return m_xmin;}
    float xmax(){return m_xmax;}
    float ymin(){return m_ymin;}
    float ymax(){return m_ymax;}
    float zmin(){return m_zmin;}
    float zmax(){return m_zmax;}


signals:
    void xminChanged(float newXmin);
    void xmaxChanged(float newXmax);
    void yminChanged(float newYmin);
    void ymaxChanged(float newYmax);
    void zminChanged(float newZmin);
    void zmaxChanged(float newZmax);

private:
    QVector4D m_pathRectangularXminXmaxZminZmax;
    float m_xmin;
    float m_xmax;
    float m_ymin;
    float m_ymax;
    float m_zmin;
    float m_zmax;
};

#endif // PATHRECTANGULAR_H
