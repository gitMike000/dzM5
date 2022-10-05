function func(width,height, xStep, yStep, ctx) {

    ctx.clearRect(0, 0, width, height);
    ctx.fillStyle = Qt.rgba(0, 0, 1, 1);

    ctx.beginPath()
    ctx.moveTo(1 * xStep, 2 * yStep);
    ctx.lineTo(3 * xStep, 2 * yStep);
    ctx.lineTo(3 * xStep, 4 * yStep);
    ctx.lineTo(1 * xStep, 4 * yStep);
    ctx.lineTo(1 * xStep, 2 * yStep);
    ctx.closePath();
    ctx.lineWidth = 15;
    ctx.stroke();
    ctx.fill();

    ctx.fillStyle = Qt.rgba(0, 1, 0, 1);
    ctx.beginPath()
    ctx.moveTo(1 * xStep-0.1*xStep, 2 * yStep);
    ctx.lineTo(2 * xStep, 1 * yStep);
    ctx.lineTo(3 * xStep+0.1*xStep, 2 * yStep);
    ctx.closePath();
    ctx.stroke();
    ctx.fill();

}
