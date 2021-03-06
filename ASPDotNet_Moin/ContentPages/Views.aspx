<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Views.aspx.cs" Inherits="ASPDotNet_Moin.ContentPages.Views" %>

<%@ Register Src="~/UserControls/AllViews.ascx" TagPrefix="uc1" TagName="AllViews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:AllViews runat="server" id="AllViews" />
</asp:Content>
