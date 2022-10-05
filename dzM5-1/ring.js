function func(width,height, xStep, yStep, ctx) {

    ctx.clearRect(0, 0, width, height);
    ctx.fillStyle = Qt.rgba(1, 0, 0, 1);

    var centreX=2.5*xStep;
    var centreY=2.5*yStep;

    ctx.beginPath();
    ctx.fillStyle = "yellow";
    ctx.moveTo(centreX, centreY);
    ctx.arc(centreX, centreY, width / 4, Math.PI * 0, Math.PI * 2, false);
    ctx.lineTo(centreX, centreY);
    ctx.fill();

    ctx.beginPath();
    ctx.fillStyle = "white";
    ctx.moveTo(centreX, centreY);
    ctx.arc(centreX, centreY, width / 6, Math.PI * 0, Math.PI * 2, false);
    ctx.lineTo(centreX, centreY);
    ctx.fill();

}
