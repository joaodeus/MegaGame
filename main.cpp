#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QtGui>
//#include <QSurfaceFormat>
//#include <QtQuick3D/qquick3d.h>
#include <QScreen>

#include "oceanEffect/oceaneffect.h"
#include "placement.h"
#include "pathrectangular.h"
#include "pathcircular.h"

int main(int argc, char *argv[])
{
    //QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    app.setOrganizationName("Apps4funwork");
    app.setOrganizationDomain("https://apps4funwork.carrd.co/");
    app.setApplicationName("DavidGalaticAdventures");

    //QScreen sc;
    QScreen *screen = QGuiApplication::primaryScreen();
    qDebug()<<"refreshRate: "<<screen->refreshRate();

    //QSurfaceFormat::setDefaultFormat(QQuick3D::idealSurfaceFormat(4));

    qmlRegisterType<Placement>("Placement", 1, 0, "Placement");
    qmlRegisterType<OceanEffect>("OceanEffect", 1, 0, "OceanEffect");
    qmlRegisterType<PathRectangular>("PathRectangular", 1, 0, "PathRectangular");
    qmlRegisterType<PathCircular>("PathCircular", 1, 0, "PathCircular");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
