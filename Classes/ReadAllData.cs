using Android.App;
using Android.Content;
using Android.Graphics;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using List_App.Resources.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace List_App.Classes
{
    public static class ReadAllData
    {
        public static async Task Read(ListsActivity thisActivity)
        {
            ReadWrite.ReadUser();
            if(AppData.curUser == null)
            {
                AppData.curUser = new UserClass()
                {
                    Name = "Decent",
                    Email = "Def@email",
                    Uid = "DefUid"
                };
                PrepareFirstList.Prepare();
                ReadWrite.WriteUser();
                ReadWrite.WriteData();
            }
            else
            {
                ReadWrite.ReadData();
                AppData.curList = AppData.offlineLists;
            }
            
            // Until here  we are offline
            thisActivity.SetProfileButton("Login!", Color.Orange);

            if (AppData_Droid.auth.CurrentUser != null)
            {
                //We are online
                thisActivity.SetProfileButton("Online!", Color.Green);
                await ReadDataFromCloud.Read();
                
                AppData.curList = CompareLists.Compare(AppData.offlineLists,
                                                    AppData.onlineLists);

                ReadWrite.WriteData();
                foreach (var any in AppData.curList)
                {
                    SaveListOnCloud.Save(any);
                }
                //Read list from invitation List
                await ReadInvitations.Read();
                await FetchInvitations.Fetch();// populate the invitations list to the local list
                foreach (var anyItem in AppData.invitationsLists)
                {
                    AppData.curList.Add(anyItem);
                }




            }
        }
    }
}