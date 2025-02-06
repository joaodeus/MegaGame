import QtQuick 2.0
import QtQuick.Controls
import "../elements"

Rectangle {

    property alias volumeValue: sliderVolumeControl.value
    property alias showStatistics: checkBoxStatistics.checked
    property alias checkBoxUseFrameAnimation: checkBoxUseFrameAnimation.checked
    //property alias checkBoxDontShowAssets: checkBoxDontShowAssets
    //property alias checkBoxUseAndroidFakeSkybox: checkBoxUseAndroidFakeSkybox.checked

    property alias textInput_fps: textInput_fps

    Image {
        anchors.fill: parent
        source: "qrc:/images/skybox/galaxy5.png"
    }

    ButtonA {
        anchors.margins: defaultMargins
        anchors.top: parent.top
        anchors.right: parent.right
        source: "qrc:/images/buttons/btn_close.png"
        onClick: parent.click()
    }

    signal click()

    //Item {
      //  anchors.fill: parent
       // anchors.margins: defaultMargins

        Column {
            anchors.fill: parent
            anchors.topMargin: defaultMargins * 2
            anchors.leftMargin: defaultMargins * 2
            spacing: 2 * defaultMargins

            Text {
                id: textSoundVolume
                text: qsTr("Sound volume")
                color: "white"
                font.pixelSize: textSize
            }
            Slider {
                id: sliderVolumeControl
                value: settings.soundVolume
                onPressedChanged: pressed ?
                                      backgroundMusic.play() :
                                      backgroundMusic.stop()
            }

            Row {
                CheckBox {
                    id: checkBoxStatistics
                    //text: qsTr("Show Statistics, should only be active for debuging.")
                    //font.color: "white"
                    //font.pixelSize: textSize
                    checked: false
                }
                Text {
                    text: qsTr("Show Statistics, should only be active for debuging.")
                    color: "white"
                    font.pixelSize: textSize
                }
            }

            Row {
                CheckBox {
                    id: checkBoxUseFrameAnimation
                    checked: true
                }
                Text {
                    text: qsTr("Use FrameAnimation instead of Timer, note FrameAnimation it is causing a bug with the camera drift animation in planet view")
                    color: "white"
                    font.pixelSize: textSize
                }
            }

            /*Row {
                CheckBox {
                    id: checkBoxDontShowAssets
                    checked: true
                }
                Text {
                    text: qsTr("Dont show some assets in some levels to test performance difference in Android")
                    color: "white"
                    font.pixelSize: textSize
                }
            }*/

            /*Row {
                CheckBox {
                    id: checkBoxUseAndroidFakeSkybox
                    checked: true
                }
                Text {
                    text: qsTr("Use Android fake skybox")
                    color: "white"
                    font.pixelSize: textSize
                }
            }*/

            ComboBox {
                id: _cameraType
                //currentIndex: 0
                model: ListModel {
                    id: model
                    ListElement { text: "Camera 1" }
                    ListElement { text: "Camera 2" }
                    ListElement { text: "Camera 3" }
                    ListElement { text: "Camera 4" }
                    ListElement { text: "Camera 5" }
                }
                //onCurrentIndexChanged: {
                //}
            }

            Text {
                id: text_fps
                text: qsTr("fps: ")
                color: "white"
                font.pixelSize: textSize
            }

            TextInput {
                id: textInput_fps
                text: "60"
                cursorVisible: false
                color: "white"
                font.pixelSize: textSize
                validator: IntValidator{}
                onAccepted: {
                    console.log("textInput_fps.text: "+textInput_fps.text)
                    mainRoot.fps = parseInt(textInput_fps.text)
                }
            }

        }//Column

        property alias cameraIndex: _cameraType.currentIndex
        property alias cameraType: _cameraType.currentIndex

        onCameraTypeChanged: console.log("cameraType: "+cameraType)
 //   }
}
