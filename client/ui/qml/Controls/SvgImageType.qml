import QtQuick
import QtQuick.Controls
import Qt5Compat.GraphicalEffects

Item {
    id: root
    property color color: "#181922"
    property alias svg: image
    Image {
        anchors.fill: parent
        id: image
        sourceSize: Qt.size(root.width, root.height)

        antialiasing: true
        visible: false
    }

    ColorOverlay {
        anchors.fill: image
        source: image
        color: root.enabled ? root.color : "grey"
    }
}
