import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import "home.js" as Home
import "ring.js" as Ring
import "star.js" as Star
import "watch.js" as Watch

Window {
    id: win
    width: 640
    height: 480
    visible: true
    title: qsTr("JS Paint")

    ListModel {
        id: figure
        ListElement { key: "Часы"  ; value: 0; funct: "Watch" }
        ListElement { key: "Звезда"; value: 1; funct: "Star"  }
        ListElement { key: "Кольцо"; value: 2; funct: "Ring"  }
        ListElement { key: "Дом"   ; value: 3; funct: "Home"  }
    }

    function findElement(myModel, myId) {
        for(var i = 0; i < myModel.count; i++) {
            var element = myModel.get(i);
//            console.log("funct: ", element.funct);
//            console.log("value: ", element.value);
//            console.log("myId: ", myId);
            if(myId == element.value) {
//                console.log("Found element: ", i);
                return element.funct;
            }
        }
        return "";
    }

 Column {
    id:col
    width: parent.width
    height: parent.height
    anchors.fill: parent
    ComboBox {
                id: figureSelect
                width: 150
                height: 30
                //x: graphicSelect.x+parent.width/3
                background: Rectangle {
                    color: "white"
                    border.width: parent && parent.activeFocus ? 2 : 1
                    border.color: parent && parent.activeFocus ? figureSelect.palette.highlight : figureSelect.palette.button
                }
                model: figure
                textRole: "key"
                font.pointSize: 14
                font.family: "Courier"
                font.italic: true
                font.bold: true
                onCurrentIndexChanged:
                {
                    mycanvas.requestPaint();
                }
    }

    Canvas {
        id: mycanvas
        width: parent.width
        height: parent.height-figureSelect.height
        property int xStep: width / 6
        property int yStep: height / 5
        onPaint: {
            var ctx = getContext("2d");            
            // https://ru.stackoverflow.com/questions/412715/%D0%97%D0%B0%D0%BF%D1%83%D1%81%D0%BA-%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%B8-%D0%BF%D0%BE-%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%B8%D1%8E-%D0%BF%D0%B5%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9
            var temp = findElement(figure,figureSelect.currentIndex)+".func(width,height, xStep, yStep,ctx)";
            //console.log(temp)
            eval(temp);
        }

    }
 }
}
