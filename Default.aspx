<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>E-WhiteBoard &copy; Ink</title>
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/AdminLTE.min.css" rel="stylesheet" />
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
                <div class="col-lg-1 col-sm-1 col-xs-1 col-md-1"></div>
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
                                <button type="button" id="blue" class="btn btn-success">blue Pencil </button>
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
                <div class="col-lg-8 col-sm-8 col-xs-8 col-md-8">
                    <canvas id="canvas" style="border: 5px solid #d3d3d3;">sorry brower not supporting html canvass
                    </canvas>
                </div>


                <div class="col-lg-4 col-sm-4 col-xs-4 col-md-4">



                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-3"></div>
                        <div class="col-md-9">

                            <div class="box box-warning direct-chat direct-chat-warning">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Direct Chat</h3>

                                </div>

                                <div class="box-body">

                                    <div class="direct-chat-messages">

                                        <div class="direct-chat-msg">
                                            <div class="direct-chat-info clearfix">
                                                <span id="displayname" runat="server" class="direct-chat-name pull-left"></span>
                                                <span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
                                            </div>

                                            <!--<img class="direct-chat-img" src="../dist/img/user1-128x128.jpg" alt="Message User Image">-->
                                            <div id="discussion" class="direct-chat-text">
                                            </div>


                                        </div>


                                    </div>

                                    <div class="direct-chat-contacts">
                                        <ul class="contacts-list">
                                            <li>
                                                <a href="#">
                                                    <img class="contacts-list-img" src="../dist/img/user1-128x128.jpg" alt="User Image" />
                                                    <div class="contacts-list-info">
                                                        <span class="contacts-list-name">Count Dracula
                                                <small class="contacts-list-date pull-right">2/28/2015</small>
                                                        </span>
                                                        <span class="contacts-list-msg">How have you been? I was...</span>
                                                    </div>
                                                </a>
                                            </li>

                                        </ul>

                                    </div>

                                </div>

                                <div class="box-footer" style="margin-top: 300px;">

                                    <div class="input-group">
                                        <input type="text" id="message" placeholder="Type Message ..." class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" id="sendmessage" value="send" class="btn btn-warning btn-flat">Send</button>
                                        </span>
                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

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
        chat.client.broadcastMessage = function (name, message) {

            var encodedName = $('<div/>').text(name).html();
            var encodedMsg = $('<div/>').text(message).html();
            $('#discussion').append('<li><strong>' + encodedName + '</strong> :&nbsp;' + encodedMsg + '</li>');
        };
        //$('#displayname').val(prompt('Enter Your Name', ""));
        $('#message').focus();

        $.connection.hub.start().done(function () {
            $('#canvas').click(function () {
                console.log(data);
                chat.server.sendCanvas(data);
            });
            $('#sendmessage').click(function () {
                var name = $('#displayname').text();
                chat.server.send(name, $('#message').val());
                $('#message').val('').focus();
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
        pencil = document.getElementById('pencil'),
    blue = document.getElementById('blue');

    canvas.width = window.innerWidth / 2;
    canvas.height = window.innerHeight / 2;
    context.lineWidth = radius * 2;

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
    blue.addEventListener('click', function () {
        context.fillStyle = "blue";
        context.strokeStyle = "blue";
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
