namespace CertificationCode.layouts.Dogs_Alive
{
    using System;

    public partial class Page_Content : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            // Put user code to initialize the page here

            var datasource = Attributes["sc_datasource"];

            if (!String.IsNullOrEmpty(datasource))
            {
                MainHeading.DataSource = MainImage.DataSource = MainText.DataSource = datasource;
            }
        }
    }
}