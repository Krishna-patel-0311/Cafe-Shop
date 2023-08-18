<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserOrderForm.aspx.cs" Inherits="cafe.UserOrderForm" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Titke--%>

    <div class="jumbotron mt-5" style="background-color: #272b2f">
        <div>
            <h1 class="display-3" style="color: white; text-align: center">Add To Cart</h1>
        </div>
    </div>

    <%--Continue Shopping--%>

    <div class="container mb-4" align="right">
        <a style="color: white" class="btn btn-outline-primary mr-3" href="UserMenu.aspx">Continue Shopping &#128525</a>
    </div>

    <%--Show Store Data In Gridview--%>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" EmptyDataText="No Particular Product Available in Shopping Cart !" Font-Bold="False" ForeColor="#333333" HorizontalAlign="Center" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Sr no">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="id" HeaderText="ID">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="category" HeaderText="Category">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Name">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="img" ControlStyle-Height="100px" ControlStyle-Width="100px" HeaderText="Product Image">
                <ControlStyle Height="100px" Width="100px"></ControlStyle>

                <ItemStyle HorizontalAlign="Center" />
            </asp:ImageField>
            <asp:BoundField DataField="price" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <EmptyDataRowStyle Font-Bold="True" ForeColor="Red" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <br />

    <div class="container">
        <asp:Button CssClass="btn btn-success btn-block" ID="checkout" runat="server" Text="CheckOut" OnClick="checkout_Click" />
    </div>
    <br />
</asp:Content>
