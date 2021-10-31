using System.Collections.Generic;
using Android.App;
using Android.Graphics;
using Android.Views;
using Android.Widget;
using List_App.Resources.Models;
using List_App.Classes;

namespace List_App
{
    public class ListRowCustomAdapter : BaseAdapter<GroceryListClass>
    {
        readonly List<GroceryListClass> curList;
        readonly Activity myContext;

        public override GroceryListClass this[int position]
        {
            get
            {
                return curList[position];
            }
        }

        public ListRowCustomAdapter(Activity context, List<GroceryListClass> inpLists) : base()
        {
            this.myContext = context;
            this.curList = inpLists;
        }

        public override long GetItemId(int position)
        {
            return position;
        }

        public override int Count
        {
            get { return curList.Count; }
        }

        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            View view = convertView;
            if (view == null)
                view = myContext.LayoutInflater.Inflate(Android.Resource.Layout.SimpleListItem2, null);

            var pixelToDp = (int)Android.Content.Res.Resources.System.DisplayMetrics.Density;

            view.SetMinimumHeight(96 * pixelToDp);
           
            TextView MainTextView = view.FindViewById<TextView>(Android.Resource.Id.Text1);
            MainTextView.Text = curList[position].Name;
            MainTextView.TextSize = 24;
            MainTextView.SetTypeface(null, TypefaceStyle.Bold);


            string subtext = curList[position].Items.Count.ToString() + " Items for " + curList[position].Owner.Name;
           
            TextView SubTextView = view.FindViewById<TextView>(Android.Resource.Id.Text2);
            SubTextView.Text = subtext;
            SubTextView.SetTextColor(Color.DarkGray);

            if (position % 2 == 0)
                view.SetBackgroundColor(Color.Rgb(230, 230, 230));
            else
                view.SetBackgroundColor(Color.Transparent);

            GroceryListClass thisList = curList[position];
            if (thisList.Owner.Uid == AppData.curUser.Uid)
                SubTextView.SetTextColor(Color.Black);
            else
                SubTextView.SetTextColor(Color.Teal);

            return view;
        }
    }
}