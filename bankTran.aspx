<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bankTran.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .butn {
    
    padding-left:5px;
    padding-right:5px;
    border-color:black;
    border-style:solid;
    border-color:black;
    font-family:Impact;
    text-align:center;
    border-radius:2px 2px 2px 2px;
}
    .auto-style1 {
        width: 100%;
    }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            height: 41px;
        }
        .auto-style4 {
            height: 45px;
        }
        .auto-style5 {
            height: 44px;
        }
        .auto-style6 {
            height: 43px;
        }
        .auto-style7 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style4">Account</td>
        <td class="auto-style4">
            <asp:DropDownList ID="accTypedrp" runat="server">
                <asp:ListItem Selected="True">Kotak</asp:ListItem>
                <asp:ListItem>SBI</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style5">Transaction Type</td>
        <td class="auto-style5">
            <asp:DropDownList ID="tranTypdrp" runat="server">
                <asp:ListItem Selected="True">Withdrawl</asp:ListItem>
                <asp:ListItem>Transfer</asp:ListItem>
                <asp:ListItem>Deposited</asp:ListItem>
                <asp:ListItem>Salary</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style6">Description</td>
        <td class="auto-style6">
            <asp:TextBox ID="trandesc" runat="server" MaxLength="199"></asp:TextBox>
        </td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Amount</td>
        <td class="auto-style7">
            <asp:TextBox ID="bankTran" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cant be left blank!!" ValidationGroup="btrn" ControlToValidate="bankTran"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style3">
            <asp:LinkButton CssClass="butn" ID="submitbtran" runat="server" OnClick="submitbtran_Click" Text="Submit" ValidationGroup="btrn" />
        </td>
        <td class="auto-style3">
            <asp:LinkButton CssClass="butn" ID="gobkHome" runat="server" OnClick="gobkHome_Click" Text="home" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style2">
            <asp:Label ID="msgLbl" runat="server"></asp:Label>
        </td>
        <td class="auto-style2"></td>
    </tr>
</table>
</asp:Content>

