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
            width: parent.width / 5.73
            height: parent.height / 3.24
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height / 7

            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter

            imageSource: "qrc:/Screen 1-01_button.png"

            onClicked: {
                stackView.push("Screen1_02.qml")
            }
        }
    }
}
