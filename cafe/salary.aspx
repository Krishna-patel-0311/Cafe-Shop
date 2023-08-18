<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="salary.aspx.cs" Inherits="cafe.salary" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Title--%>

    <div class="jumbotron mt-5" style="background-color: #272b2f">
        <div>
            <h1 class="display-3" style="color: white; text-align: center">Salary Form</h1>
        </div>
    </div>

    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>


                <%--Form--%>

                <div class="container-fluid mt-2" style="margin: auto; width: 80%">
                    <table class="table table-hover text-center">

                        <%--Id--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">ID :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_sid" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
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
                                <asp:DropDownList CssClass="form-control" ID="dl_sn" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                                </asp:DropDownList>
                            </td>
                            <td class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [StaffTable]"></asp:SqlDataSource>
                            </td>
                        </tr>

                        <%--Date Of Salary--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Date of Salary :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_sdate" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_sdate" ErrorMessage="Date is Required !" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Salary Amount--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Salary Amount :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_ssalary" runat="server"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_ssalary" ErrorMessage="Salary is Requried !" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--Statue--%>

                        <tr class="row">
                            <td class="col">
                                <label class="col-form-label">Statues :</label></td>
                            <td class="col">
                                <asp:TextBox CssClass="form-control" ID="tb_sstatues" runat="server"></asp:TextBox>
                            </td>
                            <td class="col">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_sstatues" ErrorMessage="Statues is Required !" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

    <div>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <div>
                    <div class="center">
                        <img alt="" src="images/Spinner-3.gif" />
                    </div>
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </div>

    <%--Buttons--%>

    <div class="mb-4" align="center">
        <asp:Button ID="save_btn" runat="server" Text="SAVE" CssClass="btn btn-success" OnClick="save_btn_Click" Height="37px" Width="94px" />
        <asp:Button ID="btn_update" runat="server" Text="UPDATE" CssClass="btn btn-primary" Height="37px" Width="94px" OnClick="btn_update_Click" />
        <asp:Button ID="delete_btn" runat="server" Text="DELETE" CssClass="btn btn-danger" Height="37px" Width="94px" OnClick="delete_btn_Click" />
        <ajaxToolkit:ConfirmButtonExtender ID="delete_btn_ConfirmButtonExtender" runat="server" BehaviorID="delete_btn_ConfirmButtonExtender" ConfirmText="Do You Really Want To Delete Salary Detail's Of Staff ?" TargetControlID="delete_btn">
        </ajaxToolkit:ConfirmButtonExtender>
        <asp:Button ID="clear_btn" runat="server" Text="CLEAR" CssClass="btn btn-warning" Height="37px" Width="94px" OnClick="clear_btn_Click" />

    </div>

    <%--Gridview--%>

    <div>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>

                <div class="container">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Style="max-width: 100%" CssClass="table table-responsive" GridLines="None" HorizontalAlign="Center" AutoGenerateColumns="False" Width="430px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
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
                            <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                    <asp:Label ID="Labeldate" runat="server" Text='<%# Eval("givendate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Paid">
                                <ItemTemplate>
                                    <asp:Label ID="Labelsalary" runat="server" Text='<%# Eval("salary") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Statues">
                                <ItemTemplate>
                                    <asp:Label ID="Labelstatues" runat="server" Text='<%# Eval("statues") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <br />
    <br />
</asp:Content>
