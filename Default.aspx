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
    <link href="assets/css/example.css" rel="stylesheet" />
    <script src="../lib/XSockets.latest.js"></script>
    <script src="../../src/js/XSockets.WebRTC.latest.js"></script>

</head>

<body>
    <div class="row">

        <h1>Welcome to class </h1>
        <div class="localvideo">
            <video autoplay="true"></video>
        </div>

        <h2>Online users </h2>
        <div class="remotevideos">
        </div>
        <h2>Recordings  ( Click on your camera stream to start record)</h2>
        <ul></ul>


        <h2>Trace</h2>
        <div id="immediate"></div>


    </div>


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
                                <button type="button" id="pencilblue" class="btn btn-success">blue Pencil </button>
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
                <div class="col-lg-6 col-sm-6 col-xs-6 col-md-6">
                    <canvas id="canvas" style="border: 5px solid #d3d3d3;">sorry brower not supporting html canvass
                    </canvas>
                </div>
                <div class="col-lg-6 col-sm-6 col-xs-6 col-md-6">

                    <div class="d">

                        <div class="row">
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
                                            <input type="text" id="message" placeholder="Type Message .." class="form-control" />
                                            <span class="input-group-btn">
                                                <button type="button" id="sendmessage" value="send" class="btn btn-warning btn-flat">Send <i class="fa fa-send "></i></button>
                                            </span>
                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>


                    <%--  <script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>--%>
                </div>
            </div>
        </div>


    </form>
</body>
<script>


    $('input[type="text"]').keydown(function (event) {
        if (event.keyCode == 13) {
            event.preventDefault();
            return false;
        }
    });
    var data = "shezy";
    $(function () {

        //var chat = $(connection.chatHub);
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
        pencil = document.getElementById('pencil');

    canvas.width = 1170 / 2;
    canvas.height = 445;
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
    pencilblue.addEventListener('click', function () {
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


    var vdo = function (selector, el) {
        if (!el) el = document;
        return el.querySelector(selector);
    }

    var trace = function (what, obj) {
        var pre = document.createElement("pre");
        pre.textContent = JSON.stringify(what) + " - " + JSON.stringify(obj || "");
        // vdo("#immediate").appendChild(pre);
    };

    var main = (function () {
        var broker;
        var rtc;
        trace("Ready");
        trace("Try connect the connectionBroker");
        var ws = new XSockets.WebSocket("wss://rtcplaygrouund.azurewebsites.net:443", ["connectionbroker"], {
            ctx: '23fbc61c-541a-4c0d-b46e-1a1f6473720a'
        });

        var onError = function (err) {
            trace("error", arguments);
        };

        var recordMediaStream = function (stream) {
            if ("MediaRecorder" in window === false) {
                trace("Recorder not started MediaRecorder not available in this browser. ");
                return;

            }
            var recorder = new XSockets.MediaRecorder(stream);
            recorder.start();
            trace("Recorder started.. ");
            recorder.oncompleted = function (blob, blobUrl) {
                trace("Recorder completed.. ");
                var li = document.createElement("li");
                var download = document.createElement("a");
                download.textContent = new Date();
                download.setAttribute("download", XSockets.Utils.randomString(8) + ".webm");
                download.setAttribute("href", blobUrl);
                li.appendChild(download);
                vdo("ul").appendChild(li);

            };
        };

        var addRemoteVideo = function (peerId, mediaStream) {
            var remoteVideo = document.createElement("video");
            remoteVideo.setAttribute("autoplay", "autoplay");
            remoteVideo.setAttribute("rel", peerId);
            attachMediaStream(remoteVideo, mediaStream);
            vdo(".remotevideos").appendChild(remoteVideo);
        };
        var onConnectionLost = function (remotePeer) {
            trace("onconnectionlost", arguments);
            var peerId = remotePeer.PeerId;
            var videoToRemove = vdo("video[rel='" + peerId + "']");
            vdo(".remotevideos").removeChild(videoToRemove);
        };
        var oncConnectionCreated = function () {
            console.log(arguments, rtc);
            trace("oncconnectioncreated", arguments);

        };
        var onGetUerMedia = function (stream) {
            trace("Successfully got some userMedia , hopefully a goat will appear..");
            rtc.connectToContext(); // connect to the current context?
        };

        var onRemoteStream = function (remotePeer) {

            addRemoteVideo(remotePeer.PeerId, remotePeer.stream);
            trace("Opps, we got a remote stream. lets see if its a goat..");
        };
        var onLocalStream = function (mediaStream) {
            trace("Got a localStream", mediaStream.id);
            attachMediaStream(vdo(".localvideo video "), mediaStream);
            // if user click, video , call the recorder
            vdo(".localvideo video ").addEventListener("click", function () {
                recordMediaStream(rtc.getLocalStreams()[0]);
            });
        };
        var onContextCreated = function (ctx) {
            trace("RTC object created, and a context is created - ", ctx);
            rtc.getUserMedia(rtc.userMediaConstraints.hd(false), onGetUerMedia, onError);
        };
        var onOpen = function () {
            trace("Connected to the brokerController - 'connectionBroker'");
            rtc = new XSockets.WebRTC(this);

            rtc.onlocalstream = onLocalStream;
            rtc.oncontextcreated = onContextCreated;
            rtc.onconnectioncreated = oncConnectionCreated;
            rtc.onconnectionlost = onConnectionLost;
            rtc.onremotestream = onRemoteStream;


            rtc.onanswer = function (event) {

            };

            rtc.onoffer = function (event) {

            };

        };


        var onConnected = function () {
            trace("connection to the 'broker' server is established");
            trace("Try get the broker controller form server..");
            broker = ws.controller("connectionbroker");
            broker.onopen = onOpen;
        };
        ws.onconnected = onConnected;
    });
    document.addEventListener("DOMContentLoaded", main);



</script>



</html>
