import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1

Item {
    id: root
    property alias imageSource: imageBackground.source
    signal clicked

    Image {
        id: imageBackground

        width: parent.width
        height: parent.height
        fillMode: Image.Stretch

        MouseArea {
            id: touchArea
            anchors.fill: parent
            onClicked: {
                if (root.enabled) {
                    root.clicked()
                }
            }
        }
    }
}
