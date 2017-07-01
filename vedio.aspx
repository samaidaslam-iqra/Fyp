﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vedio.aspx.cs" Inherits="vedio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="assets/css/example.css" rel="stylesheet" />
</head>
<body>
        <h1>Welcome to class </h1>
    <div class="localvideo">
        <video autoplay ="true"></video>
    </div>

    <h2>Online users </h2>
    <div class="remotevideos">

    </div>
    <h2>Recordings  ( Click on your camera stream to start record)</h2>
    <ul></ul>


    <h2>Trace</h2>
    <div id="immediate"></div>
    <script src="../lib/XSockets.latest.js"></script>
    <script src="../../src/js/XSockets.WebRTC.latest.js"></script>
    <script>

        var $ = function (selector, el) {
            if (!el) el = document;
            return el.querySelector(selector);
        }

        var trace = function (what, obj) {
            var pre = document.createElement("pre");
            pre.textContent = JSON.stringify(what) + " - " + JSON.stringify(obj || "");
            $("#immediate").appendChild(pre);
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
                    $("ul").appendChild(li);

                };
            };

            var addRemoteVideo = function (peerId, mediaStream) {
                var remoteVideo = document.createElement("video");
                remoteVideo.setAttribute("autoplay", "autoplay");
                remoteVideo.setAttribute("rel", peerId);
                attachMediaStream(remoteVideo, mediaStream);
                $(".remotevideos").appendChild(remoteVideo);
            };
            var onConnectionLost = function (remotePeer) {
                trace("onconnectionlost", arguments);
                var peerId = remotePeer.PeerId;
                var videoToRemove = $("video[rel='" + peerId + "']");
                $(".remotevideos").removeChild(videoToRemove);
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
                attachMediaStream($(".localvideo video "), mediaStream);
                // if user click, video , call the recorder
                $(".localvideo video ").addEventListener("click", function () {
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

</body>
</html>
