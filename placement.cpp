#include "placement.h"
#include <QtMath>

/*
    Convention used in QtQuick3D:
    front: +x
    back: -x
    right: +z
    left: -z
    up: +y
    down: -y


    change this convention, changing vectors m_frontAxis, m_UpAxis, m_RightAxis;

    change this convention in _moveX(), _moveY(), _moveZ() functions

*/
Placement::Placement(QObject *parent) : QObject(parent),
    m_positionFollower(-100,0,-100),
    m_positionFollowerDistance(100),
    m_followerActive(false),
    m_frontAxis(1, 0, 0), //implement this change later
    m_UpAxis(0, 1, 0),//implement this change later
    m_RightAxis(0, 0, 1),//implement this change later
    delaySize(0),//15
    delayIndex(0),
    bDelayFollowingCamera(false),
    m_usePathCircular(false),
    m_usePathRectangular(false)
{
    m_directionDelay.resize(delaySize);
}

void Placement::resetPosition()
{
    setPosition(0,0,0);
}

void Placement::resetDirection()
{
    QQuaternion q = QQuaternion::fromAxisAndAngle(0, 0, 1, 15);
    setDirection(q);
}

void Placement::pitch(float angle)
{
    rotateZ(angle);
    //setDirection(direction() * QQuaternion::fromAxisAndAngle(0, 1, 0, angle));
}

void Placement::yaw(float angle)
{
    rotateY(angle);
    //setDirection(direction() * QQuaternion::fromAxisAndAngle(0, 0, 1, angle));
}

void Placement::roll(float angle)
{
    rotateX(angle);
    //setDirection(direction() * QQuaternion::fromAxisAndAngle(1, 0, 0,angle));
}
//---------------------------------------------
void Placement::rotateX(const float &angle)
{
    setDirection(direction() * QQuaternion::fromAxisAndAngle(1, 0, 0, angle));
    emit xRotated(angle);
}

void Placement::rotateY(const float &angle)
{
    //qDebug()<<"Placement::rotateY(const float &angle).....antes ....:"<<direction();
    setDirection(direction() * QQuaternion::fromAxisAndAngle(0, 1, 0, angle));
    //qDebug()<<"Placement::rotateY(const float &angle)...depois......:"<<direction();
    emit yRotated(angle);
}

void Placement::rotateZ(const float &angle)
{
    setDirection(direction() * QQuaternion::fromAxisAndAngle(0, 0, 1,angle));
    emit zRotated(angle);
}

void Placement::moveFront(float d)
{
    _moveX(d);
    //_moveZ(-d);
}

void Placement::moveBack(float d)
{
    _moveX(-d);
    //_moveZ(d);
}

void Placement::moveLeft(float d)
{
    _moveZ(-d);
    //_moveX(-d);
}

void Placement::moveRight(float d)
{
    _moveZ(d);
    //_moveX(d);
}

void Placement::moveUp(float d)
{
    _moveY(d);
}

void Placement::moveDown(float d)
{
    _moveY(-d);
}

QQuaternion Placement::rotate(QQuaternion q1, QQuaternion q2)
{
    setDirection(q1 * q2);
    return direction();
}

void Placement::_moveX(float d)
{
    if (d == 0)
        return;
    QVector3D xAxis;
    QVector3D yAxis;
    QVector3D zAxis;

    m_direction.getAxes(&xAxis, &yAxis, &zAxis);
    setPosition( position() + xAxis*d);
    emit positionChanged(m_position);
    //qDebug()<<"Placement::_moveX(float d)......"<<m_position;
    if (d > 0)
        emit frontMoved(d);
    else
        emit backMoved(-d);
    //updateCameraPosFromEye();

    if (!m_followerActive)
        return;

    float dist = m_position.distanceToPoint(m_positionFollower);
    //qDebug()<<"m_position.distanceToPoint(m_positionFollower): "<<dist;
    if (dist > m_positionFollowerDistance)
    {
        _moveXFollower(d);
    }
}

void Placement::_moveXFollower(float d)
{
    if (d == 0)
        return;
    QVector3D xAxis;
    QVector3D yAxis;
    QVector3D zAxis;
    m_direction.getAxes(&xAxis, &yAxis, &zAxis);
    setPositionFollower( positionFollower() + xAxis*d);
    emit positionFollowerChanged(m_positionFollower);
}

