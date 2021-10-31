using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Firebase.Database;
using Firebase.Database.Query;
using List_App.Resources.Models;

namespace List_App
{
    public class TempGroceryListClass
    {
        public String Name { get; set; }
        public UserClass Owner { get; set; }
    }

    public static class ReadDataFromCloud
    {
        public static async Task Read()
        {
            AppData.onlineLists = new List<GroceryListClass>();

            ChildQuery listNode = AppData_Droid.dataNode.Child(AppData.curUser.Uid);

            var allListData = await listNode
                .OnceAsync<TempGroceryListClass>();
            foreach (FirebaseObject<TempGroceryListClass> any in allListData)
            {
                List<ItemClass> itemsOfList = new List<ItemClass>();

                ChildQuery thisListNode = listNode.Child(any.Object.Name);

                var readItems = await
                    thisListNode.Child("Items").OnceAsync<ItemClass>();

                foreach (FirebaseObject<ItemClass> anyItem in readItems)
                {
                    itemsOfList.Add(anyItem.Object);
                }


                GroceryListClass newReadList = new GroceryListClass
                {
                    Name = any.Object.Name,
                    Items = itemsOfList,
                    Owner = any.Object.Owner
                };


                AppData.onlineLists.Add(newReadList);
            }

        }
    }


}
