#include "pathrectangular.h"
#include <QDebug>
PathRectangular::PathRectangular()
{
}

PathRectangular::PathRectangular(const float &xmin, const float &xmax,
                                 const float &ymin, const float &ymax,
                                 const float &zmin, const float &zmax)
{
    m_xmin = xmin;
    m_xmax = xmax;
    m_ymin = ymin;
    m_ymax = ymax;
    m_zmin = zmin;
    m_zmax = zmax;
}


PathRectangular::PathRectangular(const PathRectangular &t)
{
    /*m_xmin = t.xmin();
    m_xmax = t.xmax();

    m_ymin = t.ymin();
    m_ymax = t.ymax();

    m_zmin = t.zmin();
    m_zmax = t.zmax();
    */

    m_xmin = t.m_xmin;
    m_xmax = t.m_xmax;

    m_ymin = t.m_ymin;
    m_ymax = t.m_ymax;

    m_zmin = t.m_zmin;
    m_zmax = t.m_zmax;
}

PathRectangular &PathRectangular::operator =(const PathRectangular &t)
{
    m_xmin = t.m_xmin;
    m_xmax = t.m_xmax;

    m_ymin = t.m_ymin;
    m_ymax = t.m_ymax;

    m_zmin = t.m_zmin;
    m_zmax = t.m_zmax;

    return *this;
}

void PathRectangular::setXmin(const float &xmin)
{
    if (m_xmin == xmin)
        return;
    m_xmin = xmin;
    emit xminChanged(m_xmin);
}

void PathRectangular::setXmax(const float &xmax)
{
    if (m_xmax == xmax)
        return;
    m_xmax = xmax;
    emit xmaxChanged(m_xmax);
}

void PathRectangular::setYmin(const float &ymin)
{
    if (m_ymin == ymin)
        return;
    m_ymin = ymin;
    emit yminChanged(m_ymin);
}

void PathRectangular::setYmax(const float &ymax)
{
    if (m_ymax == ymax)
        return;
    m_ymax = ymax;
    emit ymaxChanged(m_ymax);
}

void PathRectangular::setZmin(const float &zmin)
{
    if (m_zmin == zmin)
        return;
    m_zmin = zmin;
    emit zminChanged(m_zmin);
}

void PathRectangular::setZmax(const float &zmax)
{
    if (m_zmax == zmax)
        return;
    m_zmax = zmax;
    emit zmaxChanged(m_zmax);
}

void PathRectangular::setXminmax(const float &xmin, const float &xmax)
{
    setXmin(xmin);
    setXmax(xmax);
}

void PathRectangular::setYminmax(const float &ymin, const float &ymax)
{
    setYmin(ymin);
    setYmax(ymax);
}

void PathRectangular::setZminmax(const float &zmin, const float &zmax)
{
    setZmin(zmin);
    setZmax(zmax);
}

bool PathRectangular::chekPath(const QVector3D &pos)
{
    //qDebug()<<"PathRectangular::chekPath";
    //qDebug()<<"m_xmin: "<<m_xmin<<" pos.x(): "<<pos.x()<<" m_xmax: "<<m_xmax;
    //qDebug()<<"m_ymin: "<<m_ymin<<" pos.y(): "<<pos.y()<<" m_ymax: "<<m_ymax;
    //qDebug()<<"m_zmin: "<<m_zmin<<" pos.z(): "<<pos.z()<<" m_zmax: "<<m_zmax;
    if (pos.x() >= m_xmin && pos.x() <= m_xmax &&
        pos.y() >= m_ymin && pos.y() <= m_ymax &&
        pos.z() >= m_zmin && pos.z() <= m_zmax){
        //qDebug()<<"PathRectangular::chekPath: return true";
        return true;
    }
    //qDebug()<<"PathRectangular::chekPath: return false";
    return false;
}
