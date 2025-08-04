import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property alias myText: name.text;//导出文本变量
    property alias myColor: name.color;//导出文本颜色

    Text{
        x:10;
        y:10;
        width: 100;
        height: 30;
        text: myText;
        color: myColor;
    }

    // 圆角矩形框矩形框，支持点击
    Rectangle {
        x:100;
        y:100;
        id: root;
        width: 120;
        height: 120;
        radius:60;
        border.color: "red";
        antialiasing: true;
        signal clicked();//自定义信号  外部可以通过onClicked接收

        MouseArea
        {
            width: root.width;
            height: root.height;

            onClicked:
            {
                //鼠标点击时发送消息 并输入日志
                name.text = "good";
                name.color = "red";
                console.log("rectangle clicked");
            }
        }

        Text
        {
            id: name;
            text: title;
            color: "black";
            anchors.centerIn: parent;
        }
    }
}