void Placement::_moveY(float d)
{
    if (d == 0)
        return;
    QVector3D xAxis;
    QVector3D yAxis;
    QVector3D zAxis;

    m_direction.getAxes(&xAxis, &yAxis, &zAxis);
    setPosition( position() + yAxis*d);
    emit positionChanged(m_position);
    if (d > 0)
        emit upMoved(d);
    else
        emit downMoved(-d);

    if (!m_followerActive)
        return;

    float dist = m_position.distanceToPoint(m_positionFollower);
    //qDebug()<<"m_position.distanceToPoint(m_positionFollower): "<<dist;
    if (dist > m_positionFollowerDistance)
    {
        _moveYFollower(d);
    }
}

void Placement::_moveYFollower(float d)
{
    if (d == 0)
        return;
    QVector3D xAxis;
    QVector3D yAxis;
    QVector3D zAxis;
    m_direction.getAxes(&xAxis, &yAxis, &zAxis);
    setPositionFollower( positionFollower() + yAxis*d);
    emit positionFollowerChanged(m_positionFollower);
}

void Placement::_moveZ(float d)
{
    if (d == 0)
        return;
    QVector3D xAxis;
    QVector3D yAxis;
    QVector3D zAxis;

    m_direction.getAxes(&xAxis, &yAxis, &zAxis);
    setPosition( position() + zAxis*d);
    emit positionChanged(m_position);
    if (d > 0)
        emit rightMoved(d);
    else
        emit leftMoved(-d);

    if (!m_followerActive)
        return;

    float dist = m_position.distanceToPoint(m_positionFollower);
    //qDebug()<<"m_position.distanceToPoint(m_positionFollower): "<<dist;
    if (dist > m_positionFollowerDistance)
    {
        _moveZFollower(d);
    }
}

void Placement::_moveZFollower(float d)
{
    if (d == 0)
        return;
    QVector3D xAxis;
    QVector3D yAxis;
    QVector3D zAxis;
    m_direction.getAxes(&xAxis, &yAxis, &zAxis);
    setPositionFollower( positionFollower() + zAxis*d);
    emit positionFollowerChanged(m_positionFollower);
}

void Placement::_updateAxes()
{
    m_direction.getAxes(&m_frontAxis, &m_UpAxis, &m_RightAxis);
    emit frontChanged(m_frontAxis);
    emit rightChanged(m_RightAxis);
    emit upChanged(m_UpAxis);
}

QVector3D Placement::up()
{
    m_direction.getAxes(&m_frontAxis, &m_UpAxis, &m_RightAxis);
    return m_UpAxis;
}

QVector3D Placement::front()
{
    m_direction.getAxes(&m_frontAxis, &m_UpAxis, &m_RightAxis);
    return m_frontAxis;
}

QVector3D Placement::right()
{
    m_direction.getAxes(&m_frontAxis, &m_UpAxis, &m_RightAxis);
    return m_RightAxis;
}


void Placement::getAxes(QVector3D *xAxis, QVector3D *yAxis, QVector3D *zAxis) const
{
    Q_ASSERT(xAxis && yAxis && zAxis);

    m_direction.getAxes(xAxis, yAxis, zAxis);
}

void Placement::setDirection(const QQuaternion &q)
{
    if (bDelayFollowingCamera)
    {
        //qDebug()<<"setDirection() delayIndex: "<<delayIndex;
        //qDebug()<<"setDirection() delaySize: "<<delaySize;
        m_directionDelay[delayIndex] = q;
        delayIndex++;
        if (delayIndex == delaySize)
            delayIndex = 0;
    }

    if (m_direction == q)
        return;
    m_direction = q;
    //m_direction.normalize();
    emit directionChanged(m_direction);
    //qDebug()<<"Placement::setDirection(const QQuaternion &q).....:"<<direction();
    updateCameraPosFromEye();
    _updateAxes();
}

