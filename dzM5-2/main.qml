import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "jsCreator.js" as Js

ApplicationWindow {
    id: primaryFrame
    x:200
    y:200
    width: 800
    height: 400
    visible: true
    title: qsTr("Search pair")

//    Component {
//        id: firstWindowf

        Rectangle {
            id: rectlogin
            width: primaryFrame.width
            height: primaryFrame.height

            Component.onCompleted: {

                var login=Js.createFormObjects(rectlogin,"LoginForm.qml", primaryFrame.x,primaryFrame.y);
                primaryFrame.hide();

            }                        

            Component.onDestruction: {
                console.log("destruction");
//                primaryFrame.show();
//                parent.destroy();
            }

//        }
    }

//    Loader {
//        id: loader
//    }

//    Rectangle {
//        visible: false;
//        Component.onCompleted: {
//            loader.sourceComponent = firstWindowf
//        }

//    }


//    LoginForm {
//        id: firstWindowf

//        onStarted: {
//            firstWindowf.state = showFormStateName
//        }

//        onSignalExitLogin: {
//            firstWindowf.state = hideFormStateName
//            twoWindowf.state = showFormStateName
//        }
//    }

//    SearchForm {
//        id: twoWindowf
//        state: hideFormStateName

//        onSignalExitSearch: {
//            twoWindowf.state = hideFormStateName
//            threeWindowf.state = showFormStateName
//        }
//    }

//    SearchEnd {
//        id: threeWindowf
//        state: hideFormStateName
//    }

}
