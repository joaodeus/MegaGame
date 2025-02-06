import QtQuick 2.0
import QtQuick3D
import "../"

Item {
    anchors.fill: parent

    property View3D view: undefined


    Text {
        id: stats
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        //font.bold: true
        font.pixelSize: textSizeDebug
        text: visible ? qsTr("\n--Render Stats------------------------------------------------\nOS: ")
              +Qt.platform.os
        + qsTr("\nTimer values - property int fps: "+fps)
        + qsTr("\nproperty int fps_ms: 1000/fps: "+fps_ms)
              + qsTr("\nrenderStats.fps: ")+ view.renderStats.fps
              +qsTr("\nrenderStats.frameTime: ")+view.renderStats.frameTime
              +qsTr("\nrenderStats.maxFrameTime: ")+view.renderStats.maxFrameTime
              +qsTr("\nrenderStats.renderPrepareTime: ")+view.renderStats.renderPrepareTime
        +qsTr("\nrenderStats.renderTime: ")+view.renderStats.renderTime
        +qsTr("\nrenderStats.syncTime: ")+view.renderStats.syncTime
                      : ""
        color: "red"
        onTextChanged: function(text) {console.log(text)}
        visible: levelStates.menuOptions.showStatistics
    }

}
