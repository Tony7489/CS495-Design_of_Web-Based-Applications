<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|DataBase.mdf;Integrated Security=True";

        string strSelect = "SELECT * FROM Student"
            + " WHERE StudentId = '" + txtStudentId.Text + "' AND Password = '" + txtPassword.Text + "'";

        SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

        SqlDataReader reader;

        conn.Open();

        reader = cmdSelect.ExecuteReader();

        if (reader.Read())
             lblMsg.Text = "User Found.";
        else
            lblMsg.Text = "User Not Found!";

        conn.Close();
        

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: lightgray;
        }
        .style2
        {
        }
        .style3
        {
            height: 34px;
        }
        .style4
        {
            height: 34px;
        }
        .style5
        {
            width: 96px;
        }
        .style6
        {
            height: 34px;
            width: 96px;
        }
        .auto-style1 {
            width: 113px;
        }
        .auto-style2 {
            height: 34px;
            width: 113px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:Label ID="Label1" runat="server" Font-Names="times new roman" 
            Font-Size="X-Large" ForeColor="#000066"
            Text="Sign In Form" Font-Bold="True"></asp:Label>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="#000066" Text="Student ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtStudentId" runat="server" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#000066" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="#000066" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#000066" TextMode="Password" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                </td>
                <td class="style4">
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnLogin" runat="server" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="#000066"  Text="Log In" OnClick="btnLogin_Click"  />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="lblMsg" runat="server" Font-Names="times new roman" 
                    Font-Size="X-Large" ForeColor="#000066"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