void Placement::setPosition(const QVector3D &pos)
{
    if (m_position == pos)
        return;

   // qDebug()<<"wlaking position.............................."<<pos;

    if (!checkPath(pos))
        return;

    if (bDelayFollowingCamera)
    {
        //qDebug()<<"setPosition() delayIndex: "<<delayIndex;
        //qDebug()<<"setPosition() delaySize: "<<delaySize;
        m_directionDelay[delayIndex] = m_direction;
        delayIndex++;
        if (delayIndex == delaySize)
            delayIndex = 0;
    }
    m_position = pos;
    emit positionChanged(pos);
    updateCameraPosFromEye();

    //update follower
   // QVector3D aux = m_position;
    /*
    if (!m_followerActive)
        return;

    float dist = m_position.distanceToPoint(m_positionFollower);
    //qDebug()<<"m_position.distanceToPoint(m_positionFollower): "<<dist;
    if (dist < m_positionFollowerDistance)
        return;

    QVector3D xAxis;
    QVector3D yAxis;
    QVector3D zAxis;

    m_direction.getAxes(&xAxis, &yAxis, &zAxis);
    setPositionFollower(position() - xAxis * m_positionFollowerDistance
                        + zAxis * qCos(m_positionFollowerAngle) * m_positionFollowerDistance
                        );
    emit positionFollowerChanged(m_positionFollower);

*/

}

void Placement::setPosition(const float &x, const float &y, const float &z)
{
    setPosition(QVector3D(x, y, z));
}

void Placement::setPositionAdversary(const float &x, const float &y, const float &z)
{
    setPositionAdversary(QVector3D(x, y, z));
}

void Placement::setPositionAdversary(const QVector3D &pos)
{
    if (m_positionAdversary == pos)
        return;
    m_positionAdversary = pos;
    emit positionAdversaryChanged(m_positionAdversary);
}

void Placement::setPositionFollower(const QVector3D &pos)
{
    if (m_positionFollower == pos)
        return;
    m_positionFollower = pos;
    emit positionFollowerChanged(m_positionFollower);
}

void Placement::setPositionFollowerAngle(const float &angle)
{
    if(m_positionFollowerAngle == angle)
        return;
    m_positionFollowerAngle = angle;
    emit positionFollowerAngleChanged(angle);
}

void Placement::setPositionFollowerDistance(const float &distance)
{
    if (m_positionFollowerDistance == distance)
        return;
    m_positionFollowerDistance = distance;
    emit positionFollowerDistanceChanged(distance);
}

void Placement::setFollowerActive(const bool &followerActive)
{
    if (m_followerActive == followerActive)
        return;
    m_followerActive = followerActive;
    emit followerActiveChanged(followerActive);
}

QVector3D Placement::position()
{
    return m_position;
}

QVector3D Placement::positionAdversary()
{
    return m_positionAdversary;
}

QVector3D Placement::positionFollower()
{
    return m_positionFollower;
}

float Placement::positionFollowerAngle()
{
    return m_positionFollowerAngle;
}

float Placement::positionFollowerDistance()
{
    return m_positionFollowerDistance;
}

bool Placement::followerActive()
{
    return m_followerActive;
}

void Placement::setPathCircularCenterRadius(const QVector3D &pathCircularCenterRadius_)
{
    if (m_pathCircularCenterRadius == pathCircularCenterRadius_)
        return;
    m_pathCircularCenterRadius = pathCircularCenterRadius_;
    emit pathCircularChanged(pathCircularCenterRadius_);
}

void Placement::setUsePathCircular(const bool &usePathCircular_)
{
    if (m_usePathCircular == usePathCircular_)
        return;
    m_usePathCircular = usePathCircular_;
    emit usePathCircularChanged(usePathCircular_);
}

void Placement::setPathRectangularXminXmaxZminZmax(const QVector4D &pathRectangularXminXmaxZminZmax_)
{
    if (m_pathRectangularXminXmaxZminZmax == pathRectangularXminXmaxZminZmax_)
        return;
    m_pathRectangularXminXmaxZminZmax = pathRectangularXminXmaxZminZmax_;
    emit pathRectangularChanged(pathRectangularXminXmaxZminZmax_);
}

void Placement::setUsePathRectangular(const bool &usePathRectangular_)
{
    if (m_usePathRectangular == usePathRectangular_)
        return;
    m_usePathRectangular = usePathRectangular_;
    emit usePathRectangularChanged(usePathRectangular_);
}

QQuaternion Placement::direction()
{
    return m_direction;
}


