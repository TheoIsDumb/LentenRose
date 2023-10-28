import QtQuick 2.11
import QtQuick.Layouts 1.11
import SddmComponents 2.0 as SDDM

RowLayout {
    id: formContainer
    width: parent.width
    SDDM.TextConstants { id: textConstants }

    property bool virtualKeyboardActive

    Input {
        id: input
        Layout.alignment: Qt.AlignVCenter
        height: parent.height
    }
}