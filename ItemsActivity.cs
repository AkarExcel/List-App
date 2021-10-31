using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Views.InputMethods;
using Android.Widget;
using Java.Lang;
using List_App.Resources.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace List_App
{
    [Activity(Label = "ItemsActivity")]
    public class ItemsActivity : Activity
    {
        Button backButton;
        TextView curListTextView;
        EditText newItemList;
        ListView itemListView;
        Button shareButton;
        GroceryListClass curList;
        ItemRowListAdapter itemAdapter;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.ItemsLayout); //Set Items view Here

            InterfaceBuilder();
            AppData.GetInstance();
            int row = this.Intent.Extras.GetInt("row");
            curList = AppData.curList[row];
            curListTextView.Text = curList.Name;

            itemAdapter = new ItemRowListAdapter(this, curList);
            itemListView.Adapter = itemAdapter;
        }
        void InterfaceBuilder()
        {
            // set the view with Id
            backButton = FindViewById(Resource.Id.backButton_id) as Button;
            backButton.Click += GoBackAction;

            curListTextView = FindViewById(Resource.Id.curListTextView_id) as TextView;

            newItemList = FindViewById(Resource.Id.newItemEditText_id) as EditText;
            newItemList.EditorAction += AddNewItem;

            itemListView = FindViewById(Resource.Id.itemsListView_id) as ListView;
            itemListView.ItemClick += ItemClicked;
            itemListView.ItemLongClick += ItemLongClicked;

            shareButton = FindViewById<Button>(Resource.Id.shareButton_id);
            shareButton.Click += ShareAction;



        }

        void ShareAction(object sender, EventArgs e)
        {
            AlertDialog.Builder shareAlert = new AlertDialog.Builder(this);

            shareAlert.SetTitle("Inviting Someone?");
            shareAlert.SetMessage("Please enter the Email Address of the person you wish to invite to this list");

            EditText input = new EditText(this);
            input.TextSize = 22;
            input.Gravity = GravityFlags.Center;
            input.Hint = "Email Address";
            input.SetSingleLine(true);
            shareAlert.SetView(input);

            shareAlert.SetPositiveButton("OK", async (shareSender, shareE) =>
            {
                await InviteSomone.Invite(this, curList, input.Text);
            });
            shareAlert.SetNegativeButton("Cancel", (senderAlert, args) => { });

            Dialog dialog = shareAlert.Create();
            dialog.Show();
        }

        void ItemLongClicked(object sender, AdapterView.ItemLongClickEventArgs e)
        {

            e.View.Animate()
                .SetDuration(600)
                .Alpha(0)
                .WithEndAction(new Runnable(() =>
                {
                    
                    ItemClass toDelete = curList.Items[e.Position];

                    curList.Items.Remove(toDelete);

                    DeleteFromCloud.DeleteItem(toDelete,curList);

                    e.View.Alpha = 1;
                    itemAdapter.NotifyDataSetChanged();
                    ReadWrite.WriteData();

                }));

        }

        void ItemClicked(object sender, AdapterView.ItemClickEventArgs e)
        {
            ItemClass thisItem = curList.Items[e.Position];

            bool curStatus = false;
            if (thisItem.Purchased == "true" || thisItem.Purchased == "True")
                curStatus = true;

            thisItem.Purchased = (!curStatus).ToString();
            thisItem.Time = DateTime.UtcNow.ToString();

            ReadWrite.WriteData();

            itemAdapter.NotifyDataSetChanged();
        }

        void AddNewItem(object sender, TextView.EditorActionEventArgs e)
        {
            if (e.ActionId != ImeAction.Done)
                return;

            ItemClass newItem = new ItemClass
            {
                Name = newItemList.Text,
                Purchased = false.ToString(),
                Time = DateTime.UtcNow.ToString()
            };
            curList.Items.Add(newItem);
            ReadWrite.WriteData();
            SaveItemOnCloud.Save(newItem, curList); //Save the new list to the DataBase


            newItemList.Text = "";
            itemAdapter.NotifyDataSetChanged();

            this.CurrentFocus.ClearFocus();

            InputMethodManager inputManager =

            (InputMethodManager)GetSystemService(Context.InputMethodService);
            inputManager.HideSoftInputFromWindow(this.CurrentFocus.WindowToken,
                HideSoftInputFlags.None);
        }

        void GoBackAction(object sender, EventArgs e)
        {
            Finish();
        }
    }
}
