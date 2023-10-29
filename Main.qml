import QtQuick 2.11
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0
import "Components"

Pane {
    id: root

    height: config.ResY || Screen.height
    width: config.ResX || Screen.ScreenWidth
    padding: 0
    font.family: config.Font

    Image {
        id: backgroundImage

        height: parent.height
        width: parent.width
        source: config.background || config.Background
        fillMode: Image.PreserveAspectCrop
        asynchronous: true
    }

    Rectangle {
        height: parent.height / 3
        width: parent.width / 3
        color: config.BackgroundColor
        radius: 10
        y: 30
        anchors.horizontalCenter: parent.horizontalCenter

        RowLayout {
            id: rowlmao
            height: parent.height
            width: parent.width
            spacing: 2

            Clock {
                Layout.preferredWidth: parent.width / 2.3
                Layout.alignment: Qt.AlignBottom
                Layout.bottomMargin: 25
            }

            LoginForm {}
        }
    }
}