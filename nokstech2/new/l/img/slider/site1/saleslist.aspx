<%@ Page Language="VB" AutoEventWireup="false" CodeFile="saleslist.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title></title>
     <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvCustomers]').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                "responsive": true,
                "sPaginationType": "full_numbers"
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" class="table table-striped"
            Width="100%">
            <Columns>
                <asp:BoundField DataField="clientname" HeaderText="clientname" />
                 <asp:BoundField DataField="otherinvoicenumber" HeaderText="otherinvoicenumber" />
                 <asp:BoundField DataField="end_sales" HeaderText="end_sales" />
                 <asp:BoundField DataField="status" HeaderText="status" />
                 <asp:BoundField DataField="total_qty" HeaderText="total_qty" />
                 <asp:BoundField DataField="totalpayable" HeaderText="totalpayable" />
                 <asp:BoundField DataField="totalpaid" HeaderText="totalpaid" />
                 <asp:BoundField DataField="balance" HeaderText="balance" />
                 <asp:BoundField DataField="expatriates" HeaderText="expatriates" />
                 
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
