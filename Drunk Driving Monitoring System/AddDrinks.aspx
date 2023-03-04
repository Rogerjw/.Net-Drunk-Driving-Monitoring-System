<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddDrinks.aspx.cs" Inherits="Drunk_Driving_Monitoring_System.AddDrinks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <br />
        <h1><strong>Add Drinks</strong></h1>
        <br />
    </div>
    <div align="center" style="margin-left:-55px">
        <br />
        <table width="30%">
            <tr>
                <td align="right"><asp:Label ID="Label1" runat="server" Text="User : " Font-Size="Medium"></asp:Label></td>
                <td align="center">
                    <asp:DropDownList ID="ddlusers" runat="server" Height="25px" Width="160px" AutoPostBack="true" >                        
                    </asp:DropDownList>                    
                </td>
            </tr>            
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label2" runat="server" Text="Drink Name : " Font-Size="Medium"></asp:Label></td>
                <td align="center"><asp:TextBox ID="txtaname" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label3" runat="server" Text="Quantity Served(in ml) : " Font-Size="Medium"></asp:Label></td>
                <td align="center"><asp:TextBox ID="txtalc" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label4" runat="server" Text="Restaurant : " Font-Size="Medium"></asp:Label></td>
                <td align="center"><asp:TextBox ID="txtrst" runat="server" ReadOnly="true" Height="25px" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td align="left"><asp:Button ID="btnAdd" runat="server" Text="Add" Height="35px" Width="85px" Font-Size="Medium" OnClick="btnAdd_Click"/></td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>
