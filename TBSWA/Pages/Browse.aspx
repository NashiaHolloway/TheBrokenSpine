<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="TBSWA.Browse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="pCatalog" runat="server">
        <HeaderTemplate>
            <table border="1" width="100%">
                <tr>
                    <th>Book Number</th>
                    <th>Name</th>
                    <th>Author</th>
                    <th>Genre</th>
                    <th>Price</th>
                </tr>            
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%#((System.Data.DataRowView)Container.DataItem)["code"]%></td>
                <td><%#((System.Data.DataRowView)Container.DataItem)["name"]%></td>
                <td><%#((System.Data.DataRowView)Container.DataItem)["author"]%></td>
                <td><%#((System.Data.DataRowView)Container.DataItem)["genre"]%></td>
                <td><%#((System.Data.DataRowView)Container.DataItem)["price"]%></td>              
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
