import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 640
    height: 480


    ColumnLayout{
        anchors.fill: parent
        anchors.topMargin: 10
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        anchors.bottomMargin: 10

        Rectangle{
            anchors.fill: parent
            border.color: "green"
            border.width: 1
        }
    }
}
