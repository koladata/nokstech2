<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="ViewDetail.aspx.vb" Inherits="ViewDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label></h3>
    <div  style="float: left; margin-right: 20px">
        <asp:Image ID="imgProfile" runat="server" Height="150" Width="200" CssClass="img-responsive" />
    </div>
    <div>
        <h4>Address : <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label></h4><br /><br />
        <h4>Amount Paid : <asp:Label ID="lblAmtPaid" runat="server" Text=""></asp:Label></h4><br /><br />
    </div>
</asp:Content>

