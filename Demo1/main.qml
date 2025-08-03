import QtQuick 2.0


Application{
    Rectangle{
        border.color: "red"
        border.width: 1
        MouseArea{
            onClicked: {
                console.log("This is Demo");
            }
        }
    }
}
