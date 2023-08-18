<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="cafe.login" EnableEventValidation="false" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <%--Css--%>

    <link href="css/login.css" rel="stylesheet" />

    <%--Bootstarp--%>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
</head>
<body>

    <%--Form--%>

    <form id="form1" runat="server">
        <section class="h-100 gradient-form" style="background-color: #eee;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-xl-10">
                        <div class="card rounded-3 text-black">
                            <div class="row g-0">
                                <div class="col-lg-6">
                                    <div class="card-body p-md-5 mx-md-4">

                                        <%--Title--%>

                                        <div class="text-center">
                                            <img src="images/login.png" style="width: 105px;" alt="logo" />
                                            <h4 class="mt-3 mb-5 pb-1" style="color: orange">Cafe Management</h4>
                                        </div>


                                        <p><b>Please login to your account</b></p>

                                        <%--Username--%>

                                        <div class="form-outline mt-4">
                                            <label class="form-label" for="form2Example11">Username</label>
                                            <asp:TextBox ID="tb_username"  placeholder="@username" runat="server" CssClass="form-control"></asp:TextBox>
                                            
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_username" ErrorMessage="Username is Required !" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

                                        </div>

                                        <%--Password--%>

                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="form2Example22">Password</label>
                                            <asp:TextBox ID="tb_password" CssClass="form-control" placeholder="password" runat="server"  TextMode="Password" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_password" ErrorMessage="Password is Required !" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator><br />
                                            <input type="checkbox" onchange="document.getElementById('tb_password').type =this.checked ? 'text' : 'password'" />Show Password
                                        </div>

                                        <%--Login--%>

                                        <div class="text-center pt-1 mb-5 pb-1">
                                            <asp:Button ID="btn_login" class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" runat="server" Text="LOGIN" OnClick="btn_login_Click" />

                                        </div>

                                        <%--Registration--%>

                                        <div class="d-flex align-items-center justify-content-center pb-2">
                                            <p class="mb-0 me-2">Don't have an account?</p>
                                            &nbsp;&nbsp
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="registration.aspx" Font-Size="Medium">signup</asp:HyperLink>
                                        </div>

                                    </div>
                                </div>

                                <%--Discription--%>

                                <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                                    <div class="text-white px-6 py-6 p-md-4 mx-md-4">
                                        <h1><b>MCafe</b></h1>
                                        <p class="small mb-0">
                                            Every day, more than One Thousand guests visit Mcafe around the rajkot. And they do so because our cafe are known for serving high-quality, great-tasting, and affordable food.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>
