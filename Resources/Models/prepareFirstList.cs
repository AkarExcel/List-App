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

namespace List_App.Resources.Models
{
    public static class PrepareFirstList
    {
        public static void Prepare()
        {
            AppData.curList = new List<GroceryListClass>();

            AppData.curList.Add(new GroceryListClass()
            {
                Name = "Sample List",
                Owner = AppData.curUser,
                Items = new List<ItemClass>()
            });

            AppData.curList[0].Items.Add(new ItemClass()
            {
                Name = "Bread",
                Time = DateTime.UtcNow.ToString(),
                Purchased = false.ToString()
            });
            AppData.curList[0].Items.Add(new ItemClass()
            {
                Name = "Milk",
                Time = DateTime.UtcNow.ToString(),
                Purchased = true.ToString()
            });


            AppData.curList.Add(new GroceryListClass()
            {
                Name = "Office List",
                Owner = AppData.curUser,
                Items = new List<ItemClass>()
            });

            AppData.curList[1].Items.Add(new ItemClass()
            {
                Name = "Paper",
                Time = DateTime.UtcNow.ToString(),
                Purchased = true.ToString()
            });
            AppData.curList[1].Items.Add(new ItemClass()
            {
                Name = "Office Chairs",
                Time = DateTime.UtcNow.ToString(),
                Purchased = true.ToString()
            });
        }
    }
}