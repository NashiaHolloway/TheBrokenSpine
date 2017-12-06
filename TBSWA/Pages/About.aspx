<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TBSWA.About" %>
<%@ Register Assembly="ZedGraph.Web" Namespace="ZedGraph.Web" TagPrefix="cc1" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" onclick="Account" Text="Create Account" />
    <asp:Button ID="Button2" runat="server" Text="Look Who's Here!" OnClick="Student" Width="135px" />
    <cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph" />
    About page!
</asp:Content>
