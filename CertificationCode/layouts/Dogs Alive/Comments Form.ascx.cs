using Sitecore;
using Sitecore.Data;
using Sitecore.Data.Fields;
using Sitecore.Data.Items;
using Sitecore.SecurityModel;

namespace CertificationCode.layouts.Dogs_Alive
{
    using System;

    public partial class Comments_Form : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            // Put user code to initialize the page here
        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            Database masterDatabase = Sitecore.Configuration.Factory.GetDatabase("master");

            Item contextItem = masterDatabase.GetItem(Sitecore.Context.Item.ID);

            using (new SecurityDisabler())
            {
                Item newComment = contextItem.Add(DateUtil.IsoNow,
                    new TemplateID(new ID("{21B7E48C-3DFF-48A7-B48A-2BE90C9FAB06}")));

                try
                {
                    newComment.Editing.BeginEdit();

                    newComment.Fields["Comment Author"].Value = txtAuthor.Text;
                    newComment.Fields["Comment Text"].Value = txtContent.Text;

                    LinkField link = newComment.Fields["Comment Author Website"];
                    link.Url = txtLink.Text;
                    link.Text = txtLink.Text;
                    link.Target = "_blank";
                    link.LinkType = "external";

                    newComment.Editing.EndEdit();
                }
                catch
                {
                    newComment.Editing.CancelEdit();
                }
            }

            Sitecore.Web.WebUtil.ReloadPage();
        }
    }
}