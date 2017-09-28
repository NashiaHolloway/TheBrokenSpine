<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TBSWA.Default" %>
<%@ Register Assembly="ZedGraph.Web" Namespace="ZedGraph.Web" TagPrefix="cc1" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Default Page!!
    <cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph"></cc1:ZedGraphWeb>
     <asp:Chart id="Chart1" runat="server">
         <series>
             <asp:Series Name="Series1">

             </asp:Series>

         </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">

            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
</asp:Content>
