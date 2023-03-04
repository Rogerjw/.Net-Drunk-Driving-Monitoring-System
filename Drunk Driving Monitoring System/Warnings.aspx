<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Warnings.aspx.cs" Inherits="Drunk_Driving_Monitoring_System.Warnings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div align="center">
        <br />
        <h1><strong>Warnings</strong></h1>
        <br />
    </div>
    <div align="center">
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="60%" AutoGenerateColumns="False">
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
