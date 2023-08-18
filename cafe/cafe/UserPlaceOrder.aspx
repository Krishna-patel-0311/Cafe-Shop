<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserPlaceOrder.aspx.cs" Inherits="cafe.UserPlaceOrder" EnableEventValidation="false" ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 383px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Title--%>

    <div class="jumbotron mt-5" style="background-color: #272b2f">
        <div>
            <h1 class="display-3" style="color: white; text-align: center">Place Your Order</h1>
        </div>
    </div>

    <%--Date and Order Id--%>

    <div class="container-fluid mt-4" style="margin: auto; width: 80%">
        <table class="table table-hover text-center">

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Order Id :</label></td>
                <td class="col">
                    <asp:Label CssClass="form-control" ID="lb_oid" runat="server"></asp:Label>
                </td>
               
                <td class="col">
                     <asp:Label CssClass="form-control" ID="Label1" runat="server" Text="Please Remember Your OderID" Font-Bold="True" ForeColor="Red" BackColor="Orange" BorderColor="Orange"></asp:Label>
                </td>
            </tr>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Order Date :</label>
                </td>
                <td class="col">
                    <asp:Label CssClass="form-control" ID="lb_odate" runat="server"></asp:Label>
                </td>
                <td class="col"></td>
            </tr>

        </table>
    </div>

    <%--Grideview(to store the product details)--%>

    <div class="container mt-5">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" ShowFooter="True">
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
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />

        </asp:GridView>
    </div>

    <%--Phone and Address Details--%>

    <div class="container-fluid mt-5" style="margin: auto; width: 80%">
        <table class="table table-hover text-center">

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Phone Number :</label></td>
                <td class="col">
                    <asp:TextBox CssClass="form-control" ID="tb_phnno" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td class="col">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Phone Number is Requried !" ControlToValidate="tb_phnno" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Address :</label>
                </td>
                <td class="col">
                    <asp:TextBox CssClass="form-control" ID="tb_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="col">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Adress is Required !" ControlToValidate="tb_address" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button CssClass="btn btn-success btn-block" ID="place_order" runat="server" Text="Place Order" OnClick="place_order_Click" />
                </td>
            </tr>

        </table>
    </div>
</asp:Content>
