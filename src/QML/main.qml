import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    visibility: "FullScreen"
    title: qsTr("Stack")

    property int vote1: 0
    property int vote2: 0
    property int vote3: 0

    StackView {
        id: stackView
        initialItem: "Screen1_01.qml"
        anchors.fill: parent
    }
}
