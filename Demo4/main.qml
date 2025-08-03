import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


Window {
    visible: true
    width: 640
    height: 120
    title: qsTr("Hello World")

    //主界面列表视图
    ListView {
        id: listView;

        anchors.fill: parent;

        delegate: detailsDelegate;//设置绘制代理
        model: planets;//绑定数据源
    }

    ListModel {
        id: planets;

        ListElement {
            name: "Mercury";
            facts: "Mercury is the smallest planet in the Solar System. It is the closest planet to the sun. It makes one trip around the Sun once every 87.969 days." ;
        }
        ListElement {
            name: "Venus";
            facts: "Venus is the second planet from the Sun. It is a terrestrial planet because it has a solid, rocky surface. The other terrestrial planets are Mercury, Earth and Mars. Astronomers have known Venus for thousands of years.";
        }
        ListElement {
            name: "Earth";
            facts: "The Earth is the third planet from the Sun. It is one of the four terrestrial planets in our Solar System. This means most of its mass is solid. The other three are Mercury, Venus and Mars. The Earth is also called the Blue Planet, 'Planet Earth', and 'Terra'.";
        }
        ListElement {
            name: "Mars";
            facts: "Mars is the fourth planet from the Sun in the Solar System. Mars is dry, rocky and cold. It is home to the largest volcano in the Solar System. Mars is named after the mythological Roman god of war because it is a red planet, which signifies the colour of blood.";
        }
    }

    Component {
        id: detailsDelegate;

        Item {
            width: listView.width;
            height: 30;

            //列表项文本
            Rectangle {
                width: 30;
                height: 30;
                border.width: 1
                border.color: "gray";
                Text {
                    anchors.fill: parent;
                    color: "red";
                    text: name;//ListElement中的name
                }
            }

            //列表项图标
            Rectangle {
                width: listView.width - 30
                height: 30;
                border.width: 1
                border.color: "lightgray";

                Text {
                    anchors.fill: parent;
                    color: "blue";
                    text: facts
                }
            }
        }
    }
}
