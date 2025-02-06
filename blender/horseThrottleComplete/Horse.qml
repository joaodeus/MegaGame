import QtQuick
import QtQuick3D

Node {

    /*

      blender animation: 0-80
      0-10: star walking:
      10-30: walk (repeat)
      30-40: stop walking
      40-80 jump
      -----
      animation frames: 0-3334
      frames relation:
      10: 417
      30: 1250
      40: 1667
      80: 3334

*/
    /*        startFrame: 0
        endFrame: 3334*/

    property real conv: 3334/80 // convertion from blender time to number of frames
    property bool walk: false

    //property bool jump: false
    signal horseJump()
    onHorseJump: {
        ho.tl.stop()
        ho.tl.loops = 1
        ho.tl.from = 40 * conv
        ho.tl.to = 3334
        ho.tl.duration = (ho.tl.to - ho.tl.from)*0.75
        ho.tl.start()
    }

    onWalkChanged: {
        console.log("walk: "+walk)

        // start walking
        if (walk) {
            ho.tl.loops = Animation.Infinite
            ho.tl.from = 0
            ho.tl.to = 20 * conv
            ho.tl.duration = ho.tl.to - ho.tl.from
            ho.tl.start()
        }
        else {

            // stop walking

            if (ho.currentFrame < 10*conv) {
                ho.tl.stop()
                ho.tl.from = ho.currentFrame
                ho.tl.to = 10 * conv
                ho.tl.duration = ho.tl.to - ho.tl.from
                ho.tl.loops = 1
                ho.tl.start()
            }
            else {
                ho.tl.stop()
                ho.tl.from = ho.currentFrame
                ho.tl.to = 20 * conv
                ho.tl.duration = ho.tl.to - ho.tl.from
                ho.tl.loops = 1
                ho.tl.start()
            }

        }
    }

    HorseThrottleComplete{
        id: ho
    }

}
