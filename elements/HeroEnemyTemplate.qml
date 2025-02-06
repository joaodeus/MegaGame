import QtQuick 2.0

QtObject {
    property int energy: 5

    signal iamHit()
    signal iAmDestroyed()

    onIamHit: {
        energy--
        if (energy<=0)
            iAmDestroyed()
    }
}
