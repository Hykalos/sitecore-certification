<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Comments List.ascx.cs" Inherits="CertificationCode.layouts.Dogs_Alive.CommentsList" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<h2>Comments</h2>

<asp:Repeater runat="server" ItemType="Sitecore.Data.Items.Item" SelectMethod="rpComments_GetData" ID="rpComments">
    <ItemTemplate>
        <h3><strong><sc:Text runat="server" Field="Comment Author" Item="<%#Item %>"/></strong> <sc:Date runat="server" Field="__Created" Format="dd-MM-yyyy" Item="<%# Item %>"/></h3>
        <p><sc:Text runat="server" Field="Comment Text" Item="<%# Item %>"/></p>
        <p><sc:Link runat="server" Field="Comment Author Website" Item="<%# Item %>"/></p>
    </ItemTemplate>
</asp:Repeater>