using System.Collections.Specialized;

namespace CertificationCode.layouts.Dogs_Alive
{
    using System;

    public partial class Page_Content : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            // Put user code to initialize the page here

            string datasource = Attributes["sc_datasource"];

            if (!String.IsNullOrEmpty(datasource))
            {
                MainHeading.DataSource = MainImage.DataSource = MainText.DataSource = datasource;
            }

            string rawParameters = Attributes["sc_parameters"];

            NameValueCollection parameters = Sitecore.Web.WebUtil.ParseUrlParameters(rawParameters);

            this.Colour = parameters["Colour"];
        }

        public string Colour { get; set; }
    }
}