<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|fue.mdf;Integrated Security=True";
        string strInsert = "INSERT INTO Student " +
            " VALUES('" + txtStudentId.Text + "', '"
            + txtFirstName.Text + "', '"
            + txtLastName.Text + "', '"
            + rbGender.SelectedValue + "', '"
            + ddlMajor.SelectedValue + "', '"
            + txtEmail.Text + "', '"
            + txtPassword.Text + "')";
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
        try
        {
            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();
            lblMsg.Text = "Welcome " + txtFirstName.Text + " Your Account has been successfully created!!";
            clear();
        }
        catch (SqlException err)
        {
            if (err.Number == 2627)
                lblMsg.Text = "The Student ID " + txtStudentId.Text + " already used, Please Choose another !!";
            else
                lblMsg.Text = "Sorry, database problem, please try later !!";
        }

        catch
        {
            lblMsg.Text = "Sorry, the system is not available at the moment, you may try later !!";
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        clear();
        lblMsg.Text = "Inputs Cleared successfully!!";
    }
    void clear()
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtEmail.Text = "";
        txtStudentId.Text = "";
        txtPassword.Text = "";
        txtConfirmPassword.Text = "";
        ddlMajor.SelectedValue = "CS";
        rbGender.SelectedValue = "M";
        txtFirstName.Focus();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #00FFFF;
        }
        .auto-style2 {
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 191px;
            height: 26px;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            height: 69px;
        }
        .auto-style8 {
            height: 53px;
        }
        .auto-style9 {
            height: 26px;
            width: 193px;
        }
        .auto-style10 {
            width: 193px;
        }
        .auto-style11 {
            height: 29px;
            width: 193px;
        }
        .auto-style12 {
            height: 26px;
            width: 279px;
        }
        .auto-style13 {
            width: 279px;
        }
        .auto-style14 {
            height: 29px;
            width: 279px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style7" colspan="4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text="Fill in the online application:-"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Blackadder ITC" Font-Size="Medium" ForeColor="#3333FF" style="font-size: x-large" Text="Please fill in all fields then click on register:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />
                    <font face="times new roman"l color="#000022" size="-1">Example: Ahmed or Abdel Rahman</font>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="This is a required field!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Invalid First Name Format!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="This is a required field!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Invalid Last Name Format!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal" Width="208px">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblNationality" runat="server" Text="Nationality:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="ddlNationality" runat="server">
                        <asp:ListItem>--Choose a Nationality--</asp:ListItem>
                        <asp:ListItem Value="EG">Egypt</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlNationality" ErrorMessage="This is a required field!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <br />
                    <span class="auto-style6">e.g. user@domain.com
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="This is a required field!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblDateofBirth" runat="server" Text="Date of Birth:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtDateofBirth" runat="server"></asp:TextBox>
                    </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDateofBirth" ErrorMessage="This is a required field!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblNationalID" runat="server" Text="National ID:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtNationalID" runat="server" ></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNationalID" ErrorMessage="This is a required field!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtNationalID" ErrorMessage="Should be 14 Numbers!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000" ValidationExpression="\w{14}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblMobilePhone" runat="server" Text="Mobile Phone:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtMobilePhone" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMobilePhone" ErrorMessage="This is a required field!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress" ErrorMessage="This is a required field!!" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="4">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
