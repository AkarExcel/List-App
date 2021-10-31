using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Firebase.Database.Query;
using List_App.Resources.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace List_App
{
    public static class SaveItemOnCloud
    {
        public static void Save(ItemClass inpItem,
                                GroceryListClass inpList)
        {
            if (AppData_Droid.auth.CurrentUser == null)
                return;

            AppData_Droid.dataNode
                .Child(inpList.Owner.Uid)
                .Child(inpList.Name)
                .Child("items")
                .Child(inpItem.Name)
                .PutAsync(inpItem);
        }
    }
}