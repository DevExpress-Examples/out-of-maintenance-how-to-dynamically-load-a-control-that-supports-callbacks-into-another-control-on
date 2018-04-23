<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DataViewUserControl.ascx.cs" Inherits="DataViewUserControl" %>
<%@ Register Assembly="DevExpress.Web.v8.3" Namespace="DevExpress.Web.ASPxDataView"
    TagPrefix="dxdv" %>
<dxdv:ASPxDataView ID="ASPxDataView1" runat="server" DataSourceID="AccessDataSource1"
    Width="1000px" Height="700px">
    <ItemTemplate>
        <b>au_id</b>:
        <asp:Label ID="au_idLabel" runat="server" Text='<%# Eval("au_id") %>'></asp:Label><br />
        <b>au_lname</b>:
        <asp:Label ID="au_lnameLabel" runat="server" Text='<%# Eval("au_lname") %>'></asp:Label><br />
        <b>au_fname</b>:
        <asp:Label ID="au_fnameLabel" runat="server" Text='<%# Eval("au_fname") %>'></asp:Label><br />
        <b>phone</b>:
        <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>'></asp:Label><br />
        <b>address</b>:
        <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>'></asp:Label><br />
        <b>city</b>:
        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>'></asp:Label><br />
        <b>state</b>:
        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>'></asp:Label><br />
        <b>zip</b>:
        <asp:Label ID="zipLabel" runat="server" Text='<%# Eval("zip") %>'></asp:Label><br />
        <b>contract</b>:
        <asp:Label ID="contractLabel" runat="server" Text='<%# Eval("contract") %>'></asp:Label><br />
    </ItemTemplate>
</dxdv:ASPxDataView>
<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pubs.mdb"
    SelectCommand="SELECT * FROM [authors]"></asp:AccessDataSource>
