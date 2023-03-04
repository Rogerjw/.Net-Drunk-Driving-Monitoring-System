<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegisterBarOwner.aspx.cs" Inherits="Drunk_Driving_Monitoring_System.RegisterBarOwner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div align="center">
        <br />
        <h3><strong>Registration Form</strong></h3>
        <br />
    </div>
    <div align="center">
        <br />
        <table width="25%">
            <tr>
                <td align="right"><asp:Label ID="Label1" runat="server" Text="ID : " Font-Size="Medium"></asp:Label></td>
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtid" runat="server" Height="25px" Width="160px" ReadOnly="True"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label2" runat="server" Text="Name : " Font-Size="Medium"></asp:Label></td>
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtname" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the Name" ControlToValidate="txtname" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label6" runat="server" Text="Restaurant : " Font-Size="Medium"></asp:Label></td>
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtrname" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter the Name" ControlToValidate="txtname" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label3" runat="server" Text="Mobile No. : " Font-Size="Medium"></asp:Label></td>
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtmobno" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the Mobile No." ControlToValidate="txtmobno" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label4" runat="server" Text="Address : " Font-Size="Medium"></asp:Label></td>
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtaddr" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter the Address" ControlToValidate="txtaddr" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label5" runat="server" Text="Password : " Font-Size="Medium"></asp:Label></td>
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtpass" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtpass" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td align="left">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" Height="35px" Width="92px" OnClick="btnRegister_Click"/>&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="35px" Width="92px" OnClick="btnCancel_Click"/>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>
