<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MathNotify2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<asp:Button ID="Button2" runat="server" OnClientClick="event.returnValue=false; oAuth2();" Text="頁面不會更新" />

	<script>
		function oAuth2() {
			var URL = 'https://notify-bot.line.me/oauth/authorize?';
			URL += 'response_type=code';
			URL += '&client_id=KiLPYbYsZav1J4zjJf1UPw';
			URL += '&redirect_uri=https://localhost:44334/';
			URL += '&scope=notify';
			URL += '&state=NO_STATE';
			window.location.href = URL;
			console.log(URL);
		}
	</script>

</asp:Content>
