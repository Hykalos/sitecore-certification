<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Subnavigation.ascx.cs" Inherits="CertificationCode.layouts.Dogs_Alive.Subnavigation" %>
<%@ Import Namespace="Sitecore.Links" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<asp:Repeater ID="rpSubnavigation" ItemType="Sitecore.Data.Items.Item" runat="server" SelectMethod="rpSubnavigation_GetData">
    <HeaderTemplate>
        <ul class="media-list pets">
    </HeaderTemplate>
    
    <ItemTemplate>
        <li class="media">
            <div class="media-body">
                <a href="<%#: LinkManager.GetItemUrl(Item) %>">
                    <h2 class="media-heading">
                        <%#: Item.Name %>
                    </h2>
                </a>
                
                <p>Adopt this animal - give us a call on 000-000-0000</p>
            </div>
        </li>
    </ItemTemplate>

    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>