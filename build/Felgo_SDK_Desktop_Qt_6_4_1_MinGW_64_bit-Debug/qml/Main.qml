import Felgo
import QtQuick

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    Window{
        height: 700
        width: 400
        visible: true
        id:appwin
        Rectangle{
            height:100
            width: parent.width
            color: Qt.rgba(0.4,0.4,0.4,1)
            id:header
            Text{
                id:headertext
                text:"header"
                anchors.centerIn: parent
            }
        }
        Rectangle{
            anchors.top: header.bottom
            anchors.left: parent.left
            anchors.right:parent.right
            anchors.bottom: footer.top
            anchors.margins:5
            border.color: Qt.rgba(0.2,0.2,0.2,1)
            id:content
            Text{
                id:contenttext
                text:"content"
                anchors.centerIn: parent
            }
        }
        Rectangle{
            height:100
            width: parent.width
            color: Qt.rgba(0.7,0.7,0.7,1)
            id:footer
            anchors.bottom: parent.bottom
            Rectangle{
                height:100
                width: parent.width*0.3
                color: Qt.rgba(0.5,0.5,0.5,1)
                border.color: Qt.rgba(0.2,0.2,0.2,1)

                id:b1
                anchors.left: parent.left
                Text{
                    text:"1"
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        b1.opacity=1
                        b2.opacity=0.5
                        b3.opacity=0.5
                        headertext.text="Page 1"
                        contenttext.text="Content 1"
                    }
                }

            }
            Rectangle{
                height:100
                color: Qt.rgba(0.5,0.5,0.5,1)
                border.color: Qt.rgba(0.2,0.2,0.2,1)
                anchors.right: b3.left
                anchors.left: b1.right
                anchors.margins:5
                id:b2
                Text{
                    text:"2"
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        b1.opacity=0.5
                        b2.opacity=1
                        b3.opacity=0.5
                        headertext.text="Page 2"
                        contenttext.text="Content 2"
                    }
                }
            }
            Rectangle{
                height:100
                width: parent.width*0.3
                color: Qt.rgba(0.5,0.5,0.5,1)
                border.color: Qt.rgba(0.2,0.2,0.2,1)
                id:b3
                anchors.right: parent.right
                Text{
                    text:"3"
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        b1.opacity=0.5
                        b2.opacity=0.5
                        b3.opacity=1
                        headertext.text="Page 3"
                        contenttext.text="Content 3"
                    }
                }
            }
        }
    }
}
