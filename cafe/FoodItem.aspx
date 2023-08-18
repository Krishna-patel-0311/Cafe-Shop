<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FoodItem.aspx.cs" Inherits="cafe.OderForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--Css--%>

    <style type="text/css">
        .name {
            font-size: 15px;
            font-weight: 600;
            line-height: 15px;
            text-transform: uppercase;
            font-family: sans-serif
        }

        .proPrice {
            font-size: 14px;
            font-weight: 600;
            line-height: 17px;
            text-transform: uppercase;
            font-family: sans-serif
        }

        .Price {
            font-size: 15px;
            font-weight: 400;
            font-family: sans-serif;
            color: deeppink
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Title--%>

    <div class="jumbotron mt-5" style="background-color: #272b2f">
        <div class="container">
            <h1 class="display-3" style="color: white; text-align: center">All Food Items</h1>
        </div>
    </div>

    <%--Choose Category--%>
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <div class="container mt-5" style="width: 100%" align="right">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnTextChanged="DropDownList1_SelectedIndexChanged" Width="160px">
                        <asp:ListItem>Select Category</asp:ListItem>
                        <asp:ListItem Value="burger">Burger</asp:ListItem>
                        <asp:ListItem Value="pizza">Pizza</asp:ListItem>
                        <asp:ListItem Value="sandwich">Sandwich</asp:ListItem>
                        <asp:ListItem Value="coffee">Coffee</asp:ListItem>
                        <asp:ListItem Value="colddrink">Cold Drink</asp:ListItem>
                        <asp:ListItem Value="sweets">Sweets</asp:ListItem>
                        <asp:ListItem Value="fries">Fries</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button1" CssClass="btn btn-success mt-2 mb-3" runat="server" Text="Add Food" OnClick="Button1_Click" />
                </div>


                <%--Showing Data (Card View)--%>
                <div class="container">
                    <div class="row" style="padding-top: 50px; text-align: center">
                        <asp:Repeater ID="rptrProducts" runat="server" OnItemCommand="rptrProducts_ItemCommand">
                            <ItemTemplate>
                                <div class="col-sm-4 col-md-4">
                                    <div class="thumbnail">
                                        <img class="m-3" src="<%# Eval("img") %>" alt="<%# Eval("name") %>" style="width: 190px; height: 190px" />
                                        <div class="caption">
                                            <div class="name mt-3"><%# Eval("name") %></div>
                                            <div class="proPrice mt-2 mb-3">
                                                <span class="Price"><b>Rs <%# Eval("price") %></b></span>
                                                <br />
                                                <%--<asp:Button ID="Button1" CssClass="btn btn-info mt-2 mb-3" runat="server" Text="Update" />
                                    <asp:Button ID="Button2" CssClass="btn btn-danger mt-2 mb-3" runat="server" Text="Delete" />--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <br />
    <br />
</asp:Content>
