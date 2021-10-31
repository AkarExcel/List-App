using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using List_App.Resources.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace List_App
{
    public class InvitationClass
    {
        public string Name { get; set; }
        public UserClass Owner { get; set; }
    }
}