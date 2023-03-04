<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="Drunk_Driving_Monitoring_System.ViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .btn btn-info
        {
            font-weight:bold;
            font-size:medium;
            border-radius:10px;
        }        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="history" runat="server" visible="false" align="center">
        <br />
        <h1><strong>User's History</strong></h1>
        <br />
    </div>
    <div id="list" runat="server" align="center">
        <br />
        <h1><strong>User's List</strong></h1>
        <br />
    </div>
    <div style="margin-left:20%">
        <asp:Button ID="btnHistory" runat="server" class="btn btn-info" Text="History" width="100px" Font-Bold="True" Font-Size="Medium" OnClick="btnHistory_Click1"/>       
    </div>
    <div id="searchbar" runat="server" visible="false" align="center">
        <br />
        <asp:Label ID="Label1" runat="server" Text="User Search : "></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtserachbox" runat="server" PlaceHolder="Enter User name or ID" Height="25px" Width="175px"></asp:TextBox>&nbsp;<asp:LinkButton ID="lbtnSearch" runat="server" OnClick="lbtnSearch_Click" ><span class="glyphicon glyphicon-search"></span></asp:LinkButton>
    </div>
    <div align="center">       
        <br />

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" width="60%" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="User-ID">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="Name" HeaderText="Name">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="Address" HeaderText="Address" >
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="MobileNo" HeaderText="Mobile No." >
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="Gender" HeaderText="Gender">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />

        <div id="back" runat="server" style="margin-left:-59%">
        <asp:Button ID="btnBack" runat="server"  class="btn btn-info" Text="Back" Font-Bold="True" Font-Size="Small" Height="34px" Width="75px" OnClick="btnBack_Click" Visible="False" /><br />
        </div>
        <br />

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="65%" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Uid" HeaderText="User-Id">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="Uname" HeaderText="Name" >
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="DrinkName" HeaderText="Drink ">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="AlcoholQty" HeaderText="Alcohol Quantity(in ml)">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="Date" HeaderText="Date" >
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="Time" HeaderText="Time">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="Restaurant" HeaderText="Restaurant" >
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />

        <asp:GridView ID="GridView3" runat="server" CellPadding="4" Width="65%" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                <asp:BoundField DataField="BAC" HeaderText="BAC ">
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px" />
                </asp:BoundField>

                <asp:BoundField DataField="AlcoholQty" HeaderText="Alcohol Quantity(in ml)">
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" Height="30px" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" Height="30px" />
                </asp:BoundField>

                <asp:BoundField DataField="Warning" HeaderText="Warning">
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px" />
                </asp:BoundField>

                <asp:BoundField DataField="Date" HeaderText="Date" >
                <HeaderStyle Height="30px" />
                <ItemStyle Height="30px" />
                </asp:BoundField>

                <asp:BoundField DataField="Time" HeaderText="Time" >
                <HeaderStyle Height="30px" />
                <ItemStyle Height="30px" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br /><br /><br />
    </div>    
</asp:Content>
