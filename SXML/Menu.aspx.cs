using System;
using System.Web.UI.WebControls;
namespace ADV_ASP_Day10_11
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //OnMenuItemDataBound event
        protected void OnMenuItemDataBound(object sender, MenuEventArgs e)
        {
            string currentPage = Request.Url.Segments[Request.Url.Segments.Length - 1].Split('.')[0];
            if (e.Item.Text.Equals(currentPage, StringComparison.InvariantCultureIgnoreCase))
            {
                //Check parent item is null or not
                if (e.Item.Parent != null)
                {
                    e.Item.Parent.Selected = true;
                }
                else
                {
                    e.Item.Selected = true;
                }
            }
        }
    }
}