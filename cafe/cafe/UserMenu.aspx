<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserMenu.aspx.cs" Inherits="cafe.UserMenu" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 197px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Title--%>

    <div class="jumbotron mt-5" style="background-color: #272b2f">
        <div class="container">
            <h1 class="display-3" style="color: white; text-align: center"><b>Our Menu</b></h1>
            <br />
        </div>
    </div>

    <%--For Show Food Items--%>

    <div class="container mt-4" align="center">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table border="1" class="auto-style1">
                    <tr>
                        <td class="text-center">ID :
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("img") %>' Width="150px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">Price :
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">Quantity :
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <asp:Button ID="Button3" runat="server" BackColor="Green" CommandArgument='<%# Eval("id")%>' CommandName="addtocart" ForeColor="White" Text="BUY" BorderColor="Green" />
                        </td>
                    </tr>
                </table>
                <div class="text-center">
                    <br />
                </div>
            </ItemTemplate>
        </asp:DataList>


        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FoodItems]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FoodItems] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category" QueryStringField="cat" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </div>

</asp:Content>
