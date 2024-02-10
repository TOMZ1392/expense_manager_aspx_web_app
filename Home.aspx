<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Daily General Expenses" Font-Names="Impact"></asp:Label>
     <br />
    <br />
    <br />
    <asp:GridView ID="gridDE" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="DT" HeaderText="DATE" SortExpression="DT" />
            <asp:BoundField DataField="BF_N" HeaderText="BREAKFAST ITEM" SortExpression="BF_N" />
            <asp:BoundField DataField="BF_A" HeaderText="COST" SortExpression="BF_A" />
            <asp:BoundField DataField="LN_N" HeaderText="LUNCH ITEM" SortExpression="LN_N" />
            <asp:BoundField DataField="LN_A" HeaderText="COST" SortExpression="LN_A" />
            <asp:BoundField DataField="SN_N" HeaderText="SNACKS ITEM" SortExpression="SN_N" />
            <asp:BoundField DataField="SN_A" HeaderText="COST" SortExpression="SN_A" />
            <asp:BoundField DataField="DN_N" HeaderText="DINNER ITEM" SortExpression="DN_N" />
            <asp:BoundField DataField="DN_A" HeaderText="COST" SortExpression="DN_A" />
            <asp:BoundField DataField="TR_N" HeaderText="TRANSPORTATION" SortExpression="TR_N" />
            <asp:BoundField DataField="TR_A" HeaderText="COST" SortExpression="TR_A" />
            <asp:BoundField DataField="PH_N" HeaderText="PHONE RC" SortExpression="PH_N" />
            <asp:BoundField DataField="PH_A" HeaderText="COST" />
            <asp:BoundField DataField="MISC_N" HeaderText="MISCELLANEOUS ITEM" SortExpression="MISC_N" />
            <asp:BoundField DataField="MISC_A" HeaderText="COST" SortExpression="MISC_A" />
            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerSettings PageButtonCount="7" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:universal_handlerConnectionString %>" SelectCommand="SELECT * FROM [DAILYEXPENSE01]" ></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Names="Impact" Text="Transactions Table"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="grdbtran" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" AllowPaging="True" PageSize="7" ShowHeaderWhenEmpty="True">
        <Columns>
            <asp:BoundField DataField="DT" HeaderText="DT" SortExpression="DT" />
            <asp:BoundField DataField="BANK_N" HeaderText="BANK_N" SortExpression="BANK_N" />
            <asp:BoundField DataField="TRAN_TYPE" HeaderText="TRAN_TYPE" SortExpression="TRAN_TYPE" />
            <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
            <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Names="Impact" Text="Totals Expenses"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource3" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="btot" HeaderText="btot" SortExpression="btot" />
            <asp:BoundField DataField="lntot" HeaderText="lntot" SortExpression="lntot" />
            <asp:BoundField DataField="sntot" HeaderText="sntot" SortExpression="sntot" />
            <asp:BoundField DataField="dntot" HeaderText="dntot" SortExpression="dntot" />
            <asp:BoundField DataField="phtot" HeaderText="phtot" SortExpression="phtot" />
            <asp:BoundField DataField="trtot" HeaderText="trtot" SortExpression="trtot" />
            <asp:BoundField DataField="mtot" HeaderText="mtot" SortExpression="mtot" />
            <asp:BoundField DataField="tot" HeaderText="tot" SortExpression="tot" />
            <asp:BoundField DataField="grocerytot" HeaderText="grocerytot" SortExpression="grocerytot" />
        </Columns>
        <EditRowStyle HorizontalAlign="Center" />
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:universal_handlerConnectionString %>" SelectCommand="SELECT * FROM [BANKTRANSACTIONS01]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:universal_handlerConnectionString %>" SelectCommand="SELECT * FROM [totalstbl]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Names="Impact" Text="Grocery Expenses"></asp:Label>
    <br />
    <br />
    <br />
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource4" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:BoundField DataField="item" HeaderText="Item" SortExpression="item" />
        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
        <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
        <asp:BoundField DataField="dt" HeaderText="Date" SortExpression="dt" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:universal_handlerConnectionString %>" SelectCommand="SELECT * FROM [GROCERY01]"></asp:SqlDataSource>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
    <asp:LinkButton ID="expenseBtn" runat="server" OnClick="expenseBtn_Click">Add Expense</asp:LinkButton>
    <p>
        <asp:LinkButton ID="transactBtn" runat="server" OnClick="transactBtn_Click">Add Transactions</asp:LinkButton>
    </p>
</asp:Content>

