using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Firebase.Auth;
using Firebase.Database.Query;
using Java.Lang;
using List_App.Classes;
using List_App.Resources.Models;
using Firebase.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace List_App
{
    public static class Register
    {
        public static void Alert(Context inpContext)
        {
            AlertDialog.Builder registerAlert = new AlertDialog.Builder(inpContext);
            registerAlert.SetTitle("Register Online");
            registerAlert.SetMessage("Please enter your name, email and password.");

            LinearLayout textEditsLayout = new LinearLayout(inpContext);
            textEditsLayout.Orientation = Orientation.Vertical;

            EditText nameInput = new EditText(inpContext);
            nameInput.TextSize = 22;
            nameInput.Gravity = GravityFlags.Center;
            nameInput.Hint = "name";
            nameInput.SetSingleLine(true);
            textEditsLayout.AddView(nameInput);

            EditText emailInput = new EditText(inpContext);
            emailInput.TextSize = 22;
            emailInput.Gravity = GravityFlags.Center;
            emailInput.Hint = "email";
            emailInput.InputType = Android.Text.InputTypes.TextVariationEmailAddress;
            emailInput.SetSingleLine(true);
            textEditsLayout.AddView(emailInput);

            EditText passwordInput = new EditText(inpContext);
            passwordInput.TextSize = 22;
            passwordInput.Gravity = GravityFlags.Center;
            passwordInput.InputType = Android.Text.InputTypes.TextVariationPassword;
            passwordInput.Hint = "password";
            passwordInput.SetSingleLine(true);
            textEditsLayout.AddView(passwordInput);

            registerAlert.SetView(textEditsLayout);


            registerAlert.SetPositiveButton("Register", async (senderAlert, args)

                                            => await RegisterAction((ListsActivity)inpContext,
                                                                    nameInput.Text,
                                                                    emailInput.Text,
                                                                    passwordInput.Text));



            registerAlert.SetNegativeButton("Cancel",
                                            (senderAlert, args) => { });

            Dialog dialog = registerAlert.Create();
            dialog.Show();
        }

        public static async Task RegisterAction(ListsActivity inpActivity,
                                                string inpName,
                                                string inpEmai,
                                                string inpPassword)
        {
            await AppData_Droid.auth.CreateUserWithEmailAndPasswordAsync(inpEmai,
                                                                         inpPassword);

            var profileUpdate = new UserProfileChangeRequest.Builder()
                                                            .SetDisplayName(inpName)
                                                            .Build();
            AppData_Droid.auth.CurrentUser.UpdateProfile(profileUpdate);


            UserClass localUser = new UserClass()
            {
                Name = inpName,
                Uid = AppData_Droid.auth.CurrentUser.Uid,
                Email = inpEmai
            };

            await AppData_Droid.usersNode
                               .Child(AppData_Droid.auth.CurrentUser.Uid)
                               .PutAsync(localUser);

            SetLocalUser.Set(localUser);

            foreach (GroceryListClass any in AppData.curList)
                if (any.Owner.Uid == AppData.curUser.Uid)
                    SaveListOnCloud.Save(any);


            AlertShow.Show(inpActivity, "Success", "You are now logged into cloud");

            // re - read lists
        }
    }
}