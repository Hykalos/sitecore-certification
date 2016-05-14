<%@ Page language="c#" Codepage="65001" AutoEventWireup="true" Inherits="CertificationCode.layouts.Dogs_Alive.Main" CodeBehind="Main.aspx.cs" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ OutputCache Location="None" VaryByParam="none" %>
<!DOCTYPE html>
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">                  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Dogs Alive</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/jumbotron.css" rel="stylesheet">
    <link href="/css/dogsalive.css" rel="stylesheet">
    <sc:VisitorIdentification runat="server" />
  </head>
  <body>
  <form method="post" runat="server" id="mainform">
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Dogs Alive</a>
        </div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Donate <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Adopt</a></li>
		<li><a href="#">Volunteer</a></li>
		
								<li><a href="#">Learn</a></li>
	</ul>
	</div>
        
      </div>
    </nav>
	
      <div class="section-detail section">
          <div class="container">
              <!-- YOUR COMPONENTS HERE -->
          </div>
          
          <footer>
              <p>&copy; Company 2016</p>
          </footer>
      </div>
  </form>
  </body>
</html>
