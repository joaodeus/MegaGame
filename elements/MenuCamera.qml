import QtQuick 2.0

Item {
    width: r.width

    Row {
        id: r
        spacing: defaultMargins
        //layoutDirection: Qt.RightToLeft
        ButtonA {
            source: "qrc:/images/buttons/camera.png"
            text: "cam1"
            onClick: {
                menuOptions.cameraIndex = 0
                close()
            }
        }
        ButtonA {
            source: "qrc:/images/buttons/camera.png"
            text: "cam2"
            onClick: {
                menuOptions.cameraIndex = 1
                close()
            }
        }

        ButtonA {
            source: "qrc:/images/buttons/camera.png"
            text: "cam3"
            onClick: {
                menuOptions.cameraIndex = 2
                close()
            }
        }

        ButtonA {
            source: "qrc:/images/buttons/camera.png"
            text: "cam4"
            onClick: {
                menuOptions.cameraIndex = 3
                close()
            }
        }

        ButtonA {
            source: "qrc:/images/buttons/camera.png"
            text: "cam5"
            onClick: {
                menuOptions.cameraIndex = 4
                close()
            }
        }

    }

    signal close()
}
