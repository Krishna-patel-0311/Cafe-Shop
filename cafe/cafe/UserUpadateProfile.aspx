<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserUpadateProfile.aspx.cs" Inherits="cafe.UserUpadateProfile" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Title--%>

    <div class="jumbotron mt-5" style="background-color: #272b2f">
        <div>
            <h1 class="display-3" style="color: white; text-align: center"><b>Update Details</b></h1>
        </div>
    </div>

    <%--User Details--%>

    <div class="container-fluid mt-2" style="margin: auto; width: 80%">

        <%--Table--%>

        <table class="table table-hover text-center">

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">ID :</label></td>
                <td class="col">
                    <asp:TextBox CssClass="form-control" ID="tb_id" runat="server" Enabled="True" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="col">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" Text="ID Not Changed"></asp:Label>
                </td>
            </tr>

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

            <%--Update Button--%>

            <tr class="row">
                <td colspan="2" class="col" style="text-align: center">
                    <asp:Button CssClass="btn btn-success" Width="100%" ID="Button1" runat="server" Text="UPDATE" OnClick="Button1_Click" />
                </td>
            </tr>

        </table>
    </div>

</asp:Content>
