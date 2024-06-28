<%@ Application Language="VB" %>

<script runat="server">
    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        RegisterRoutes(System.Web.Routing.RouteTable.Routes)
    End Sub

    Sub RegisterRoutes(ByVal routes As System.Web.Routing.RouteCollection)
        routes.MapPageRoute("DefaultRoute", "", "~/Default.aspx")
        routes.MapPageRoute("ContactRoute", "contactus", "~/contact.aspx")
        routes.MapPageRoute("LoginRoute", "login", "~/login.aspx")
        routes.MapPageRoute("DownloadRoute", "download", "~/downloadpage.aspx")
        routes.MapPageRoute("PricingRoute", "pricing", "~/pricing.aspx")
        routes.MapPageRoute("RegisterRoute", "register", "~/register.aspx")
        ' Add more routes as needed
    End Sub
</script>
