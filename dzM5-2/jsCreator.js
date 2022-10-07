var component;
var sprite;
var pp;

function createFormObjects(par,obj,w,h) {
    pp=par;
    component = Qt.createComponent(obj);
    sprite = component.createObject(par, {x: w, y: h, iii: par});
    if (sprite == null) {
        // Error Handling
        console.log("Error creating object");
    } else {
//        par.hide();
    }
    sprite.desr.connect(destroyFormObject);
}

function destroyFormObject(par) {

//    par.show();
    console.log("desr");
    pp.destroy();
//    component.destroy();
//    createFormObjects(par,"SearchForm.qml", par.x, par.y)
//    par.hide();
}
