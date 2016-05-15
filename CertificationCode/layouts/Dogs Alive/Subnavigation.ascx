<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Subnavigation.ascx.cs" Inherits="CertificationCode.layouts.Dogs_Alive.Subnavigation" %>
<%@ Import Namespace="Sitecore.Links" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<asp:Repeater ID="rpSubnavigation" ItemType="CertificationCode.Models.Pet" runat="server" SelectMethod="rpSubnavigation_GetData">
    <HeaderTemplate>
        <ul class="media-list pets">
    </HeaderTemplate>
    
    <ItemTemplate>
        <li class="media">
            <div class="media-body">
                <a href="<%#: Item.Url %>">
                    <h2 class="media-heading">
                        <%#: Item.MainHeading %>
                    </h2>
                </a>
                <%#: Item.MainSummary %>
            </div>
        </li>
    </ItemTemplate>

    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>