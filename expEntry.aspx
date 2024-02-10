<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="expEntry.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tbs {
    border-radius:5px 5px 5px 5px;
    color:green;
}
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
    .auto-style3 {
        height: 13px;
    }
    .auto-style4 {
        width: 122px;
    }
    .auto-style5 {
        height: 13px;
        width: 122px;
    }
    .auto-style8 {
        height: 13px;
        width: 191px;
    }
    .auto-style10 {
        width: 122px;
        height: 41px;
    }
    .auto-style11 {
        height: 41px;
        width: 191px;
    }
    .auto-style12 {
        height: 41px;
    }
    .auto-style13 {
        width: 122px;
        height: 37px;
    }
    .auto-style14 {
        height: 37px;
        width: 191px;
    }
    .auto-style15 {
        height: 37px;
    }
    .auto-style16 {
        width: 122px;
        height: 40px;
    }
    .auto-style17 {
        height: 40px;
        width: 191px;
    }
    .auto-style18 {
        height: 40px;
    }
    .auto-style19 {
        width: 122px;
        height: 42px;
    }
    .auto-style20 {
        height: 42px;
        width: 191px;
    }
    .auto-style21 {
        height: 42px;
    }
    .auto-style22 {
        width: 122px;
        height: 44px;
    }
    .auto-style23 {
        height: 44px;
        width: 191px;
    }
    .auto-style24 {
        height: 44px;
    }
    .auto-style26 {
        width: 191px;
    }
    .auto-style27 {
        width: 122px;
        height: 23px;
    }
    .auto-style28 {
        width: 191px;
        height: 23px;
    }
    .auto-style29 {
        height: 23px;
    }
        .auto-style30 {
            height: 41px;
            width: 236px;
        }
        .auto-style31 {
            height: 37px;
            width: 236px;
        }
        .auto-style32 {
            height: 13px;
            width: 236px;
        }
        .auto-style33 {
            height: 40px;
            width: 236px;
        }
        .auto-style34 {
            height: 42px;
            width: 236px;
        }
        .auto-style35 {
            height: 44px;
            width: 236px;
        }
        .auto-style36 {
            width: 236px;
        }
        .auto-style37 {
            width: 236px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style30">Description</td>
        <td class="auto-style11">Amount</td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style10">Breakfast:</td>
        <td class="auto-style30">
            <asp:TextBox ID="brn" runat="server" CssClass="tbs" ></asp:TextBox>
        </td>
        <td class="auto-style11">
            <asp:TextBox ID="breakfast" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style12">
            <asp:RequiredFieldValidator ID="deValidator" runat="server" ControlToValidate="breakfast" ErrorMessage="Cant be left blank!!" ValidationGroup="vde"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Lunch:</td>
        <td class="auto-style31">
            <asp:TextBox ID="lnn" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style14">
            <asp:TextBox ID="lunch" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lunch" ErrorMessage="Cant be left blank!!" ValidationGroup="vde"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Snacks:<br />
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="snn" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:TextBox ID="snacks" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="snacks" ErrorMessage="Cant be left blank!!" ValidationGroup="vde"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style16">Dinner:</td>
        <td class="auto-style33">
            <asp:TextBox ID="dnn" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="dinner" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dinner" ErrorMessage="Cant be left blank!!" ValidationGroup="vde"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">Transportation:</td>
        <td class="auto-style34">
            <asp:TextBox ID="trn" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style20">
            <asp:TextBox ID="transportation" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style21">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="transportation" ErrorMessage="Cant be left blank!!" ValidationGroup="vde"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">Phone Recharge:</td>
        <td class="auto-style34">
            <asp:TextBox ID="phn" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style20">
            <asp:TextBox ID="phone" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style21">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phone" ErrorMessage="Cant be left blank!!" ValidationGroup="vde"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style22">Miscellaneous:</td>
        <td class="auto-style35">
            <asp:TextBox ID="miscn" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style23">
            <asp:TextBox ID="misc" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style24">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="misc" ErrorMessage="Cant be left blank!!" ValidationGroup="vde"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style36">
            <asp:LinkButton CssClass="butn" ID="goHome" runat="server" OnClick="goHome_Click" Text="Home" />
        </td>
        <td class="auto-style26">
            <asp:LinkButton CssClass="butn" ID="clearDE" runat="server" Text="Clear" OnClick="clearDE_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton CssClass="butn" ID="submitDE" runat="server" OnClick="submitDE_Click" Text="Submit" ValidationGroup="vde" />
        </td>
        <td>
            <asp:Label ID="resultLbl" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style36">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style36">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style28"></td>
        <td class="auto-style29">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style36">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style36">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style36">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style36">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

