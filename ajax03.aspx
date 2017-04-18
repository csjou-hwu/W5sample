<%@ Page Language="C#" %>
<%@ Import Namespace="System.Web.Services" %>
<script type="text/C#" runat="server">
    [WebMethod]
    public static string SayHello(string name)
    {
        return "Hello " + name;
    }
</script>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <!--script type="text/javascript" src="/scripts/jquery-1.4.1.js"></script>-->
    <script type="text/javascript" src="js/jquery-1.12.4/dist/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                type: 'POST',
                url: 'ajax03.aspx/sayhello',
                data: JSON.stringify({ name: 'John' }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (msg) {
                    // Notice that msg.d is used to retrieve the result object
                    alert(msg.d);
                }
            });
        });
    </script>
</head>
<body>
    <form id="Form1" runat="server">

    </form>
</body>
</html>
