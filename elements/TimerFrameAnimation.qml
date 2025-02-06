import QtQuick //2.3
import "../"

Item {
    id: root

    //property bool useFrameAnimation: true
    property bool running: false

    signal triggered()

    FrameAnimation {
        running: root.running && mainRoot.useFrameAnimation
        //interval: fps_ms
        //repeat: true
        onTriggered: {
            if (useFrameAnimation)
                root.triggered()
        }

    }

    Timer {
        running: root.running && !mainRoot.useFrameAnimation
        interval: fps_ms
        repeat: true
        onTriggered: {
            if (!useFrameAnimation)
                root.triggered()
        }
    }
}
