#include "pathcircular.h"
#include <QDebug>

PathCircular::PathCircular()
{

}

PathCircular::PathCircular(const QVector3D &center, const float &radius, const float &pathHeight)
{
    m_center = center;
    m_radius = radius;
    m_height = pathHeight;
}

void PathCircular::setCenter(const QVector3D &center)
{
    m_center = center;
}

void PathCircular::setRadius(const float &radius)
{
    m_radius = radius;

}

void PathCircular::setHeight(const float &height)
{
    m_height = height;
}

bool PathCircular::chekPath(const QVector3D &pos)
{
    float dist = qSqrt( qPow( pos.x() - m_center.x(),2 )
                       + qPow( pos.z() - m_center.z(),2 ) );
    if ( dist < m_radius /*&& pos.y() >=  m_center.y() && ( pos.y() <= (m_center.y()+m_height )  )*/ ){
        //qDebug()<<"PathCircular::chekPath: return true";
        return true;
    }
    //qDebug()<<"PathCircular::chekPath: return false";
    return false;
}

