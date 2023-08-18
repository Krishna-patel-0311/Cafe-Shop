<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="updateuser.aspx.cs" Inherits="cafe.updateadmin" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Title--%>

    <div class="jumbotron mt-5" style="background-color: #272b2f">
        <div>
            <h1 class="display-3" style="color: white; text-align: center"><b>User Details</b></h1>
        </div>
    </div>

    <%--Form--%>

    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container-fluid mt-2" style="margin: auto; width: 80%">
                    <table class="table table-hover text-center">

                        <%--ID--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">ID :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_id" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" Text="ID is Auto Generate "></asp:Label>
                            </td>
                        </tr>

                        <%--Name--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Name :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_name" runat="server"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_name" ErrorMessage="Name is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Username--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Username :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_username" runat="server"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tb_username" ErrorMessage="Username is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--PAssword--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Password :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_password" runat="server"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tb_password" ErrorMessage="Password is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Mail--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Mail :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_mail" runat="server" TextMode="Email"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_mail" ErrorMessage="Email is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Phone--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Phone :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_phn" runat="server" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_phn" ErrorMessage="Phone Number is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Gender--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Gender :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_gender" runat="server"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_gender" ErrorMessage="Gender is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Age--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Age :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_age" runat="server" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_age" ErrorMessage="Age is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Address--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Address :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_address" runat="server"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_address" ErrorMessage="Address is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

    <%--Buttons--%>

    <div class="mb-4" align="center">

        <asp:Button CssClass="btn btn-success" ID="btn_update" runat="server" Text="UPDATE" OnClick="btn_update_Click" />
        <asp:Button CssClass="btn btn-danger" ID="btn_delete" runat="server" OnClick="btn_delete_Click1" Text="DELETE" />
        <ajaxToolkit:ConfirmButtonExtender ID="btn_delete_ConfirmButtonExtender" runat="server" BehaviorID="btn_delete_ConfirmButtonExtender" ConfirmText="Do You Really Want To Delete User Detail's ?" TargetControlID="btn_delete">
        </ajaxToolkit:ConfirmButtonExtender>
        <asp:Button CssClass="btn btn-primary" ID="btn_clear" runat="server" Text="CLEAR" OnClick="btn_clear_Click" />


    </div>
    <%--GridView--%>
    <div>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <div class="container">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" align="center" CssClass="table table-responsive-lg" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField FooterText="Select" ShowSelectButton="True" />
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                    <asp:Label ID="LabelId" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="LabelName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Username">
                                <ItemTemplate>
                                    <asp:Label ID="LabelUname" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Password">
                                <ItemTemplate>
                                    <asp:Label ID="Labelpass" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Label ID="Labelmail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone">
                                <ItemTemplate>
                                    <asp:Label ID="Labelphn" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender">
                                <ItemTemplate>
                                    <asp:Label ID="Labelgen" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Age">
                                <ItemTemplate>
                                    <asp:Label ID="Labelage" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address">
                                <ItemTemplate>
                                    <asp:Label ID="Labeladd" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <br />
</asp:Content>
