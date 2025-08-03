import QtQuick 2.0
import QtQuick.Window 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.12

Window {
    id: root
    width: 360
    height: 360
    visible: true

    ColumnLayout {
        anchors.fill: parent
        spacing: 5  // 适当的间距

        TableView {
            id: phoneTable
            Layout.fillWidth: true
            Layout.fillHeight: true  // 自动填充可用空间
            focus: true

            TableViewColumn { role: "name"; title: "Name"; width: 80 }
            TableViewColumn { role: "cost"; title: "Cost"; width: 100 }
            TableViewColumn { role: "manufacture"; title: "Manufacture"; width: 140 }

            model: ListModel {
                id: phoneModel
                // 添加初始数据

            }
        }

        Button {
            Layout.fillWidth: true
            Layout.preferredHeight: 40  // 更合理的按钮高度
            text: qsTr("添加手机")

            onClicked: {
                phoneModel.append({
                    "name": "新手机-" + (phoneModel.count + 1),
                    "cost": Math.floor(Math.random() * 5000).toString(),
                    "manufacture": "厂商-" + (phoneModel.count + 1)
                })
            }
        }
    }
}
