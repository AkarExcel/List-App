using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using List_App.Classes;

namespace List_App.Resources.Models
{
    public class AppData
    {
        public static UserClass curUser;
        public static List<GroceryListClass> curList;
        public static List<GroceryListClass> offlineLists;
        public static List<GroceryListClass> onlineLists;
        public static List<InvitationClass> invitationsData;
        public static List<GroceryListClass> invitationsLists;

        private static AppData instance;

        public static AppData GetInstance()
        {
            if (instance == null)
            {
                instance = new AppData();
            }
            return instance;
        }
    }
}