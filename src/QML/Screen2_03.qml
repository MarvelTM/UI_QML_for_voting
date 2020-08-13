import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    title: qsTr("Page 2")

    FontLoader {
        id: roboto_bold
        name: "Roboto Bold"
        source: "qrc:/Roboto/Roboto-Bold.ttf"
    }

    Rectangle {
        id: rectangleLayout
        anchors.fill: parent
        Image {
            id: imageBackground
            source: "qrc:/Screen 2-03_background.png"
            width: parent.width
            height: parent.height
            fillMode: Image.Stretch

            Rectangle {
                id: rectangle1
                width: parent.width / 7.68
                height: if (Math.max(window.vote1, window.vote2,
                                     window.vote3) == vote1) {
                            parent.height / 4.43
                        } else {
                            parent.height / (4.43 * Math.max(
                                                 window.vote1, window.vote2,
                                                 window.vote3)) * window.vote1
                        }
                color: "#b7b7b7"

                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height / 4.12
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -parent.width / 4.46
            }

            Rectangle {
                id: rectangle2
                width: parent.width / 7.68
                height: if (Math.max(window.vote1, window.vote2,
                                     window.vote3) == vote2) {
                            parent.height / 4.43
                        } else {
                            parent.height / (4.43 * Math.max(
                                                 window.vote1, window.vote2,
                                                 window.vote3)) * window.vote2
                        }
                color: "#b7b7b7"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height / 4.12
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                id: rectangle3
                width: parent.width / 7.68
                height: if (Math.max(window.vote1, window.vote2,
                                     window.vote3) == vote3) {
                            parent.height / 4.43
                        } else {
                            parent.height / (4.43 * Math.max(
                                                 window.vote1, window.vote2,
                                                 window.vote3)) * window.vote3
                        }
                color: "#b7b7b7"

                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height / 4.12
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: parent.width / 4.46
            }

            Text {
                text: Number(
                          window.vote1 / (window.vote1 + window.vote2
                                          + window.vote3) * 100).toLocaleString(
                          Qt.locale("ru_RU"), 'f', 0) + "%"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height / 3.1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -parent.width / 4.46

                font.family: roboto_bold.name
                font.pointSize: 50 * parent.height / 1080.0
                color: "#ffffff"
            }

            Text {
                text: Number(
                          window.vote2 / (window.vote1 + window.vote2
                                          + window.vote3) * 100).toLocaleString(
                          Qt.locale("ru_RU"), 'f', 0) + "%"

                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height / 3.1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 0

                font.family: roboto_bold.name
                font.pointSize: 50 * parent.height / 1080.0
                color: "#ffffff"
            }
            Text {
                text: Number(
                          window.vote3 / (window.vote1 + window.vote2
                                          + window.vote3) * 100).toLocaleString(
                          Qt.locale("ru_RU"), 'f', 0) + "%"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height / 3.1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: parent.width / 4.46

                font.family: roboto_bold.name
                font.pointSize: 50 * parent.height / 1080.0
                color: "#ffffff"
            }
        }
    }

    Timer {
        // 10 секунд
        interval: 10000
        repeat: false
        running: true
        onTriggered: {
            stackView.push("Screen2_04.qml")
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

