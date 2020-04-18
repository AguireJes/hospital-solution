<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="hospital_solution.Dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.js"></script>
    <div class="container-fluid">
        <div class="row">
             <asp:Literal ID="ltChart" runat="server"></asp:Literal>
        </div>
         <div class="row">
             <asp:Literal ID="ltChartsex" runat="server"></asp:Literal>
        </div>
    </div>
</asp:Content>

