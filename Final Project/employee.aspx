<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="Final_Project.employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <table class="style1">
            <tr>
               <th class="auto-style1">
                   <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" Text="Please Sign In :"></asp:Label>
                </th> 
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Times New Roman" 
                        Font-Size="Medium" ForeColor="#000066" NavigateUrl="Employee SignIn.aspx" 
                        Target="F5">SignIn</asp:HyperLink>
                </td>
                <td class="style2">
                </td>
                <td class="style2">
                </td>
            </tr>
        </table>
        </div>
    </form>
    </form>
</body>
</html>