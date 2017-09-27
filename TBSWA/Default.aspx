<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TBSWA.Default" %>
<%@ Register Assembly="ZedGraph.Web" Namespace="ZedGraph.Web" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Default Page!!
    <cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph"></cc1:ZedGraphWeb>
</asp:Content>
