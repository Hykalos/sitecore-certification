using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Sitecore.ContentSearch;
using Sitecore.ContentSearch.SearchTypes;

namespace CertificationCode.Models
{
    public class Pet : SearchResultItem
    {
        [IndexField("Main Heading")]
        public string MainHeading { get; set; }

        [IndexField("Main Text")]
        public string MainSummary { get; set; }
    }
}