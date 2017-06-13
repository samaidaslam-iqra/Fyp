<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-WhiteBoard &copy; Ink</title>

    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" />
    <link href="assets/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="assets/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <script src="Scripts/jquery.signalR-2.2.1.min.js"></script>
    <script src="signalr/hubs"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper container">

            <div class="row">
                <div class="col-lg-2 col-sm-2 col-xs-2 col-md-2"></div>
                <div class="col-lg-8 col-sm-8 col-xs-8 col-md-8">
                    <div id="dvControls" runat="server" class="navbar center-block">

                        <ul class="list-inline navbar-nav navbar-static-top dl-horizontal">
                            <li><span id="radval" class="btn btn-default" title="Click to Reset Radius">Radius : 5</span></li>
                            <li>
                                <button type="button" id="decrad" class="btn btn-warning">- </button>
                            </li>
                            <li>
                                <button type="button" id="incrad" class="btn btn-info">+ </button>
                            </li>
                            <li>
                                <button type="button" id="pencil" class="btn btn-success">Pencil </button>
                            </li>
                            <li>
                                <button type="button" id="eraser" class="btn btn-danger">Erase </button>
                            </li>
                        </ul>

                    </div>
                    <h3>
                        <label id="lblClassName" runat="server" class="label-info">TEST demo</label>
                    </h3>

                </div>
                <div class="col-lg-2 col-sm-2 col-xs-2 col-md-2"></div>
            </div>

            <div class="row">
                <div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
                    <canvas id="canvas" style="border: 5px solid #d3d3d3;">sorry brower not supporting html canvass
                    </canvas>
                </div>
            </div>
        </div>


    </form>
</body>
<script>

    var data = "shezy";
    $(function () {
        var chat = $.connection.chatHub;
        chat.client.broadcastCanvas = function (data) {
            var image = new Image();
            image.onload = function () {
                context.drawImage(image, 0, 0);
            };
            image.src = data;
        };

        $.connection.hub.start().done(function () {
            $('#canvas').click(function () {
                console.log(data);
                chat.server.sendCanvas(data);
            });
        });
    });

    var canvas = document.getElementById('canvas');
    var context = canvas.getContext('2d');

    var radius = 5;
    var draw = false;
    var minRad = 5,
        maxRad = 100,
        interval = 5,
        defaultRad = 20,
        radSpan = document.getElementById('radval'),
        decreaseRad = document.getElementById('decrad'),
        increaseRad = document.getElementById('incrad'),
        eraser = document.getElementById('eraser'),
        pencil = document.getElementById('pencil');

    canvas.width = 1170;
    canvas.height = 445;
    context.lineWidth = radius * 2;

    ////window.addEventListener('resize', resizeCanvas, false);
    ////window.addEventListener('orientationchange', resizeCanvas, false);
    ////resizeCanvas();

    ////function resizeCanvas() {
    ////    var imgData = context.getImageData(0, 0, canvas.width, canvas.height);
    ////    canvas.width = window.innerWidth;
    ////    canvas.height = window.innerHeight;
    ////   // context = canvas.getContext('2d');
    ////    context.putImageData(imgData, 0, 0);
    ////}


    //---------------------------

    //////var stage = new Stage("canvas11");

    //////stage.addChild(canvas);

    //////window.addEventListener("resize", handleResize);
    //////function handleResize() {
    //////    var w = window.innerWidth - 50; // -2 accounts for the border
    //////    var h = window.innerHeight - 50;
    //////    stage.canvas.width = w;
    //////    stage.canvas.height = h;
    //////    //
    //////    var ratio = 100 / 100; // 100 is the width and height of the circle content.
    //////    var windowRatio = w / h;
    //////    var scale = w / 100;
    //////    if (windowRatio > ratio) {
    //////        scale = h / 100;
    //////    }
    //////    // Scale up to fit width or height
    //////  canvas.scaleX = canvas.scaleY = scale;

    //////    // Center the shape
    //////    //c.x = w / 2;
    //////    //c.y = h / 2;

    //////    stage.update();
    //////}

    //////handleResize(); // First draw










    decreaseRad.addEventListener('click', function () {
        setRadius(radius - interval);
    });

    increaseRad.addEventListener('click', function () {
        setRadius(radius + interval);
    });

    radSpan.addEventListener('click', function () {
        setRadius(5);
    });

    var setRadius = function (newRadius) {
        if (newRadius < minRad)
            newRadius = minRad;
        else if (newRadius > maxRad)
            newRadius = maxRad;
        context.lineWidth = newRadius * 2;
        radSpan.innerHTML = "Radius : " + newRadius;
        radius = newRadius;
    };
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
            var newdata = canvas.toDataURL();
            data = newdata;


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

</script>



</html>
