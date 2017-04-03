
var canvas = document.getElementById('canvas');
var context = canvas.getContext('2d');

//var dataURL;
var radius = 10;
var draw = false;
var minRad = 0.5,
    maxRad = 100,
    interval = 5,
    defaultRad = 20,
    radSpan = document.getElementById('radval'),
    decreaseRad = document.getElementById('decrad'),
    increaseRad = document.getElementById('incrad'),
    eraser = document.getElementById('eraser'),
    pencil = document.getElementById('pencil');

canvas.width = window.innerWidth/1.5;
canvas.height = window.innerHeight/1.5;
context.lineWidth = radius * 2;

//var img = new Image;
//img.onload = function () {
//    context.drawImage(img, 0, 0); // Or at whatever offset you like
//};
//img.src = DataURI;


decreaseRad.addEventListener('click', function () {
    setRadius(radius - interval);
});

increaseRad.addEventListener('click', function () {
    setRadius(radius + interval);
});



var setRadius = function (newRadius) {
    if (newRadius < minRad)
        newRadius = minRad;
    else if (newRadius > maxRad)
        newRadius = maxRad;
    context.lineWidth = newRadius * 2;
    radSpan.innerHTML = newRadius;
    radius = newRadius;
}

;
eraser.addEventListener('click', function () {
  context.fillStyle = "white";
  context.strokeStyle = "white";
});

pencil.addEventListener('click', function () {
    context.fillStyle = "black";
    context.strokeStyle = "black";
});



var drawing = function (e) {
    if (draw) {
        context.lineTo(e.offsetX, e.offsetY);
        context.stroke();
        context.beginPath();
        context.arc(e.offsetX, e.offsetY, radius, 0, Math.PI * 2);
        context.fill();
        context.beginPath();
        context.moveTo(e.offsetX, e.offsetY);
       // dataURL = context.getImageData(e.offsetX,e.offsetY,canvas.width,canvas.height);
        
       
    }
}

var startdraw = function (e) {
    draw = true;
    drawing(e);
}

var stopdraw = function () {
    draw = false;
    context.beginPath();
}

canvas.addEventListener('mousedown', startdraw);
canvas.addEventListener('mousemove', drawing);
canvas.addEventListener('mouseup', stopdraw);
