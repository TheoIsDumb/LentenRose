import QtQuick 2.11
import QtQuick.Controls 2.4

Column {
    id: clock

    property var timeText: Qt.callLater(new Date().toLocaleTimeString(Qt.locale(config.Locale), Locale.ShortFormat).split(':'))

    function updateTime() {
        timeText = new Date().toLocaleTimeString(Qt.locale(config.Locale), Locale.ShortFormat).split(':')
    }

    Label {
        id: hhlabel
        font.pointSize: root.font.pointSize * 2.5
        color: config.TextColor
        anchors.right: parent.right
        text: timeText[0]
    }
    Label {
        id: mmlabel
        font.pointSize: root.font.pointSize * 2.5
        color: config.TextColor
        anchors.right: parent.right
        text: timeText[1]
    }
    Label {
        id: sslabel
        font.pointSize: root.font.pointSize * 2.5
        color: config.TextColor
        anchors.right: parent.right
        text: timeText[2]
    }

    Timer {
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            clock.updateTime()
        }
    }

    Component.onCompleted: {
        clock.updateTime()
    }
}