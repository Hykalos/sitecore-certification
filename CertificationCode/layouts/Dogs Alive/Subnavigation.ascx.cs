using System.Collections.Generic;

namespace CertificationCode.layouts.Dogs_Alive
{
    using System;

    public partial class Subnavigation : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            // Put user code to initialize the page here
        }

        public IEnumerable<Sitecore.Data.Items.Item> rpSubnavigation_GetData()
        {
            return Sitecore.Context.Item.GetChildren();
        } 
    }
}