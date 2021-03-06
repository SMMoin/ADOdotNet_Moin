<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TeacherInformationUserControl.ascx.cs" Inherits="ASPDotNet_Moin.UserControls.TeacherInformationUserControl" %>

<style type="text/css">

    .auto-style1 {
        width: 1018px;
    }
    </style>


<div class="col-md-6 mx-auto">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col">
                    <center>
&nbsp;</center>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <center>
                        <h3>Teacher&#39;s Information</h3>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <hr />
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label>
                    Full Name</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name Is Required">*</asp:RequiredFieldValidator>
                    <div class="auto-style1">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"  Width="180px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    Father Name<div class="form-group">
                        <asp:TextBox ID="txtFather" runat="server" CssClass="form-control"  Width="180px"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label>
                    Address</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is Required">*</asp:RequiredFieldValidator>
                    <div class="form-group">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"  Width="180px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    Mobile No<div class="form-group">
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"  Width="180px"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    NID<asp:RequiredFieldValidator ID="RequiredFieldValidatorNID" runat="server" ControlToValidate="txtNID" ErrorMessage="NID is Required" InitialValue="0">*</asp:RequiredFieldValidator>
                    <div class="form-group">
                        <asp:TextBox ID="txtNID" runat="server" CssClass="form-control"  Width="180px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <label>
                    Position</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPosition" runat="server" ControlToValidate="txtPosition" ErrorMessage="Position Is Required!">*</asp:RequiredFieldValidator>
                    <div class="form-group">
                        <asp:TextBox ID="txtPosition" runat="server" CssClass="form-control"  Width="180px"></asp:TextBox>
                    </div>
                </div>
            </div>
            <asp:Label ID="lblTID" runat="server" Visible="False"></asp:Label>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Button ID="btnAdd" runat="server" BackColor="#009933" class="btn btn-success btn-block btn-lg" ForeColor="White" Text="Add" OnClick="btnAdd_Click" />
                </div>
            </div>
            <br />
            <div class="col-md-6 mx-auto">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>
        </div>
    </div>
</div>
<div class="col-md-12">
    <div class="card">
        <div class="card-body">
            <div class="row">
            </div>
            <div class="row">
                <div class="col">
                    <center>
                        <h2>Teacher&#39;s Data</h2>
                        <asp:Label ID="lblTeacherData" runat="server" BackColor="#333399" class="badge badge-pill badge-info" ForeColor="White" Text="Teacher Information for Update Or Delete"></asp:Label>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <hr />
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TeacherID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" InsertVisible="False" ReadOnly="True" SortExpression="TeacherID" />
                            <asp:BoundField DataField="TeacName" HeaderText="TeacName" SortExpression="TeacName" />
                            <asp:BoundField DataField="Teacfather" HeaderText="Teacfather" SortExpression="Teacfather" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                            <asp:BoundField DataField="NID" HeaderText="NID" SortExpression="NID" />
                            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Teacher] WHERE [TeacherID] = @TeacherID" InsertCommand="INSERT INTO [Teacher] ([TeacName], [Teacfather], [Address], [MobileNo], [NID], [Position]) VALUES (@TeacName, @Teacfather, @Address, @MobileNo, @NID, @Position)" SelectCommand="SELECT * FROM [Teacher]" UpdateCommand="UPDATE [Teacher] SET [TeacName] = @TeacName, [Teacfather] = @Teacfather, [Address] = @Address, [MobileNo] = @MobileNo, [NID] = @NID, [Position] = @Position WHERE [TeacherID] = @TeacherID">
                        <DeleteParameters>
                            <asp:Parameter Name="TeacherID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="TeacName" Type="String" />
                            <asp:Parameter Name="Teacfather" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="MobileNo" Type="String" />
                            <asp:Parameter Name="NID" Type="String" />
                            <asp:Parameter Name="Position" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="TeacName" Type="String" />
                            <asp:Parameter Name="Teacfather" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="MobileNo" Type="String" />
                            <asp:Parameter Name="NID" Type="String" />
                            <asp:Parameter Name="Position" Type="String" />
                            <asp:Parameter Name="TeacherID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</div>


