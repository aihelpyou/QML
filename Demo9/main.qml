import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property int __tipMaxLen: 70
    Rectangle{
        x:100
        y:100
        width: 720
        height: 90

        Grid{
            rows: 3
            columns: 2
            rowSpacing: 8
            columnSpacing: 152
            anchors.fill: parent

            Row{
                spacing: 12
                Label {
                    text: qsTr("采集器型号")
                    font.family: "Microsoft YaHei"
                    font.pixelSize: 14
                    color: "#73000000"
                    verticalAlignment: colletorTypeData.verticalAlignment
                    horizontalAlignment: Text.AlignRight
                    width: __tipMaxLen
                }
                Text {
                    id:colletorTypeData
                    text: "XXXXXXXXXXXXXXXXX"
                    font.family: "Microsoft YaHei"
                    font.pixelSize: 14
                    color: "#D9000000"
                }
            }//Row


            Row{
                spacing: 12
                Label {
                    text: qsTr("Device ID")
                    font.family: "Microsoft YaHei"
                    font.pixelSize: 14
                    color: "#73000000"
                    verticalAlignment: deviceIdData.verticalAlignment
                    horizontalAlignment: Text.AlignRight
                    width: __tipMaxLen
                }
                Text {
                    id:deviceIdData
                    text: "XXXXXXXXXXXXXXXXX"
                    font.family: "Microsoft YaHei"
                    font.pixelSize: 14
                    color: "#D9000000"
                }
            }//Row


            Row{
                spacing: 12
                Label {
                    text: qsTr("mac")
                    font.family: "Microsoft YaHei"
                    font.pixelSize: 14
                    color: "#73000000"
                    verticalAlignment: macTextData.verticalAlignment
                    horizontalAlignment: Text.AlignRight
                    width: __tipMaxLen
                }
                Text {
                    id:macTextData
                    text: "XXXXXXXXXXXXXXXXX"
                    font.family: "Microsoft YaHei"
                    font.pixelSize: 14
                    color: "#D9000000"
                }
            }//Row

            Row{
                spacing: 12
                Label {
                    text: qsTr("绑定组织")
                    font.family: "Microsoft YaHei"
                    font.pixelSize: 14
                    color: "#73000000"
                    verticalAlignment: orgNameData.verticalAlignment
                    horizontalAlignment: Text.AlignRight
                    width: __tipMaxLen
                }
                Text {
                    id:orgNameData
                    width: 250
                    wrapMode:Text.WrapAnywhere
                    text: "XXXXXXXXXXXXXXXXX"
                    font.family: "Microsoft YaHei"
                    font.pixelSize: 14
                    color: "#D9000000"
                }
            }//Row


            Row{
                spacing: 12
                Label {
                    text: qsTr("IP地址")
                    font.family: "Microsoft YaHei"
                    font.pixelSize: 14
                    color: "#73000000"
                    verticalAlignment: ipData.verticalAlignment
                    horizontalAlignment: Text.AlignRight
                    width: __tipMaxLen
                }
                Text {
                    id:ipData
                    text: "XXXXXXXXXXXXXXXXX"
                    font.family: "Microsoft YaHei"
                    font.pixelSize: 14
                    color: "#D9000000"
                }
            }//Row
        }// Grid
    }// Rectangle
}
