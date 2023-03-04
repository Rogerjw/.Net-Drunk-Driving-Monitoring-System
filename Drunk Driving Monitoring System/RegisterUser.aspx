<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="Drunk_Driving_Monitoring_System.RegisterUser" %>
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
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtId" runat="server" Height="25px" Width="160px" ReadOnly="True"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label2" runat="server" Text="Name : " Font-Size="Medium"></asp:Label></td>
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the Name" ForeColor="Red" ControlToValidate="txtName" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label3" runat="server" Text="Address : " Font-Size="Medium"></asp:Label></td>
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtAddress" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter the Address" ForeColor="Red" ControlToValidate="txtAddress" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label4" runat="server" Text="MobileNo. : " Font-Size="Medium"></asp:Label></td>
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtMobileno" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter the Mobile No." ForeColor="Red" ControlToValidate="txtMobileno" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label5" runat="server" Text="Gender : " Font-Size="Medium"></asp:Label></td>
                <td align="center"> 
                    <asp:RadioButtonList ID="rbtnList" runat="server" RepeatDirection="Horizontal" Width="150px" Height="35px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label6" runat="server" Text="Weight : " Font-Size="Medium"></asp:Label></td>
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtWeight" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter the Weight" ForeColor="Red" ControlToValidate="txtWeight" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label7" runat="server" Text="Password : " Font-Size="Medium"></asp:Label></td>
                <td align="center">&nbsp;&nbsp;<asp:TextBox ID="txtPass" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter the Password" ForeColor="Red" ControlToValidate="txtPass" SetFocusOnError="True">*</asp:RequiredFieldValidator>
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
                <td align="right"></td>
                <td align="left">
                    <asp:Button ID="btnReg" runat="server" Text="Register" Font-Size="Medium" Height="35px" Width="92px" OnClick="btnReg_Click" />&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Font-Size="Medium" Height="35px" Width="92px" OnClick="btnCancel_Click" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>
