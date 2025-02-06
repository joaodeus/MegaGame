#ifndef PLACEMENT_H
#define PLACEMENT_H

#include <QObject>
#include <QVector3D>
#include <QQuaternion>
#include <QMatrix4x4>

//#include "pathrectangular.h"
//#include "pathcircular.h"
#include "path.h"

class Placement : public QObject
{
    Q_OBJECT
    QML_NAMED_ELEMENT(Placement)
    Q_PROPERTY(QQuaternion direction READ direction WRITE setDirection NOTIFY directionChanged)
    Q_PROPERTY(QVector3D position READ position WRITE setPosition NOTIFY positionChanged)
    Q_PROPERTY(QVector3D positionAdversary READ positionAdversary WRITE setPositionAdversary NOTIFY positionAdversaryChanged)
    Q_PROPERTY(QVector3D positionFollower READ positionFollower WRITE setPositionFollower NOTIFY positionFollowerChanged)
    Q_PROPERTY(float positionFollowerAngle READ positionFollowerAngle WRITE setPositionFollowerAngle NOTIFY positionFollowerAngleChanged)
    Q_PROPERTY(float positionFollowerDistance READ positionFollowerDistance WRITE setPositionFollowerDistance NOTIFY positionFollowerDistanceChanged)
    Q_PROPERTY(bool followerActive READ followerActive WRITE setFollowerActive NOTIFY followerActiveChanged)

    Q_PROPERTY(float xRotation READ getRotateX WRITE rotateX NOTIFY xRotated)
    Q_PROPERTY(float yRotation READ getRotateY WRITE rotateY NOTIFY yRotated)
    Q_PROPERTY(float zRotation READ getRotateZ WRITE rotateZ NOTIFY zRotated)

    Q_PROPERTY(float frontMovement READ getFrontMove WRITE moveFront NOTIFY frontMoved)
    Q_PROPERTY(float backMovement READ getBackMove WRITE moveBack NOTIFY backMoved)
    Q_PROPERTY(float rightMovement READ getRightMove WRITE moveRight NOTIFY rightMoved)
    Q_PROPERTY(float leftMovement READ getLeftMove WRITE moveLeft NOTIFY leftMoved)
    Q_PROPERTY(float upMovement READ getUpMove WRITE moveUp NOTIFY upMoved)
    Q_PROPERTY(float downMovement READ getDownMove WRITE moveDown NOTIFY downMoved)

    Q_PROPERTY(QVector3D front READ front NOTIFY frontChanged)
    Q_PROPERTY(QVector3D right READ front NOTIFY rightChanged)
    Q_PROPERTY(QVector3D up READ front NOTIFY upChanged)

    Q_PROPERTY(QVector3D pathCircular READ pathCircular WRITE setPathCircularCenterRadius NOTIFY pathCircularChanged)
    Q_PROPERTY(bool usePathCircular READ usePathCircular WRITE setUsePathCircular NOTIFY usePathCircularChanged)
    Q_PROPERTY(QVector4D pathRectangular READ pathRectangularXminXmaxZminZmax WRITE setPathRectangularXminXmaxZminZmax NOTIFY pathRectangularChanged)
    Q_PROPERTY(bool usePathRectangular READ usePathRectangular WRITE setUsePathRectangular NOTIFY usePathRectangularChanged)


public:
    explicit Placement(QObject *parent = nullptr);

    void resetPosition();
    void resetDirection();

public slots:
    //pitch(), yaw(), roll() same as rotateX(), rotateY(), rotateZ()
    void pitch(float angle);
    void yaw(float angle);
    void roll(float angle);

    void rotateX(const float &angle);
    void rotateY(const float &angle);
    void rotateZ(const float &angle);

    float getRotateX(){return m_rotateX;}
    float getRotateY(){return m_rotateY;}
    float getRotateZ(){return m_rotateZ;}

    float getFrontMove(){return m_moveFront;}
    float getBackMove(){return m_moveBack;}
    float getUpMove(){return m_moveUp;}
    float getDownMove(){return m_moveDown;}
    float getRightMove(){return m_moveRight;}
    float getLeftMove(){return m_moveLeft;}

    void moveFront(float d);
    void moveBack(float d);
    void moveLeft(float d);
    void moveRight(float d);
    void moveUp(float d);
    void moveDown(float d);

    QVector3D pathCircular(){return m_pathCircularCenterRadius;}
    bool usePathCircular(){return m_usePathCircular;}
    QVector4D pathRectangularXminXmaxZminZmax(){return m_pathRectangularXminXmaxZminZmax;}
    bool usePathRectangular(){return m_usePathRectangular;}


