import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: mainwindow
    width: 1000
    minimumWidth: 500
    height: 800
    minimumHeight: 400
    visible: true
    title: qsTr("ToChat")

    Rectangle {
        id: left_column
        anchors.left: parent.x
        anchors.top: parent.y
        width: 100
        height: parent.height
        visible: true
        color: "gray"


        Rectangle {
            id: label_message
            anchors.left: parent.x
            anchors.top: parent.y
            width: parent.width
            height: parent.width/2
            visible: true

            MouseArea {
                anchors.fill:parent

//                onClicked {
//                    test_message.visible: ture
//                }

            }

            Text {
                id: labeltext_message
                text: qsTr("消息")
                font.family: "Verdana"
                font.pointSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent




            }
        }



    }


    Rectangle {
        id: mid_column
        anchors.left: left_column.right
        anchors.top: parent.y
        width: parent.width-left_column.width
        height: parent.height
        visible: true
        color: "#c7bfbf"

        Text {
            id: test_message
            text: qsTr("显示")
            font.family: "Verdana"
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
            visible: false
        }
    }
}



//    Rectangle {
//        id: rectangle
//        x: 40
//        y: 20
//        width: 120
//        height: 120
//        color: "red"

//        focus:true
//        Keys.onLeftPressed: rectangle.x -= 10

//        TapHandler {
//            onTapped: rectangle.width += 10
//        }
//    }


