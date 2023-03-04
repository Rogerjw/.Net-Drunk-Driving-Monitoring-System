<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="Drunk_Driving_Monitoring_System.Notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <br />
            <h1><strong>Notifications</strong></h1>
        <br />
    </div>
    <div align="center">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="60%" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Uid" HeaderText="User-ID">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px" />
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="Message" HeaderText="Message">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="Status" HeaderText="Status">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="Date" HeaderText="Date">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

                <asp:BoundField DataField="Time" HeaderText="Time">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px"/>
                </asp:BoundField>

            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"/>
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br /><br /><br /><br />
    </div>
</asp:Content>