    QQuaternion rotate(QQuaternion q1, QQuaternion q2);
    void setDirection(const QQuaternion &q);
    void setPosition(const QVector3D &pos);
    void setPosition(const float &x, const float &y, const float &z);
    void setPositionAdversary(const QVector3D &pos);
    void setPositionAdversary(const float &x, const float &y, const float &z);
    void setPositionFollower(const QVector3D &pos);
    //void setPositionFollower(const float &x, const float &y, const float &z);
    void setPositionFollowerAngle(const float &angle);
    void setPositionFollowerDistance(const float &distance);
    void setFollowerActive(const bool &followerActive);

    void setPathCircularCenterRadius(const QVector3D &pathCircularCenterRadius_);
    void setUsePathCircular(const bool &usePathCircular_);
    void setPathRectangularXminXmaxZminZmax(const QVector4D &pathRectangularXminXmaxZminZmax_);
    void setUsePathRectangular(const bool &usePathRectangular_);

    // camara
    QVector3D updateCameraPosFromEye();
    QQuaternion cameraDirection();

    QVector3D up();
    QVector3D front();
    QVector3D right();

private:
    void _moveX(float d);
    void _moveXFollower(float d);
    void _moveY(float d);
    void _moveYFollower(float d);
    void _moveZ(float d);
    void _moveZFollower(float d);
    void _updateAxes();

public:

    void getAxes(QVector3D *xAxis, QVector3D *yAxis, QVector3D *zAxis) const;


signals:
    void directionChanged(QQuaternion newDirection);
    void positionChanged(QVector3D newPosition);
    void positionAdversaryChanged(QVector3D newPosition);
    void positionFollowerChanged(QVector3D newPositionFollower);
    void positionFollowerAngleChanged(float newPositionFollowerAngle);
    void positionFollowerDistanceChanged(float newPositionFollowerDistance);
    void followerActiveChanged(bool newFollowerActive);

    void cameraPosChanged(QVector3D newCameraPos);

    void frontChanged(QVector3D newFront);
    void rightChanged(QVector3D newRight);
    void upChanged(QVector3D newUp);

    void xRotated(float angle);
    void yRotated(float angle);
    void zRotated(float angle);

    void frontMoved(float delta);
    void backMoved(float delta);
    void upMoved(float delta);
    void downMoved(float delta);
    void rightMoved(float delta);
    void leftMoved(float delta);

    void pathCircularChanged(QVector3D newPathCircular);
    void usePathCircularChanged(bool newUsePathCircular);
    void pathRectangularChanged(QVector4D newPathRectangular);
    void usePathRectangularChanged(bool newUsePathRectangular);

public:
    QVector3D position();
    QVector3D positionAdversary();
    QVector3D positionFollower();
    float positionFollowerAngle();
    float positionFollowerDistance();
    bool followerActive();

    QQuaternion direction();
    QQuaternion delayDirection();

    QMatrix4x4 matrixModel();

    //bool checkPath(QVector3D pos);

public slots:
    //void addPathRect(const PathRectangular &path);
    void addPathRect(float xmin, float xmax, float ymin, float ymax,
                     float zmin, float zmax);

    void addPathCircular(QVector3D center, float radius, float pathHeight);
    //void addPathCircular(const PathCircular &path);
    bool checkPath(const QVector3D &pos);
    void clearPath();

    void swapLeaderFollowerPosition();

    void rotation180();

    QQuaternion calculateQuaternionAdversary();

protected:
    QQuaternion m_direction;
    QVector3D m_position;
    QVector3D m_positionAdversary;
    QVector3D m_positionFollower;
    float m_positionFollowerAngle;
    float m_positionFollowerDistance;
    bool m_followerActive;

    QVector3D m_CameraPosition;

    QVector3D m_frontAxis;
    QVector3D m_UpAxis;
    QVector3D m_RightAxis;

    float m_rotateX;
    float m_rotateY;
    float m_rotateZ;

    float m_moveFront;
    float m_moveBack;
    float m_moveUp;
    float m_moveDown;
    float m_moveRight;
    float m_moveLeft;

    //used to delay the camera rotation and position, this gives a nice effect when the camera is following a moving object
    QVector<QQuaternion> m_directionDelay;
    int delaySize;
    int delayIndex;
    bool bDelayFollowingCamera;

    //PathCircular
    QVector3D m_pathCircularCenterRadius;
    bool m_usePathCircular;

    //PathRectangular
    QVector4D m_pathRectangularXminXmaxZminZmax;
    bool m_usePathRectangular;


    Path m_path;

};

#endif // PLACEMENT_H
