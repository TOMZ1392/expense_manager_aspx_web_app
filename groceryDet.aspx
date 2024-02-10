<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="groceryDet.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 55px;
        }
        .auto-style2 {
            height: 60px;
        }
        .auto-style4 {
            height: 55px;
            width: 245px;
        }
        .auto-style5 {
            height: 60px;
            width: 245px;
        }
        .auto-style6 {
            width: 245px;
        }
        .auto-style7 {
            width: 170px;
        }
        .auto-style8 {
            height: 55px;
            width: 170px;
        }
        .auto-style9 {
            height: 60px;
            width: 170px;
        }
        .auto-style10 {
            height: 62px;
            width: 170px;
        }
        .auto-style11 {
            height: 62px;
            width: 245px;
        }
        .auto-style12 {
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="nav-justified">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="lbltem" runat="server" Text="Item"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="groItem" runat="server" Width="359px" MaxLength="90"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="groItem" ErrorMessage="Cant be left blank!" ValidationGroup="vg"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="lbQty" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="groQty" runat="server" Width="107px" MaxLength="8"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="groQty" ErrorMessage="Cant be left blank!" ValidationGroup="vg"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="lbAmt" runat="server" Text="Amount"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="groAmt" runat="server" Width="104px" MaxLength="8"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="groAmt" ErrorMessage="Cant be left blank!" ValidationGroup="vg"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:LinkButton ID="lbtHome" runat="server" OnClick="lbtHome_Click" >Home</asp:LinkButton>
            </td>
            <td class="auto-style6">
                <asp:LinkButton ID="lbtAdd" runat="server"  ValidationGroup="vg" OnClick="lbtAdd_Click">Add</asp:LinkButton>
            </td>
            <td>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

