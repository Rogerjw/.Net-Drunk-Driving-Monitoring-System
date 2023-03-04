<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Drunk_Driving_Monitoring_System.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .panel panel-info
        {
            width:50%;
        }
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <br />
        <h1><strong>Home</strong></h1>
        <br />
    </div>
    <div align="center">        
        <table width="80%">
            <tr>
                <td align="left"><asp:Image ID="Image1" runat="server" Height="400px" Width="400px" ImageUrl="~/Images/drunk home.jpg"/></td>
                <td align="center">
                    <div style="margin-top:-100px">
                        <div id="notice" runat="server" class="panel panel-info" visible="false" style="width:65%; height:95px">
                          <div class="panel-heading">
                              <table width="100%">
                                  <tr>
                                      <td align="center">Notification Alert</td>
                                      <td align="right"><asp:Button ID="btnclose" runat="server" Text="X" Height="25px" ForeColor="Red" BackColor="White" BorderStyle="None" OnClick="btnclose_Click" /></td>
                                  </tr>
                              </table>
                          </div>
                          <div class="panel-body">You have receive new notification...</div>
                            <br />
                            <br />
                        </div>
                        <div align="center">
                            <asp:Label ID="Label1" runat="server" Text="Today's alcohol Consumption : " Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;
                            <asp:Label ID="lbalc" runat="server" Text="0 ml" Font-Size="X-Large" ForeColor="#0066FF" Font-Bold="true"></asp:Label><br /><br />
                            <asp:Label ID="Label2" runat="server" Text="Today's BAC : " Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;
                            <asp:Label ID="lbBac" runat="server" Text="0.0 BAC" Font-Size="X-Large" ForeColor="#0066FF" Font-Bold="true"></asp:Label>
                        </div>
                    </div>
                </td>
            </tr>          
        </table>
        <br />
        <br />
    </div>
</asp:Content>
