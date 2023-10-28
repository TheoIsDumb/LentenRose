import QtQuick 2.11
import QtQuick.Controls 2.4

Column {
    id: clock

    Label {
        id: timeLabel
        font.pointSize: root.font.pointSize * 2.5
        color: config.TextColor
        renderType: Text.QtRendering
        anchors.right: parent.right
        function updateTime() {
            text = new Date().toLocaleTimeString(Qt.locale(config.Locale), Locale.ShortFormat)
        }
    }

    Timer {
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            timeLabel.updateTime()
        }
    }

    Component.onCompleted: {
        timeLabel.updateTime()
    }
}