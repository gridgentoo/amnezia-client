import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

import "TextTypes"

RadioButton {
    id: root

    property string descriptionText

    property string hoveredColor: Qt.rgba(1, 1, 1, 0.05)
    property string defaultColor: Qt.rgba(1, 1, 1, 0)
    property string disabledColor: Qt.rgba(1, 1, 1, 0)
    property string selectedColor: Qt.rgba(1, 1, 1, 0)

    property string textColor: "#D7D8DB"
    property string selectedTextColor: "#FBB26A"

    property string pressedBorderColor: Qt.rgba(251/255, 178/255, 106/255, 0.3)
    property string selectedBorderColor: "#FBB26A"
    property string defaultBodredColor: "transparent"
    property int borderWidth: 0

    property string defaultCircleBorderColor: "#878B91"
    property string selectedCircleBorderColor: "#A85809"
    property string pressedCircleBorderColor: Qt.rgba(251/255, 178/255, 106/255, 0.3)

    property string defaultInnerCircleColor: "#FBB26A"

    property string imageSource
    property bool showImage

    hoverEnabled: true

    indicator: Rectangle {
        id: background

        anchors.verticalCenter: parent.verticalCenter

        implicitWidth: 56
        implicitHeight: 56
        radius: 16

        color: {
            if (root.enabled) {
                if (root.hovered) {
                    return hoveredColor
                } else if (root.checked) {
                    return selectedColor
                }
                return defaultColor
            } else {
                return disabledColor
            }
        }

        Behavior on color {
            PropertyAnimation { duration: 200 }
        }

        Image {
            source: imageSource
            visible: showImage

            anchors.centerIn: parent

            width: 24
            height: 24
        }

        Rectangle {
            id: outerCircle

            width: 24
            height: 24
            radius: 16

            visible: !showImage

            anchors.centerIn: parent

            color: "transparent"
            border.color: {
                if (root.enabled) {
                    if (root.pressed) {
                        return pressedCircleBorderColor
                    } else if (root.checked) {
                        return selectedCircleBorderColor
                    }
                }
                return defaultCircleBorderColor
            }

            border.width: 1

            Behavior on border.color {
                PropertyAnimation { duration: 200 }
            }

            Rectangle {
                id: innerCircle

                width: 12
                height: 12
                radius: 16

                anchors.centerIn: parent

                color: "transparent"
                border.color: defaultInnerCircleColor
                border.width: {
                    if (root.enabled) {
                        if(root.checked) {
                            return 6
                        }
                        return root.pressed ? 6 : 0
                    } else {
                        return 0
                    }
                }

                Behavior on border.width {
                    PropertyAnimation { duration: 200 }
                }
            }

            DropShadow {
                anchors.fill: innerCircle
                horizontalOffset: 0
                verticalOffset: 0
                radius: 12
                samples: 13
                color: "#FBB26A"
                source: innerCircle
            }
        }
    }

    contentItem: ColumnLayout {
        id: content
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 8 + background.width

        spacing: 4

        ListItemTitleType {
            text: root.text

            color: {
                if (root.checked) {
                    return selectedTextColor
                }
                return textColor
            }

            Layout.fillWidth: true
            Layout.topMargin: 16
            Layout.bottomMargin: description.visible ? 0 : 16

            Behavior on color {
                PropertyAnimation { duration: 200 }
            }
        }

        CaptionTextType {
            id: description

            color: "#878B91"
            text: root.descriptionText

            visible: root.descriptionText !== ""

            Layout.fillWidth: true
            Layout.bottomMargin: 16
        }
    }

    MouseArea {
        anchors.fill: root
        cursorShape: Qt.PointingHandCursor
        enabled: false
    }
}

