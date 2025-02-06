#ifndef PATH_H
#define PATH_H

#include <QObject>
#include <QList>
#include <QVector3D>
#include "pathrectangular.h"
#include "pathcircular.h"

class Path : public QObject
{
    Q_OBJECT
    //Q_PROPERTY(PathRectangular pathRectanguler READ pathRectangular WRITE setPathRectangular NOTIFY pathRectangularChanged)

public:
    Path();
//public slots:
//    void setXmin(const float &xmin);
public slots:

    //void setPathRectangular(const PathRectangular &pathRect);

    //void addPathRect(const PathRectangular &path);
    void addPathRect(float xmin, float xmax, float ymin, float ymax,
                     float zmin, float zmax);


    void addPathCircular(QVector3D center, float radius, float pathHeight);
    //void addPathCircular(const PathCircular &path);


    bool checkPath(const QVector3D &pos);
    void clearPath();

private:
    QList<PathRectangular> m_pathRectList;
    QList<PathCircular> m_pathCircularList;
};

#endif // PATH_H
