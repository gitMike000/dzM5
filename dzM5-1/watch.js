function func(width,height, xStep, yStep, ctx) {

    ctx.clearRect(0, 0, width, height);
    ctx.fillStyle = Qt.rgba(0, 0, 1, 1);

    ctx.beginPath();
    ctx.moveTo(1.5*xStep,yStep);
    ctx.lineTo(4*xStep,yStep);
    ctx.lineTo(1.5*xStep,4*yStep);
    ctx.lineTo(4*xStep,4*yStep);
    //ctx.lineTo(1.5*xStep,yStep);
    ctx.closePath();

    ctx.lineWidth = 15;
    ctx.stroke();
    ctx.fill()

}
