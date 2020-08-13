import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    title: qsTr("Page 1")

    Rectangle {
        id: rectangleLayout
        anchors.fill: parent
        Image {
            id: imageBackground
            source: "qrc:/Screen 1-02_background.png"
            width: parent.width
            height: parent.height
            fillMode: Image.Stretch
        }

        ImageButton {
            width: parent.width / 5
            height: parent.height / 12
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height / 5.5

            anchors.horizontalCenterOffset: -parent.width / 4.1
            anchors.horizontalCenter: parent.horizontalCenter

            imageSource: "qrc:/Screen 1-02_button.png"
            onClicked: {
                window.vote1++
                stackView.push("Screen2_03.qml")
                console.log("vote1 " + vote1)
            }
        }

        ImageButton {
            width: parent.width / 5
            height: parent.height / 12
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height / 5.5

            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter

            imageSource: "qrc:/Screen 1-02_button.png"

            onClicked: {
                window.vote2++
                stackView.push("Screen2_03.qml")
                console.log("vote2 " + vote2)
            }
        }

        ImageButton {
            width: parent.width / 5
            height: parent.height / 12
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height / 5.5

            anchors.horizontalCenterOffset: parent.width / 4.1
            anchors.horizontalCenter: parent.horizontalCenter

            imageSource: "qrc:/Screen 1-02_button.png"

            onClicked: {
                window.vote3++
                stackView.push("Screen2_03.qml")
                console.log("vote3 " + vote3)
            }
        }

        ImageButton {
            width: parent.height / 12
            height: parent.height / 12
            anchors.left: parent.left
            anchors.leftMargin: parent.height / 18
            anchors.top: parent.top
            anchors.topMargin: parent.height / 18
            imageSource: "qrc:/Screen 1-02_button_back.png"

            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                }
            }
        }
    }

    Timer {
        // 10 секунд
        interval: 45000
        repeat: false
        running: true
        onTriggered: {
            if (stackView.depth > 1) {
                stackView.pop()
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
