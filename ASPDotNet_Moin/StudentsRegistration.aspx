<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentsRegistration.aspx.cs" Inherits="ASPDotNet_Moin.StudentsRegistration" %>

<%@ Register Src="~/UserControls/StudentInformationUserControl.ascx" TagPrefix="uc1" TagName="StudentInformationUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:StudentInformationUserControl runat="server" id="StudentInformationUserControl" />
</asp:Content>
