using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;


namespace Fyp
{
    public class ChatHub : Hub
    {

        public void send(string name, string message)
        {
            Clients.All.broadcastMessage(name, message);

        }
        public void sendCanvas(String data)
        {

            Clients.All.broadcastCanvas(data);
        }
    }
}