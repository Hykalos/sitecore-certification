using System.Collections.Generic;
using CertificationCode.Models;
using Sitecore.ContentSearch;
using Sitecore.ContentSearch.Linq;
using System.Linq;

namespace CertificationCode.layouts.Dogs_Alive
{
    using System;

    public partial class Subnavigation : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            // Put user code to initialize the page here
        }

        public IEnumerable<Pet> rpSubnavigation_GetData()
        {
            string indexName = $"sitecore_{Sitecore.Context.Database.Name.ToLower()}_index";
            ISearchIndex index = ContentSearchManager.GetIndex(indexName);

            using (var context = index.CreateSearchContext())
            {
                var querable = context.GetQueryable<Pet>().Where(x => x.Paths.Contains(Sitecore.Context.Item.ID) && x.TemplateName.Equals("Pet")).OrderBy(x => x.CreatedDate);

                var results = querable.GetResults();

                if (results.Hits.Any())
                {
                    return results.Hits.Select(x => x.Document).ToList();
                }
            }

            return new List<Pet>();
        } 
    }
}