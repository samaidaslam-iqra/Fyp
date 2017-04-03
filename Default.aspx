<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-WhiteBoard</title>
    <link href="assets/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="assets/css/da-slider.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="whiteboard.css" rel="stylesheet" />

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">



    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
    <script src="Scripts/jquery-1.6.4.min.js"></script>
    <script src="Scripts/jquery.signalR-2.2.1.min.js"></script>
    <script src="signalr/hubs"></script>

    <link href="whiteboard.css" rel="stylesheet" />


</head>
<body >
    <form id="form1" runat="server">
 <div class="container-fluid">
        <div id="toolbar" class="container">          
     <div id="rad">
         Radius<span id="radval" >10</span>
         <button type="button" id="decrad" class="btn btn-info">-</button>        
         <button type="button" id="incrad" class="btn btn-info">+</button>         
         <button type="button" id="pencil" class="btn btn-info">Pencil</button>
         <button type="button" id="eraser" class="btn btn-info">Erase</button>

     </div>
      </div>
   
  

        <div class="container">                 
           <canvas id="canvas" style="position:absolute; top:50px; border:10px solid #d3d3d3;">
               sorry brower not supporting html canvass
           </canvas>            
        </div>
     </div>
    <script src="assets/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.cslider.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/modernizr-latest.js"></script>
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

        canvas.width = window.innerWidth / 1.5;
        canvas.height = window.innerHeight / 1.5;
        context.lineWidth = radius * 2;



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
