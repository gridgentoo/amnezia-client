import QtQuick
import QtQuick.Controls

Drawer {
    edge: Qt.BottomEdge

    clip: true
    modal: true

    enter: Transition {
        SmoothedAnimation {
            velocity: 4
        }
    }
    exit: Transition {
        SmoothedAnimation {
            velocity: 4
        }
    }

    background: Rectangle {
        anchors.fill: parent
        anchors.bottomMargin: -radius
        radius: 16
        color: "#1C1D21"

        border.color: "#2C2D30"
        border.width: 1
    }

    Overlay.modal: Rectangle {
        color: Qt.rgba(14/255, 14/255, 17/255, 0.8)
    }
}