<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="ViewStudent.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="propertyCat_list option-set">

        <li>
            <asp:TextBox runat="server" ID="txtsearch" CssClass="input-lg" Placeholder="Search here.." required />
        </li>



        <li>
            <asp:Button ID="btnSearch" runat="server" Text="Search" class="dropdown-toggle buttonGrey" />
        </li>


    </ul>




    <div class="divider"></div>
    <div class="row" id="divInnerData" runat="server">
    </div>

</asp:Content>

