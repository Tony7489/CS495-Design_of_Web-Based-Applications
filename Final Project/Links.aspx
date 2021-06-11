<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Links.aspx.cs" Inherits="Final_Project.Links" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            height: 26px;
            width: 196px;
        }
            .auto-style1 {
                width: 499px;
            }
            .auto-style2 {
                height: 26px;
                width: 48px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <table class="style1">
            <tr>
               <th class="auto-style1">
                   <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" Text="choose (Student Or Employee) :"></asp:Label>
                </th> 
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Times New Roman" 
                        Font-Size="Medium" ForeColor="#000066" NavigateUrl="Student.aspx" 
                        Target="F5">Student</asp:HyperLink>
                </td>
                <td class="style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Times New Roman" 
                        Font-Size="Medium" ForeColor="#000066" NavigateUrl="employee.aspx" 
                        Target="F5">Employee</asp:HyperLink>
                </td>
                <td class="style2">
                </td>
                <td class="style2">
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>