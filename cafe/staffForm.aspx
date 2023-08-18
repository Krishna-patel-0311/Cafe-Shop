<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="staffForm.aspx.cs" Inherits="cafe.staffForm" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Title--%>

    <div class="jumbotron mt-5" style="background-color: #272b2f">
        <div>
            <h1 class="display-3" style="color: white; text-align: center">Staff Form</h1>
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
                                <asp:TextBox CssClass="form-control" ID="tb_id" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" Text="ID is Auto Generate"></asp:Label>
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

                        <%--Gender--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Gender :</label></td>
                            <td class="col">
                                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem>Select Gender</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Gender is Required !" Font-Bold="True" ForeColor="Red" InitialValue="Select Gender" SetFocusOnError="True"></asp:RequiredFieldValidator>
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

                        <%--Graduation--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Graduation :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_graduation" runat="server"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_graduation" ErrorMessage="Graduation is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Date Of Joining--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Date of Joining :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_dojoin" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_dojoin" ErrorMessage="Date Of Joining is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Address--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Address :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_address" runat="server" Height="205px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tb_address" ErrorMessage="Address is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
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

        <asp:Button CssClass="btn btn-info btn-block" ID="Button1" runat="server" Width="220px" Text="SUBMIT" OnClick="btn_submit_Click" />
        <asp:Button CssClass="btn btn-success btn-block" ID="Button2" runat="server" Width="220px" Text="UPDATE" OnClick="update_btn_Click" />
        <asp:Button CssClass="btn btn-danger btn-block" ID="Button3" runat="server" Width="220px" Text="DELETE" OnClick="delete_btn_Click" />
        <ajaxToolkit:ConfirmButtonExtender ID="Button3_ConfirmButtonExtender" runat="server" BehaviorID="Button3_ConfirmButtonExtender" ConfirmText="Do You Really Want To Delete Staff Detail's ?" TargetControlID="Button3">
        </ajaxToolkit:ConfirmButtonExtender>
        <asp:Button CssClass="btn btn-warning btn-block" ID="Button4" runat="server" Width="220px" Text="RESET" OnClick="reset_btn_Click" />

    </div>

    <%--GridView--%>

    <div>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <div class="container">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" align="center" CssClass="table table-responsive-xl" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                    <asp:Label ID="LabelId" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="Labelname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Age">
                                <ItemTemplate>
                                    <asp:Label ID="Labelage" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender">
                                <ItemTemplate>
                                    <asp:Label ID="Labelgen" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Label ID="Labelmail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone">
                                <ItemTemplate>
                                    <asp:Label ID="Labelphn" runat="server" Text='<%# Eval("phn") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Graduation">
                                <ItemTemplate>
                                    <asp:Label ID="Labelgrd" runat="server" Text='<%# Eval("graduation") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DOJ">
                                <ItemTemplate>
                                    <asp:Label ID="Labeldoj" runat="server" Text='<%# Eval("dataofjoin") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address">
                                <ItemTemplate>
                                    <asp:Label ID="Labeldadd" runat="server" Text='<%# Eval("address") %>'></asp:Label>
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
    <br />

</asp:Content>
