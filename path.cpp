#include "path.h"
#include <QDebug>

Path::Path()
{

}

/*void Path::addPathRect(const PathRectangular &path)
{
    m_pathRectList.append(path);
}*/

void Path::addPathRect(float xmin, float xmax, float ymin, float ymax, float zmin, float zmax)
{
    PathRectangular path(xmin, xmax, ymin, ymax, zmin, zmax);
    //qDebug()<<"addPathRect -----------------------------------------";
    //qDebug()<<"m_pathRectList.size()"<<m_pathRectList.size();
    m_pathRectList.append(path);
    //qDebug()<<"m_pathRectList.size()"<<m_pathRectList.size();
}

void Path::addPathCircular(QVector3D center, float radius, float pathHeight)
{
    //qDebug()<<"Path::addPathCircular()"<<center;
    PathCircular path(center, radius, pathHeight);
    m_pathCircularList.append(path);
}

/*void Path::addPathCircular(const PathCircular &path)
{
    m_pathCircularList.append(path);
}*/

bool Path::checkPath(const QVector3D &pos)
{
    //qDebug()<<"m_pathRectList.size()"<<m_pathRectList.size();
    //qDebug()<<"m_pathCircularList.size()"<<m_pathCircularList.size();

    if (m_pathRectList.size() == 0 && m_pathCircularList.size() == 0)
        return true;

    for(int i = 0; i< m_pathRectList.size(); i++)
    {
        if (m_pathRectList[i].chekPath(pos))
            return true;
    }

    for(int i = 0; i< m_pathCircularList.size(); i++)
    {
        if (m_pathCircularList[i].chekPath(pos))
            return true;
    }
    return false;
}

void Path::clearPath()
{
    m_pathRectList.clear();
    m_pathCircularList.clear();
}
