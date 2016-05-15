<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Comments_Form.ascx.cs" Inherits="CertificationCode.layouts.Dogs_Alive.Comments_Form" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<div class="row">
    <div class="col-xs-12">
        <div class="form-group">
            <asp:Label runat="server" CssClass="control-label" ID="lblAuthor" Text="Author" AssociatedControlID="txtAuthor"/>
            <asp:TextBox runat="server" ID="txtAuthor" CssClass="form-control"/>
        </div>

        <div class="form-group">
            <asp:Label runat="server" ID="lblContent" CssClass="control-label" Text="Comment" AssociatedControlID="txtContent"/>
            <asp:TextBox runat="server" ID="txtContent" CssClass="form-control"/>
        </div>

        <div class="form-group">
            <asp:Label runat="server" Text="Link" AssociatedControlID="txtLink" ID="lblLink" CssClass="control-label" />
            <asp:TextBox runat="server" ID="txtLink" CssClass="form-control"/>
        </div>

        <div class="form-group">
            <asp:Button runat="server" Text="Submit comment" ID="btnSubmit" CssClass="btn btn-default" OnClick="btnSubmit_OnClick"/>
        </div>
    </div>
</div>