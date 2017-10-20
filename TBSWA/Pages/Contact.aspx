<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TBSWA.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Contact page!

<asp:Label ID="lblJSON" runat="server"></asp:Label>
 <input type="button" ID="btnAJAX" value="Update Ajax" OnClick="ParseJSONAJAX()" />
    <br />
    First Name:<asp:TextBox ID="txtFname" runat="server"></asp:TextBox><br />
    Last Name:<asp:TextBox ID="txtLName" runat="server"></asp:TextBox><br />
    Address 1:<asp:TextBox ID="txtAdd1" runat="server"></asp:TextBox><br />
    Address 2:<asp:TextBox ID="txtAdd2" runat="server"></asp:TextBox><br />
    City:<asp:TextBox ID="txtCity" runat="server"></asp:TextBox><br />
    Country:<asp:TextBox ID="txtCountry" runat="server"></asp:TextBox><br />
    State:<asp:TextBox ID="txtState" runat="server"></asp:TextBox><br />
    Zip:<asp:TextBox ID="txtZip" runat="server"></asp:TextBox><br />
    <asp:Button Text="Submit" ID="btnSubmit" OnClick="Page_Load" runat="server" />
    <asp:Button Text="Send Cookie" ID="SendCookie" OnClientClick="setCookie()" OnClick="Page_Load" runat="server" />
    <div ID="JSONAJAX"></div>
    <script type="text/javascript">

    function setCookie()
    {
        var value = document.getElementById("ContentPlaceHolder1_lblJSON").innerHTML;
        var exdate = new Date();
        exdate.setDate(exdate.getDate() + 15);
        var c_value = value + "; expires=" + exdate.toUTCString();

        document.cookie = "JSON=" + c_value;
    }
    
    function getXMLHTTP() {
        if (window.XMLHttpRequest)
            return new XMLHttpRequest();
        else
            return new ActiveXObject("Microsoft.XMLHTTP");
    }
    function ParseJSONAJAX() {
        var xmlHttp = getXMLHTTP();
        xmlHttp.onreadystatechange = function () {
            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                document.getElementById('JSONAJAX').innerHTML = xmlHttp.responseText;
            }
        }
        var url = "../Handlers/JSONAJAX.ashx"
        xmlHttp.open("POST", url, true);
        xmlHttp.send();
    }
    </script>
    <input type="hidden" runat="server" id="JSONObj"></input>
</asp:Content>
