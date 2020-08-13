import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    title: qsTr("Page 2")

    Rectangle {
        id: rectangleLayout
        anchors.fill: parent
        Image {
            id: imageBackground
            source: "qrc:/Screen 1-03_background.png"
            width: parent.width
            height: parent.height
            fillMode: Image.Stretch
        }
    }

    Timer {
        // 10 секунд
        interval: 10000
        repeat: false
        running: true
        onTriggered: {
            stackView.push("Screen2_01.qml")
        }
    }
}
