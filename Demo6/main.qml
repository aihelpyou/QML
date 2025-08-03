import QtQuick 2.12
import QtQuick.Controls 2.12


ApplicationWindow {
    visible: true
    width: 300
    height: 300

    // 使用 Repeater 创建多个按钮
    Repeater {
        model: 4  // 绑定到 ListModel
        delegate: Button {
            text: index  // 每个按钮的文本来自模型
            width: 200
            height: 40
            anchors.top: parent.top
            anchors.topMargin: index * 50  // 设置按钮的垂直间距
            onClicked: {
                console.log("点击了按钮: " + text)
            }
        }
    }
}


