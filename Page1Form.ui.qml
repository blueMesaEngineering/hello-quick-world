import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    width: 600
    height: 400
    property alias icon: icon
    property alias mouseArea2: mouseArea2
    property alias mouseArea: mouseArea
    property alias mouseArea1: mouseArea1
    property alias topLeftRect: topLeftRect
    property alias bottomLeftRect: bottomLeftRect
    property alias middleRightRect: middleRightRect
    z: 2147483646

    header: Label {
        id: label
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10

        Rectangle {
            id: topLeftRect
            width: 55
            height: 41
            color: "#00000000"
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 20

            MouseArea {
                id: mouseArea
                z: -1
                anchors.fill: parent
            }
        }

        Image {
            id: icon
            x: 10
            y: 20
            width: 55
            height: 41
            z: -1
            fillMode: Image.PreserveAspectFit
            source: "qt-logo.png"
        }
    }

    Rectangle {
        id: middleRightRect
        x: 46
        y: 47
        width: 55
        height: 41
        color: "#00000000"
        z: -3
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            z: -1
        }
    }

    Label {
        text: qsTr("You are on Page 1.")
        anchors.centerIn: parent
    }

    Rectangle {
        id: bottomLeftRect
        x: 7
        y: 47
        width: 55
        height: 41
        color: "#00000000"
        z: -2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.leftMargin: 10
        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            z: -1
        }
        anchors.left: parent.left
    }
}




/*##^## Designer {
    D{i:6;anchors_height:100;anchors_width:100;anchors_x:8;anchors_y:8}D{i:5;anchors_width:55;anchors_x:46;anchors_y:47}
D{i:9;anchors_height:100;anchors_width:100;anchors_x:8;anchors_y:8}D{i:8;anchors_height:41;anchors_x:46;anchors_y:47}
D{i:3;anchors_height:100;anchors_width:100;anchors_x:8;anchors_y:8}D{i:2;anchors_x:46;anchors_y:47}
}
 ##^##*/
