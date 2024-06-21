<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <script type="text/javascript">
function PrintGridData() {
    var prtGrid = document.getElementById('<%=gvProfile.ClientID%>');
    prtGrid.border = 0;
    var prtwin = window.open('', 'PrintGridViewData', 'left=100,top=100,width=1000,height=1000,tollbar=0,scrollbars=1,status=0,resizable=1');
    prtwin.document.write(prtGrid.outerHTML);
    prtwin.document.close();
    prtwin.focus();
    prtwin.print();
    prtwin.close();
}
</script>
    
     <h3>List of students</h3>
    <div class="divider"></div>
    <asp:GridView ID="gvProfile" CssClass="table-responsive" Width="100%" 
        AllowPaging="True" PageSize="30" runat="server" AutoGenerateColumns="False" 
        CellPadding="10" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Sr. No">
                <ItemTemplate>
                    <asp:Label ID="lblSrNo" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Test Name">
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnFirstName" OnClick="lbtnFirstName_Click" runat="server" CommandArgument='<%# Eval("ID")%>' CausesValidation="false">
                        <asp:Label ID="lblFn" runat="server" Text='<%#Eval("firstName") %>'></asp:Label>
                    </asp:LinkButton>

                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name">
                <ItemTemplate>
                    <asp:Label ID="lblLn" runat="server" Text='<%#Eval("lastName")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <ItemTemplate>
                    <asp:Label ID="lblAddress" runat="server" Text='<%#Eval("address")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Amount Paid In USD">
                <ItemTemplate>
                    <asp:Label ID="lblAmountPaid" runat="server" Text='<%#Eval("amountPaid")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <%--<asp:TemplateField HeaderText="Photos">
                <ItemTemplate>
                    <asp:Image ID="imgPhotos" runat="server" Height="32" Width="32" ImageUrl='<%#Eval("photos") %>' AlternateText="Profile Image"></asp:Image>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnEdit" runat="server" CommandArgument='<%# Eval("ID")%>' CausesValidation="false">
                        <asp:Image ID="imgEdit" runat="server" Height="16" Width="16" ImageUrl="img/editRec.png" />
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnDelete" CausesValidation="false" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' OnClientClick="return confirm('Do you want to delete this profile?')">
                        <asp:Image ID="imgDelete" runat="server" Height="16" Width="16" ImageUrl="img/deleteRec.png" />
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>--%>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <input type="button" id="btnPrint" value="Print" onclick="PrintGridData()" style="font-weight:bold;" />
        <div style="margin-top:25px;float:right">
        <h4>
        <asp:Label ID="lblCount" runat="server" Text="No of Rows : "></asp:Label>
        <asp:Label ID="lblCountNo" runat="server" Text=""></asp:Label><br /><br />
        <asp:Label ID="lblTot" runat="server" Text="Total : "></asp:Label>
        $<asp:Label ID="lblTotD" runat="server" Text=""></asp:Label>
            </h4>
    </div>
</asp:Content>

