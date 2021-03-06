<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="ClassInfo.aspx.cs" Inherits="ASPDotNet_Moin.ContentPages.ClassInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<table class="auto-style1">
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style4">
                </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblClassName" runat="server" Text="Class"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtClassName" runat="server" Height="27px" Width="163px"></asp:TextBox>
            </td>
            <td rowspan="4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3" rowspan="2">
                <asp:Button ID="btnAdd" runat="server" Text="Add"  />
&nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" Height="30px" Width="140px" />
&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblCLID" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
