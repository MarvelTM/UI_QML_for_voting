import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    title: qsTr("Home")

    Rectangle {
        id: rectangleLayout
        anchors.fill: parent
        Image {
            id: imageBackground
            source: "qrc:/Screen 1-01_background.png"
            width: parent.width
            height: parent.height
            fillMode: Image.Stretch
        }

        ImageButton {
            width: parent.width / 3.79
            height: parent.height / 9.47
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height / 3.6

            anchors.horizontalCenterOffset: parent.height / 3.8
            anchors.horizontalCenter: parent.horizontalCenter

            imageSource: "qrc:/Screen 2-02_button_1.png"

            onClicked: {
                stackView.push("Screen2_02_2.qml")
            }
        }

        ImageButton {
            width: parent.width / 3.79
            height: parent.height / 9.47
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height / 3.6

            anchors.horizontalCenterOffset: -parent.height / 3.8
            anchors.horizontalCenter: parent.horizontalCenter

            imageSource: "qrc:/Screen 2-02_button_2.png"

            onClicked: {
                stackView.push("Screen2_02_1.qml")
            }
        }
    }
}
