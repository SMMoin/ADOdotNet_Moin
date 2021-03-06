<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AllViews.ascx.cs" Inherits="ASPDotNet_Moin.UserControls.AllViews" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
        font-size: xx-large;
    }
    .auto-style2 {
        text-align: center;
        font-size: xx-large;
        text-decoration: underline;
    }
</style>

<p class="auto-style1">
    <strong>Form View</strong></p>
<asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ClassID" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        ClassID:
        <asp:Label ID="ClassIDLabel1" runat="server" Text='<%# Eval("ClassID") %>' />
        <br />
        ClassName:
        <asp:TextBox ID="ClassNameTextBox" runat="server" Text='<%# Bind("ClassName") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        ClassName:
        <asp:TextBox ID="ClassNameTextBox" runat="server" Text='<%# Bind("ClassName") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        ClassID:
        <asp:Label ID="ClassIDLabel" runat="server" Text='<%# Eval("ClassID") %>' />
        <br />
        ClassName:
        <asp:Label ID="ClassNameLabel" runat="server" Text='<%# Bind("ClassName") %>' />
        <br />

    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Class]"></asp:SqlDataSource>
<p>
    &nbsp;</p>
<p class="auto-style2">
    <strong>List View</strong></p>
<p class="auto-style2">
    &nbsp;</p>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="StudentID" DataSourceID="SqlDataSource2">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
            </td>
            <td>
                <asp:Label ID="StuNameLabel" runat="server" Text='<%# Eval("StuName") %>' />
            </td>
            <td>
                <asp:Label ID="EmailAddressLabel" runat="server" Text='<%# Eval("EmailAddress") %>' />
            </td>
            <td>
                <asp:Label ID="ClassLabel" runat="server" Text='<%# Eval("Class") %>' />
            </td>
            <td>
                <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
            </td>
            <td>
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            </td>
            <td>
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:Label ID="StudentIDLabel1" runat="server" Text='<%# Eval("StudentID") %>' />
            </td>
            <td>
                <asp:TextBox ID="StuNameTextBox" runat="server" Text='<%# Bind("StuName") %>' />
            </td>
            <td>
                <asp:TextBox ID="EmailAddressTextBox" runat="server" Text='<%# Bind("EmailAddress") %>' />
            </td>
            <td>
                <asp:TextBox ID="ClassTextBox" runat="server" Text='<%# Bind("Class") %>' />
            </td>
            <td>
                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
            </td>
            <td>
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            </td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="StuNameTextBox" runat="server" Text='<%# Bind("StuName") %>' />
            </td>
            <td>
                <asp:TextBox ID="EmailAddressTextBox" runat="server" Text='<%# Bind("EmailAddress") %>' />
            </td>
            <td>
                <asp:TextBox ID="ClassTextBox" runat="server" Text='<%# Bind("Class") %>' />
            </td>
            <td>
                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
            </td>
            <td>
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            </td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
            </td>
            <td>
                <asp:Label ID="StuNameLabel" runat="server" Text='<%# Eval("StuName") %>' />
            </td>
            <td>
                <asp:Label ID="EmailAddressLabel" runat="server" Text='<%# Eval("EmailAddress") %>' />
            </td>
            <td>
                <asp:Label ID="ClassLabel" runat="server" Text='<%# Eval("Class") %>' />
            </td>
            <td>
                <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
            </td>
            <td>
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            </td>
            <td>
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server">StudentID</th>
                            <th runat="server">StuName</th>
                            <th runat="server">EmailAddress</th>
                            <th runat="server">Class</th>
                            <th runat="server">DOB</th>
                            <th runat="server">Address</th>
                            <th runat="server">Password</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
            </td>
            <td>
                <asp:Label ID="StuNameLabel" runat="server" Text='<%# Eval("StuName") %>' />
            </td>
            <td>
                <asp:Label ID="EmailAddressLabel" runat="server" Text='<%# Eval("EmailAddress") %>' />
            </td>
            <td>
                <asp:Label ID="ClassLabel" runat="server" Text='<%# Eval("Class") %>' />
            </td>
            <td>
                <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
            </td>
            <td>
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            </td>
            <td>
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>

