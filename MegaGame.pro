TEMPLATE = app

QT += quick multimedia quick3d gui

TARGET = Mega

#CONFIG += c++11 #qmltypes
#QML_IMPORT_NAME = com.estudiotecnologico
#QML_IMPORT_MAJOR_VERSION = 1
#INCLUDEPATH += $$PWD
#INCLUDEPATH += $$PWD/oceanEffect

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
        oceanEffect/oceaneffect.cpp \
        path.cpp \
        pathcircular.cpp \
        pathrectangular.cpp \
        placement.cpp

RESOURCES += qml.qrc \
    blenderTesting.qrc \
    image.qrc \
    modelDavid.qrc \
    modelGirl.qrc \
    modelHero.qrc \
    models.qrc \
    modelsBuildingsProps.qrc \
    modelsCharatersLowPoly.qrc \
    modelstest.qrc \
    skybox.qrc \
    sound.qrc \
    texturesPlanets.qrc

TRANSLATIONS += \
    MegaGame_pt_PT.ts

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    oceanEffect/oceaneffect.h \
    path.h \
    pathcircular.h \
    pathrectangular.h \
    placement.h


ios {
    ios_icon.files = $$files($$PWD/ios/AppIcon*.png)
    QMAKE_BUNDLE_DATA += ios_icon
    QMAKE_INFO_PLIST = ios/Info.plist
}

DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle.properties \
    android/gradle.properties \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

win32:{
    QMAKE_CXXFLAGS += -flarge-source-files
    RC_FILE = appicon.rc
}

#linux: QMAKE_CXXFLAGS += -flarge-source-files
ICON = images/spaceshipAlpha.icns
