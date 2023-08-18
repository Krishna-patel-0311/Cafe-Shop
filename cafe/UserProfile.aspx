<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="cafe.UserProfile" EnableEventValidation="false" ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Title--%>

    <div class="jumbotron mt-5" style="background-color: #272b2f">
        <div class="container">
            <h1 class="display-3" style="color: white; text-align: center"><b>Your Profile</b></h1>
            <br />
        </div>
    </div>

    <%--User Details--%>

    <div class="container-fluid mt-2" style="margin: auto; width: 50%; border:1px ridge black">

        <%--Table--%>

        <table class="table table-hover text-center">

            <%--Id--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">ID :</label></td>
                <td class="col">
                    <asp:Label CssClass="form-control" ID="lb_uid" runat="server"></asp:Label>
                </td>
            </tr>

            <%--Name--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Name :</label></td>
                <td class="col">
                    <asp:Label CssClass="form-control" ID="lb_uname" runat="server"></asp:Label>
                </td>
            </tr>

            <%--Username--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Username :</label></td>
                <td class="col">
                    <asp:Label CssClass="form-control" ID="lb_uusername" runat="server"></asp:Label>
                </td>
            </tr>

            <%--Password--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Password :</label></td>
                <td class="col">
                    <asp:Label CssClass="form-control" ID="lb_upass" runat="server"></asp:Label>
                </td>
            </tr>

            <%--Mail--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Mail :</label></td>
                <td class="col">
                    <asp:Label CssClass="form-control" ID="lb_umail" runat="server"></asp:Label>
                </td>
            </tr>

            <%--Phone--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Phone :</label></td>
                <td class="col">
                    <asp:Label CssClass="form-control" ID="lb_uphn" runat="server"></asp:Label>
                </td>
            </tr>

            <%--Gender--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Gender :</label></td>
                <td class="col">
                    <asp:Label CssClass="form-control" ID="lb_ugender" runat="server"></asp:Label>
                </td>
            </tr>

            <%--Age--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Age :</label></td>
                <td class="col">
                    <asp:Label CssClass="form-control" ID="lb_uage" runat="server"></asp:Label>
                </td>
            </tr>

            <%--Address--%>

            <tr class="row">
                <td class="col">
                    <label class="col-form-label">Address :</label></td>
                <td class="col">
                    <asp:Label CssClass="form-control" ID="lb_uadd" runat="server"></asp:Label>
                </td>
            </tr>

            <%--Edit Button--%>

            <tr class="row">
                <td colspan="2" class="col" style="text-align: center">
                    <asp:Button CssClass="btn btn-success" ID="Button1" Width="100%" runat="server" Text="EDIT" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    <br />

</asp:Content>
