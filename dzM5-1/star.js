function func(width,height, xStep, yStep, ctx) {

    ctx.clearRect(0, 0, width, height);
    ctx.fillStyle = Qt.rgba(1, 0, 0, 1);

    ctx.beginPath()
    ctx.moveTo(3*xStep, yStep);
    ctx.lineTo(3*xStep+30,yStep+40);
    ctx.lineTo(3*xStep+100,yStep+40);
    ctx.lineTo(3*xStep+40,yStep+70);
    ctx.lineTo(3*xStep+80,yStep+130);
    ctx.lineTo(3*xStep,yStep+100);
    ctx.lineTo(3*xStep-80,yStep+130);
    ctx.lineTo(3*xStep-40,yStep+70);
    ctx.lineTo(3*xStep-100,yStep+40);
    ctx.lineTo(3*xStep-30,yStep+40);
    ctx.closePath()

    ctx.lineWidth = 15;
    ctx.stroke();
    ctx.fill()

}
