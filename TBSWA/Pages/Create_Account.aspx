<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Create_Account.aspx.cs" Inherits="TBSWA.Pages.Create_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel style="clear:both" ID="PersonalDetails" runat="server" GroupingText="Personal Details" Width="800px">
        <table>
            <!-- Personal Details -->
            <tr>
                <td><asp:Label ID="lblGender" style="color:black" Text="Gender:" runat="server" /></td>
                <td><asp:RadioButton ID="radMale" Text="Male" runat="server" />&nbsp;
                    <asp:RadioButton ID="radFemale" Text="Female" runat="server" />
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblFirstName" style="color:Black" Text="First Name: " runat="server" /></td>
                <td><asp:TextBox ID="txtFirstName" runat="server" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblLastName" style="color:Black" Text="Last Name: " runat="server" /></td>
                <td><asp:TextBox ID="txtLastName" runat="server" /></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Button ID="Submit" Text="Submit" runat="server" OnClick="Submit_Click" />
</asp:Content>
