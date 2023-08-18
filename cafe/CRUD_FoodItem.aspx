<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CRUD_FoodItem.aspx.cs" Inherits="cafe.addfooditems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Title--%>

    <div class="jumbotron mt-5" style="background-color: #272b2f">
        <div>
            <h1 class="display-3" style="color: white; text-align: center">Add Food Items</h1>
        </div>
    </div>

    <%--Form--%>

    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container-fluid mt-2" style="margin: auto; width: 80%">

                    <%--Table--%>

                    <table class="table table-hover text-center">

                        <%--Food ID--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Food ID :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_fid" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_fid" ErrorMessage="ID is Required !" Font-Bold="True" ForeColor="Red" Height="20px" Width="140px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Category--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Category :</label></td>
                            <td class="col">
                                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem InitialValue="Select Category">Select Category</asp:ListItem>
                                    <asp:ListItem Value="burger">Burger</asp:ListItem>
                                    <asp:ListItem Value="pizza">Pizza</asp:ListItem>
                                    <asp:ListItem Value="sandwich">Sandwich</asp:ListItem>
                                    <asp:ListItem Value="coffee">Coffee</asp:ListItem>
                                    <asp:ListItem Value="colddrink">Cold Drink</asp:ListItem>
                                    <asp:ListItem Value="sweets">Sweets</asp:ListItem>
                                    <asp:ListItem Value="fries">Fries</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Category is Required !" SetFocusOnError="True" Font-Bold="True" Selected="True" ControlToValidate="DropDownList1" ForeColor="Red" InitialValue="Select Category"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Food Name--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Food Name :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_fname" runat="server"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_fname" ErrorMessage="Name is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Food Price--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Food Price :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_fprice" runat="server" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_fprice" ErrorMessage="Price is Required !" Font-Bold="True" ForeColor="Red" Height="20px" Width="140px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Food Iamge--%>

                        <tr class="row">
                            <td class="col">Food Images :</td>
                            <td class="col">
                                <asp:Image ID="GetImage" Height="70" Width="70" Visible="false" runat="server" />
                                <br />
                                <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Width="288px" />
                            </td>
                            <td class="col">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Strikeout="False" ForeColor="Red" Visible="False"></asp:Label><br />
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <br />

    <%--Buttons--%>

    <div class="mb-5" align="center">

        <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" Text="SAVE" BackColor="#66FF66" BorderColor="#33CC33" ForeColor="White" OnClick="btn_save_Click" />
        <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="UPDATE" BackColor="#3366FF" BorderColor="#3366FF" ForeColor="White" OnClick="btn_update_Click" />
        <asp:Button CssClass="btn btn-danger" ID="Button3" runat="server" Text="DELETE" BackColor="Red" BorderColor="Red" ForeColor="White" OnClick="btn_delete_Click" />
        <asp:Button CssClass="btn btn-yellow" ID="Button4" runat="server" Text="CLEAR" BackColor="#CC00FF" BorderColor="#CC00FF" ForeColor="White" OnClick="btn_clear_Click" />

    </div>

    <%--Gridview--%>

    <div>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <div class="container">
                    <asp:GridView ID="GridView1" runat="server" OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="White" BorderColor="#CCCCCC" AutoGenerateColumns="False" align="center" CssClass="table table-responsive-lg" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="4" AllowCustomPaging="False">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:TemplateField HeaderText="Food ID">
                                <ItemTemplate>
                                    <asp:Label ID="Labelid" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Food Name">
                                <ItemTemplate>
                                    <asp:Label ID="Labelname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Food Price">
                                <ItemTemplate>
                                    <asp:Label ID="Labelprice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Food Images">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" Height="100" Width="100" ImageUrl='<%# Eval("img") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" CssClass="text-center" Height="40px" HorizontalAlign="Center" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" VerticalAlign="Top" />
                        <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" CssClass="text-center" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

    <br />
    <br />


</asp:Content>
