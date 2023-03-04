<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ULogin.aspx.cs" Inherits="Drunk_Driving_Monitoring_System.ULogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <br />
        <h3><strong>User Login </strong></h3>
        <br />
    </div>
    <div align="center">
        <table width="30%">
            <tr>
                <td align="right"><asp:Label ID="Label1" runat="server" Text="User-Id : " Font-Size="Medium"></asp:Label></td>
                <td align="left">&nbsp;&nbsp;<asp:TextBox ID="txtid" runat="server" Height="25px" Width="162px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label2" runat="server" Text="Password : " Font-Size="Medium"></asp:Label></td>
                <td align="left">&nbsp;&nbsp;<asp:TextBox ID="txtpass" runat="server" TextMode="Password" Height="25px" Width="162px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td align="left"><asp:Button ID="btnLogin" runat="server" Text="Login" Font-Size="Medium" Height="40px" Width="80px" OnClick="btnLogin_Click" /></td>
            </tr>
        </table>                
    </div>
    <div align="center">
        <br />
        <h4>Not Login yet? <a style="color:dodgerblue" href="RegisterUser.aspx"> Register here</a></h4>
        <br /><br />
    </div>
</asp:Content>
