using Android.App;
using Android.Content;
using Android.Graphics;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Firebase.Database.Query;
using Java.Lang;
using List_App.Classes;
using List_App.Resources.Models;
//using Firebase.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace List_App
{
    //  [Activity(Label = "ListsActivity")] Obsolete
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true)]
    public class ListsActivity : Activity
    {

        Button newListBotton_id;
        ListView groceryListView_id;
        Button profileButton_id;
        ListRowCustomAdapter groceryAdapter;

        protected override void OnResume()
        {
            base.OnResume();
            if(groceryAdapter != null)
            groceryAdapter.NotifyDataSetChanged();
        }

        protected override async void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            // set our view for the list activity
            SetContentView(Resource.Layout.ListsLayout);
            InterfaceBuilder();
            //AppData.GetInstance();  //Obsolete for Testing

            AppData_Droid.GetInstance(this);
            
            await ReloadData();
        }

        //void FirebaseTest()
        //{
        //    AppData_Droid.auth.CreateUserWithEmailAndPassword("defEmail@Email.ea",
        //                                                                "Defpassword1234");
        //    Dictionary<string, string> myTestDict = new Dictionary<string, string>
        //    {
        //        { "key", "value" }
        //    };

        //    AppData_Droid.dataNode.Child("Test3").PutAsync(myTestDict);

        //    AlertShow.Show(this, "Success", "Sync Successful");
        //}


        public async Task ReloadData()
        {
            // reload the ListView data
           
            await  ReadAllData.Read(this); // curList
            groceryAdapter = new ListRowCustomAdapter(this, AppData.curList);

            groceryListView_id.Adapter = groceryAdapter;
        }
        void InterfaceBuilder()             // locate the controls with id

        {
            newListBotton_id = FindViewById<Button>(Resource.Id.newListBotton_id);
            groceryListView_id = FindViewById<ListView>(Resource.Id.groceryListView_id);
            profileButton_id = FindViewById<Button>(Resource.Id.profileButton_id);
            // event subcription of control
            newListBotton_id.Click += NewListAlertView;
            profileButton_id.Click += ProfileAction;
            groceryListView_id.ItemClick += GotoItem;
            groceryListView_id.ItemLongClick += DeleteListAlert;
        }

        void DeleteListAlert(object sender, AdapterView.ItemLongClickEventArgs e)
        {
            GroceryListClass toRemove = AppData.curList[e.Position];
            AlertDialog.Builder deletealert = new AlertDialog.Builder(this);
            if(toRemove.Owner.Uid == AppData.curUser.Uid)
            {
                deletealert.SetTitle("Confirm Delete");
                deletealert.SetMessage("Are you sure you want to delete this List?");
                deletealert.SetPositiveButton("Delete", (senderAlert, eAlert) =>
                DeleteList(toRemove, e));
            }

            else
            {
                deletealert.SetTitle("Confirm Remove");
                deletealert.SetMessage("Are you sure you want to Remove this invite from your List?");
                deletealert.SetPositiveButton("Remove", (senderAlert, eAlert) =>
                DeleteList(toRemove, e));
            }
            

            
            deletealert.SetNegativeButton("Cancel", (senderAlert, eAlert) => { });

            Dialog dialog = deletealert.Create();
            dialog.Show();
        }

        void DeleteList(GroceryListClass inpList, AdapterView.ItemLongClickEventArgs e)
        {
            e.View.Animate()
                .SetDuration(500)
                .Alpha(0)
                .WithEndAction(new Runnable(() =>
                {
                    if (inpList.Owner.Uid == AppData.curUser.Uid)//Checking if list belong to the current owner logged in
                        DeleteFromCloud.DeleteList(inpList);

                    else
                    {
                        InvitationClass toRemoveInvitation = new InvitationClass()
                        {
                            Name = inpList.Name,
                            Owner = inpList.Owner
                        };

                        RemoveInvitation.Remove(toRemoveInvitation);

                    }

                    AppData.curList.Remove(inpList);
                    ReadWrite.WriteData();
                    groceryAdapter.NotifyDataSetChanged();

                    e.View.Alpha = 1;
                }
                ));
        }

        void GotoItem(object sender, AdapterView.ItemClickEventArgs e)
        {
            Intent itemsIntent = new Intent(this, typeof(ItemsActivity));
           itemsIntent.PutExtra("row", e.Position);
            StartActivity(itemsIntent);
        }

        void ProfileAction(object sender, EventArgs e)
        {
            AlertDialog.Builder alert = new AlertDialog.Builder(this);
            alert.SetTitle("Profile Management");
            alert.SetMessage("What would you like to do?");

            alert.SetPositiveButton("Register", (s, ev) =>
            Register.Alert(this) ); // Register
            alert.SetNegativeButton("Login", (s, ev) =>
            Login.Alert(this)); // Login
            alert.SetNeutralButton("Logout", (s, ev) =>
            Logout.Out(this));   // Logout

            Dialog dialog = alert.Create();
            dialog.Window.SetGravity(GravityFlags.Bottom);
            dialog.Show();
        }

        void NewListAlertView(object sender, EventArgs e)
        {
            AlertDialog.Builder alert;
            alert = new AlertDialog.Builder(this);
            alert.SetTitle("New List");
            alert.SetMessage("Please Enter the name of your new list");

            EditText input = new EditText(this)
            {
                TextSize = 22,
                Gravity = GravityFlags.Center,
                Hint = "new List"
            };
            input.SetSingleLine(true);
            alert.SetView(input);
            alert.SetPositiveButton("Save",
                (senderAlert, eAlert) =>
                NewListSave(input.Text));
            alert.SetNegativeButton("Cancel",
                (senderAlert, eAlert) => { });
            Dialog dialog = alert.Create();
            dialog.Show();
        }
         
        void NewListSave (string inpListName)
        {
            GroceryListClass newList = new GroceryListClass()
            {
                Name = inpListName,
                Owner = AppData.curUser,
                Items = new  List<ItemClass>()
            };
            AppData.curList.Add(newList);
            ReadWrite.WriteData();
            SaveListOnCloud.Save(newList);
            groceryAdapter.NotifyDataSetChanged();
        }

        public void SetProfileButton(string StatusStr, Color bgColor)
        {
            profileButton_id.Text = StatusStr;
            profileButton_id.SetBackgroundColor(bgColor);

        }
    }
}