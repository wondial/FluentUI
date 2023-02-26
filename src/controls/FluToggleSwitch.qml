﻿import QtQuick 2.0
import QtQuick.Controls 2.0

Switch {
    id: root
    property color checkedColor: "#0064B0"

    indicator: Rectangle {
        width: 40
        height: 20
        radius: height / 2
        color: root.checked ? checkedColor : "white"
        border.width: 1
        border.color: root.checked ? checkedColor : "#666666"

        Rectangle {
            x: root.checked ? parent.width - width - 4 : 4
            width: root.checked ? parent.height - 8 : parent.height - 8
            height: width
            radius: width / 2
            anchors.verticalCenter: parent.verticalCenter
            color: root.checked ? "#FFFFFF" : "#666666"
//            border.color: "#D5D5D5"

            Behavior on x {
                NumberAnimation { duration: 200 }
            }
        }
    }
}
