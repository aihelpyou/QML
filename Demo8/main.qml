import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        width:760
        height: 85
        x:100
        y:100

        Grid{
            anchors.fill: parent
            anchors.topMargin: 0
            rows:2
            columns: 2
            rowSpacing: 12
            columnSpacing: 8
            Text {
                text: qsTr("设备类型")
                font.family: "Microsoft YaHei"
                font.pixelSize: 14
                color: "#73000000"
            }
            Text {
                id: deviceTypeData
                text:"XXXXXXXXXXXXXXXXX" //__deviceType
                font.family: "Microsoft YaHei"
                font.pixelSize: 14
                color: "#D9000000"
            }
            Text {
                text: qsTr("绑定组织")
                font.family: "Microsoft YaHei"
                font.pixelSize: 14
                color: "#73000000"
            }
            Text {
                id: bindOrgData
                width: 600
                wrapMode:Text.WrapAnywhere
                text: "XXXXXXXXXXXXXXXXX" //__orgName
                font.family: "Microsoft YaHei"
                font.pixelSize: 14
                color: "#D9000000"
            }
        }// Grid
    }// Rectangle
}
