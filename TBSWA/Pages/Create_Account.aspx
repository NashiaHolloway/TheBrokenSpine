<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Create_Account.aspx.cs" Inherits="TBSWA.Pages.Create_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Personal Details -->
    <asp:Panel style="clear:both" ID="PersonalDetails" runat="server" GroupingText="Personal Details" Width="800px">
        <table>
            <tr>
                <td><asp:Label ID="lblGender" style="color:black" Text="Gender:" runat="server" /></td>
                <td><asp:RadioButton ID="radMale" Text="Male" runat="server" />&nbsp;
                    <asp:RadioButton ID="radFemale" Text="Female" runat="server" />
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblFirstName" style="color:Black" Text="*First Name: " runat="server" /></td>
                <td><asp:TextBox ID="txtFirstName" runat="server" /></td>
                <!-- First Name Error Message -->
                <td><asp:RequiredFieldValidator ID="valFirstNameRequired" style="color:Red" runat="server" ControlToValidate="txtFirstName" ErrorMessage="* You must enter a first name" Display="Dynamic" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblLastName" style="color:Black" Text="*Last Name: " runat="server" /></td>
                <td><asp:TextBox ID="txtLastName" runat="server" /></td>
                <!-- Last Name Error Message -->
                <td><asp:RequiredFieldValidator ID="valLastNameRequired" style="color:Red" runat="server" ControlToValidate="txtLastName" ErrorMessage="* You must enter a last name" Display="Dynamic" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblDateOfBirth" style="color:Black" Text="Date of Birth: " runat="server" /></td>
                <td><asp:Calendar ID="txtDateOfBirth" runat="server" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblEmailAddress" style="color:Black" Text="*Email Address: " runat="server" /></td>
                <td><asp:TextBox ID="txtEmailAddress" runat="server" /></td>
                 <!-- Email Address Error Message -->
                <td><asp:RequiredFieldValidator ID="valEmailAddressRequired" style="color:Red" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="* You must enter a valid email address" Display="Dynamic" /></td>
            </tr>
        </table>
    </asp:Panel>

    <!-- Address Information -->
    <asp:Panel style="clear:both" ID="AddressInfo" runat="server" GroupingText="Address Information" Width="800px">
        <table>
            <tr>
                <td><asp:Label ID="lblStreetAddress" style="color:black" Text="*Street Address: " runat="server"/></td>
                <td><asp:TextBox ID="txtStreetAddress" runat="server" /></td>
                 <!-- Street Address Error Message -->
                <td><asp:RequiredFieldValidator ID="valStreetAddressRequired" style="color:Red" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="* You must enter a street address" Display="Dynamic" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblPostalCode" style="color:Black" Text="*Postal Code: " runat="server" /></td>
                <td><asp:TextBox ID="txtPostalCode" runat="server" /></td>
                <!-- Postal Code Error Message -->
                <td><asp:RequiredFieldValidator ID="valZipCodeRequired" style="color:Red" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="* You must enter a zip code" Display="Dynamic" /></td>
                <td><asp:RegularExpressionValidator ID="valFiveDigitZipCodeRequired" style="color:red" runat="server" ControlToValidate="txtPostalCode" ValidationExpression="\d{5}" ErrorMessage="* You must enter a 5 digit zip code" Display="Dynamic" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblCity" style="color:black" Text="*City: " runat="server"/></td>
                <td><asp:TextBox ID="txtCity" runat="server" /></td>
                 <!-- City Error Message -->
                <td><asp:RequiredFieldValidator ID="valCityRequired" style="color:Red" runat="server" ControlToValidate="txtCity" ErrorMessage="* You must enter a city name" Display="Dynamic" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblState" style="color:black" Text="*State/Province: " runat="server"/></td>
                <td><asp:TextBox ID="txtState" runat="server" /></td>
                 <!-- State/Province Error Message -->
                <td><asp:RequiredFieldValidator ID="valStateRequired" style="color:Red" runat="server" ControlToValidate="txtState" ErrorMessage="* You must enter a state or province" Display="Dynamic" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblCountry" stlye="color:Black" Text="*Country: " runat="server" /></td>
                <td><asp:DropDownList ID="txtCountry" runat="server" >
                    <asp:ListItem Text="United States" Value="USA"></asp:ListItem>
                    <asp:ListItem Text="Germany" Value="Germany"></asp:ListItem>
                    <asp:ListItem Text="Mexico" Value="Mexico"></asp:ListItem>
                    <asp:ListItem Text="Denmark" Value="Denmark"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                 <!-- Country Error Message -->
                <td><asp:RequiredFieldValidator ID="valCountry" style="color:Red" runat="server" ControlToValidate="txtCountry" ErrorMessage="* You must select a country" Display="Dynamic" /></td>
            </tr>
        </table>
    </asp:Panel>

    <!-- Password Information -->
    <asp:Panel style="clear:both" ID="PasswordInfo" runat="server" GroupingText="Password Information" Width="800px">
        <table>
            <tr>
                <td><asp:Label ID="lblPassword" style="color:black" Text="*Password: " runat="server"/></td>
                <td><asp:TextBox ID="txtPassword" Textmode="Password" runat="server" /></td>
                 <!-- Password Error Message -->
                <td><asp:RequiredFieldValidator ID="valPasswordRequired" style="color:Red" runat="server" ControlToValidate="txtPassword" ErrorMessage="* You must enter a password" Display="Dynamic" /></td>
            </tr>
             <tr>
                <td><asp:Label ID="lblPasswordVal" style="color:black" Text="*Password Confirmation: " runat="server"/></td>
                <td><asp:TextBox ID="txtPasswordVal" Textmode="Password" runat="server" /></td>
                 <!-- Password Confirmation Error Message -->
                <td><asp:CompareValidator ID="valPasswordValCompare" style="color:Red" runat="server" ControlToValidate="txtPasswordVal" ControlToCompare="txtPassword" Operator="Equal" Type="String" ErrorMessage="* Passwords must be the same" Display="Dynamic" /></td>
            </tr>
        </table>
    </asp:Panel>
    <!-- Submit button -->
    <asp:Button ID="Submit" Text="Submit" runat="server" OnClick="Submit_Click" OnClientClick="Submit_Click" />
</asp:Content>
