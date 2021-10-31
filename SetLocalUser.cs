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
    public static class SetLocalUser
    {
        public static void Set(UserClass inpUser)
        {
            foreach (GroceryListClass any in AppData.curList)
                if (any.Owner.Uid == AppData.curUser.Uid)
                    any.Owner = inpUser;

            AppData.curUser = inpUser;

            ReadWrite.WriteData();
            ReadWrite.WriteUser();
        }
    }
}