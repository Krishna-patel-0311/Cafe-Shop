<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Usercontactus.aspx.cs" Inherits="cafe.Usercontactus" EnableEventValidation="false" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Title--%>

     <div class="jumbotron mt-5" style="background-color: #272b2f">
        <div>
            <h1 class="display-3" style="color: white; text-align: center">Contact Form</h1>
        </div>
    </div>

    <%--Form--%>

    <div class="container-fluid mt-2" style="margin: auto; width: 80%">
        <table class="table table-hover text-center">

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

            <%--Gender--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Gender :</label></td>
                <td class="col">
                    <asp:TextBox CssClass="form-control" ID="tb_gen" runat="server"></asp:TextBox>
                </td>
                <td class="col">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_gen" ErrorMessage="Gender is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <%--Email--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Email :</label></td>
                <td class="col">
                    <asp:TextBox CssClass="form-control" ID="tb_mail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="col">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_mail" ErrorMessage="Email is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <%--Subject--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Subject :</label></td>
                <td class="col">
                    <asp:TextBox CssClass="form-control" ID="tb_sunject" runat="server"></asp:TextBox>
                </td>
                <td class="col">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_sunject" ErrorMessage="Subject is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <%--Comments--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Comments :</label></td>
                <td class="col">
                    <asp:TextBox CssClass="form-control" ID="tb_comments" runat="server" Height="179px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="col">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_comments" ErrorMessage="Some Comments's is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button CssClass="btn btn-info btn-block" ID="btn_submit" runat="server" Text="SUBMIT" OnClick="btn_submit_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
