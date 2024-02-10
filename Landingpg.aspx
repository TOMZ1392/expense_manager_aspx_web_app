<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Landingpg.aspx.cs" Inherits="Landingpg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="gen_styles.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 97%;
            margin-left: 0px;
        }
        .auto-style2 {
            width: 163px;
            height: 31px;
        }
        .auto-style3 {
            width: 202px;
            height: 31px;
        }
        .auto-style4 {
            width: 78px;
            height: 31px;
        }
        .auto-style5 {
            width: 163px;
            height: 48px;
        }
        .auto-style6 {
            width: 202px;
            height: 48px;
        }
        .auto-style7 {
            width: 78px;
            height: 48px;
        }
        .auto-style8 {
            width: 163px;
            height: 39px;
        }
        .auto-style9 {
            width: 202px;
            height: 39px;
        }
        .auto-style10 {
            width: 78px;
            height: 39px;
        }
    </style>
</head>
<body style="width: 469px; height: 134px">
    <form id="form1" class="lg_fm" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="usnlbl" runat="server" Font-Names="Impact" Text="User name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="usntb" runat="server" Width="170px" Height="25px"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="pswlbl" runat="server" Font-Names="Impact" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="pswtb" runat="server" Width="171px" TextMode="Password" Height="25px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:LinkButton ID="Login" CssClass="butn"  runat="server"  Text="Login" Width="80px" OnClick="Login_Click" Font-Underline="False" ForeColor="Black" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <asp:Label ID="loginmsgLbl" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:LinkButton CssClass="butn" ID="Signup" runat="server" Text="Sign Up" Width="81px" Font-Underline="False" ForeColor="Black" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