QVector3D Placement::updateCameraPosFromEye()
{
    QVector3D xAxis;
    QVector3D yAxis;
    QVector3D zAxis;

    float distX = 300;
    float distY = 100;


    m_direction.getAxes(&xAxis, &yAxis, &zAxis);
    m_CameraPosition = position() - xAxis*distX + yAxis*distY;

    //qDebug()<<"Placement::updateCameraPosFromEye(float d)...antes..."<<m_CameraPosition;

    emit cameraPosChanged(m_CameraPosition);

    //qDebug()<<"Placement::updateCameraPosFromEye(float d)...depois...."<<m_CameraPosition;
    //qDebug()<<"Placement::updateCameraPosFromEye(float d)...direction"<<direction();
    //qDebug()<<"Placement::updateCameraPosFromEye(float d)...CamDirection"<<cameraDirection();

    return m_CameraPosition;
}

QQuaternion Placement::cameraDirection()
{
    //change later
    return m_direction;
}

QQuaternion Placement::delayDirection()
{
    if (bDelayFollowingCamera) {
        if (delayIndex >= delaySize-1)
        {
            return m_directionDelay.at(0);
        }
        else
        {
            return m_directionDelay.at(delayIndex+1);
        }
        //return m_directionDelay.at(delayIndex);
    }
    else
        return m_direction;
}

QMatrix4x4 Placement::matrixModel()
{
    QMatrix4x4 model;
    model.rotate(m_direction);
    model.translate(m_position);
    return model;
}

/*void Placement::addPathRect(const PathRectangular &path)
{
    m_path.addPathRect(path);
}*/


void Placement::addPathRect(float xmin, float xmax, float ymin, float ymax, float zmin, float zmax)
{
    m_path.addPathRect(xmin, xmax, ymin, ymax,zmin, zmax);
}

void Placement::addPathCircular(QVector3D center, float radius, float pathHeight)
{
    //qDebug()<<"Placement::addPathCircular()"<<center;
    m_path.addPathCircular(center, radius, pathHeight);
}


/*void Placement::addPathCircular(const PathCircular &path)
{
    m_path.addPathCircular(path);
}*/

bool Placement::checkPath(const QVector3D &pos)
{
    return m_path.checkPath(pos);
}

void Placement::clearPath()
{
    m_path.clearPath();
}

/*
bool Placement::checkPath(QVector3D pos)
{
    if (!m_usePathRectangular && !m_usePathCircular)
        return true;

    //qDebug()<<"Placement::checkPath: "<<pos;
    bool pathRectangularOk = false;
    bool pathCircularOk = false;

    if (m_usePathRectangular)
    {
        if ( pos.x() < m_pathRectangularXminXmaxZminZmax.y()
                && pos.x() > m_pathRectangularXminXmaxZminZmax.x()
                && pos.z() < m_pathRectangularXminXmaxZminZmax.w()
                && pos.z() > m_pathRectangularXminXmaxZminZmax.z() )
            pathRectangularOk = true;
    }

    if (m_usePathCircular)
    {
        float dist = qSqrt( qPow( pos.x() - m_pathCircularCenterRadius.x(),2 )
                            + qPow( pos.z() - m_pathCircularCenterRadius.y(),2 ) );
        if ( dist < m_pathCircularCenterRadius.z() )
            pathCircularOk = true;
    }

    return (pathRectangularOk || pathCircularOk);
}
*/

void Placement::swapLeaderFollowerPosition()
{
    QVector3D aux = m_position;
    QVector3D auxFollower = m_positionFollower;
    setPosition(auxFollower);
    setPositionFollower(aux);
}

void Placement::rotation180()
{
    rotateY(180);
}

QQuaternion Placement::calculateQuaternionAdversary()
{
    QQuaternion quaternionAdversary;
    QVector3D aux = m_positionAdversary - m_position;
    qDebug()<<"m_positionAdversary: "<<m_positionAdversary;
    qDebug()<<"m_position: "<<m_position;
    qDebug()<<"aux: "<<aux;
    aux.normalize();
    qDebug()<<"aux.normalize(): "<<aux;

    quaternionAdversary.fromDirection(aux, QVector3D(0, 1, 0));
    qDebug()<<"quaternionAdversary: "<<quaternionAdversary;

    return quaternionAdversary;
}
