using System.Collections.Generic;
using System.Linq;
using Sitecore.Data.Items;

namespace CertificationCode.layouts.Dogs_Alive
{
    using System;

    public partial class CommentsList : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            // Put user code to initialize the page here
        }

        public IEnumerable<Item> rpComments_GetData()
        {
            return Sitecore.Context.Item.Children.Where(child => child.TemplateName.Equals("Comment"));
        } 
    }
}