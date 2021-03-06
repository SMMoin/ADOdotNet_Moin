<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="TeacherInformation.aspx.cs" Inherits="ASPDotNet_Moin.ContentPages.TeacherInformation" %>

<%@ Register Src="~/UserControls/TeacherInformationUserControl.ascx" TagPrefix="uc1" TagName="TeacherInformationUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:TeacherInformationUserControl runat="server" id="TeacherInformationUserControl" />
</asp:Content>
