<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Page_Content.ascx.cs" Inherits="CertificationCode.layouts.Dogs_Alive.Page_Content" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<h1><sc:Text runat="server" ID="MainHeading" Field="Main Heading"/></h1>
		
<figure class="portrait">
    <sc:Image runat="server" ID="MainImage" Field="Main Image" MaxWidth="400"/>
</figure>
		
<sc:Text runat="server" ID="MainText" Field="Main Text"/>