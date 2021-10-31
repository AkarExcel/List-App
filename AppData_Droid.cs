using System;
using Android.Content;
using Firebase;
using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using List_App.Resources.Models;

namespace List_App
{
    public class AppData_Droid
    {
        private static AppData_Droid instance;
        public static ChildQuery dataNode;
        public static ChildQuery usersNode;
        //public static FirebaseQuery rootNode;
        static FirebaseApp fireApp;
        public static FirebaseAuth auth;

        private AppData_Droid (Context inpContext)
        {
            var options = new Firebase.FirebaseOptions.Builder()
                                      .SetApplicationId("1:623638228643:android:13dce80afbc4a0c6fc9916")
                                      .SetApiKey("AIzaSyCv_ZW2bSfO22e1sS7napq_K2ZIMtX81I8")
                                      .Build();
            
            if (fireApp == null)
                fireApp = FirebaseApp.InitializeApp(inpContext, options);

            auth = FirebaseAuth.GetInstance(fireApp);

            string FirebaseURL = "https://list-app-10d01-default-rtdb.firebaseio.com";

            FirebaseClient rootNode = new FirebaseClient(FirebaseURL);
            dataNode = rootNode.Child("data");
            usersNode = rootNode.Child("users");
        }

        public static AppData_Droid GetInstance(Context inpContext)
        {
            AppData.GetInstance();
            if (instance == null)
                instance = new AppData_Droid(inpContext);

            return instance;
        }
    }
}
