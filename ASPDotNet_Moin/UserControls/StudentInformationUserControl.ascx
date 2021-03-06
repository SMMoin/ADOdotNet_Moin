<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentInformationUserControl.ascx.cs" Inherits="ASPDotNet_Moin.UserControls.StudentInformationUserControl" %>

<style type="text/css">


    .auto-style1 {
        width: 100%;
    }
    
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        color: #0033CC;
        font-size: large;
    }
    .auto-style3 {
        color: #0033CC;
        font-size: large;
    }
    .auto-style9 {
        color: #0033CC;
        font-size: large;
        }
    .auto-style6 {
        color: #333333;
        font-size: large;
    }
    .auto-style11 {
        color: #333333;
        width: 467px;
    }
    .auto-style5 {
        color: #333333;
    }
    .auto-style7 {
        color: #333333;
        font-size: large;
        height: 51px;
        width: 326px;
    }
    .auto-style8 {
        color: #333333;
        height: 51px;
        width: 467px;
    }
    .auto-style13 {
        font-size: x-large;
        color: #003399;
    }
    .auto-style14 {
        color: #333333;
        font-size: large;
        width: 326px;
    }
    .auto-style15 {
        color: #660066;
    }
</style>


<table class="auto-style1">
    <tr>
        <td class="auto-style3" colspan="2">
            <h2><strong>Students Information Management System</strong></h2>
        </td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>
            <asp:Label ID="lblName" runat="server" CssClass="auto-style4" Text="Student Name"></asp:Label>
            <br />
            <asp:TextBox ID="txtName" runat="server" CssClass="auto-style4" placeholder="Write Your Name" Width="250px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </strong></td>
        <td class="auto-style11"><strong>
            <asp:Label ID="lblAddress" runat="server" CssClass="auto-style4" Text="Address"></asp:Label>
            &nbsp;<br />
            <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style4" placeholder="Your Course Name" Width="250px"></asp:TextBox>
            </strong></td>
        <td class="auto-style5" rowspan="5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>
            <asp:Label ID="lblEmail" runat="server" CssClass="auto-style4" Text="Email Address"></asp:Label>
            </strong>
            <br />
            <strong>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style4" placeholder="Your Email" Width="250px"></asp:TextBox>
            &nbsp;</strong><asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Your Email is not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
        <td class="auto-style8"><strong>
            <asp:Label ID="lblPassword" runat="server" CssClass="auto-style4" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style4" placeholder="Password" Width="250px"></asp:TextBox>
            &nbsp;</strong><asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>
            <asp:Label ID="lblClassID" runat="server" CssClass="auto-style4" Text="Class"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlClass" runat="server" CssClass="auto-style4" Height="27px" Width="250px" DataSourceID="SqlDataSource2" DataTextField="ClassName" DataValueField="ClassName">
                <asp:ListItem>Choose One</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ClassName] FROM [Class]"></asp:SqlDataSource>
            </strong></td>
        <td class="auto-style11"><strong>
            <asp:Label ID="lblConfirmPass" runat="server" CssClass="auto-style4" Text="Confirm Password"></asp:Label>
            &nbsp;<br />
            <asp:TextBox ID="txtConfirmpass" runat="server" CssClass="auto-style4" placeholder="Confirm Password" Width="250px"></asp:TextBox>
            &nbsp;</strong><asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" runat="server" ControlToValidate="txtConfirmpass" ErrorMessage="Confirm Pass is required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidatorConfirmPass" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmpass" ErrorMessage="Your Password not match" ForeColor="Red">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>
            <asp:Label ID="lblDOB" runat="server" CssClass="auto-style4" Text="Date of Birth"></asp:Label>
            <br />
            <asp:TextBox ID="txtDate" runat="server" CssClass="auto-style4" TextMode="Date" Width="250px"></asp:TextBox>
            &nbsp;</strong><asp:RangeValidator ID="RangeValidatorDOB" runat="server" ControlToValidate="txtDate" ErrorMessage="Date of Birth must be 01-01-1990 to 01-01-2022" ForeColor="#FF3300" MaximumValue="01-01-2022" MinimumValue="01-01-1990" Type="Date">*</asp:RangeValidator>
        </td>
        <td class="auto-style11"><strong>
            <asp:CheckBox ID="CheckBoxAgree" runat="server" CssClass="auto-style4" Text="Yes, I am agree" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">
            <asp:Label ID="lblTid" runat="server" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdd" runat="server" BackColor="#339966" Font-Bold="True" Font-Size="14pt" Height="40px" Text="Add" Width="100px" OnClick="btnAdd_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" Font-Bold="True" Font-Size="14pt" Height="40px"  Text="Update" Width="100px" OnClick="btnUpdate_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" BackColor="#993300" Font-Bold="True" Font-Size="14pt" ForeColor="White" Height="40px"  Text="Delete" Width="100px" OnClick="btnDelete_Click" />
        </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                    <asp:BoundField DataField="StuName" HeaderText="StuName" SortExpression="StuName" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Student] WHERE [StudentID] = @StudentID" InsertCommand="INSERT INTO [Student] ([StuName], [EmailAddress], [Class], [DOB], [Address], [Password]) VALUES (@StuName, @EmailAddress, @Class, @DOB, @Address, @Password)" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [StuName] = @StuName, [EmailAddress] = @EmailAddress, [Class] = @Class, [DOB] = @DOB, [Address] = @Address, [Password] = @Password WHERE [StudentID] = @StudentID">
                <DeleteParameters>
                    <asp:Parameter Name="StudentID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="StuName" Type="String" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="Class" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StuName" Type="String" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="Class" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="StudentID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
<p class="auto-style13">
    <strong><span class="auto-style15">Details View for Student Information</span></strong></p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
            <asp:BoundField DataField="StuName" HeaderText="StuName" SortExpression="StuName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        </Fields>
    </asp:DetailsView>
</p>
<p>
    &nbsp;</p>


