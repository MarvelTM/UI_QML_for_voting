import QtQuick 2.12
import QtQuick.Controls 2.5
import QtWebEngine 1.8

import MouseEventSpy 1.0

Page {
    title: qsTr("Page 1")

    Rectangle {
        id: rectangleLayout
        anchors.fill: parent

        Timer {
            id: timer
            interval: 45000
            repeat: false
            running: true
            onTriggered: {
                if (stackView.depth > 1) {
                    stackView.pop()
                }
            }
        }

        Connections {
            target: MouseEventSpy
            onMouseEventDetected: {
                timer.restart()
            }
        }

        WebEngineView {
            id: webView
            y: 295

            settings.touchIconsEnabled: true
            zoomFactor: 0.7 * parent.height / 1080
            url: "https://www.stoloto.ru/state-lottery?"
            //  anchors.fill: parent
            width: 1200 * parent.width / 1920
            height: 665 * parent.height / 1080
            anchors.verticalCenterOffset: 10 * parent.height / 1080
            anchors.horizontalCenterOffset: 0

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            onLoadingChanged: function (loadRequest) {
                if (loadRequest.url != webView.url) {
                    webView.stop()
                }
            }
        }

        Image {
            id: imageBackground
            source: "qrc:/Screen 2-02_background.png"
            width: parent.width
            height: parent.height
            fillMode: Image.Stretch
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
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:1080;width:1920}
}
##^##*/

