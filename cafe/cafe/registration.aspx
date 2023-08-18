<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="cafe.registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Singup</title>

    <%--Bootstrap--%>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

    <script>

    </script>
    <%--Css--%>

    <link href="css/login.css" rel="stylesheet" />
</head>
<body>

    <%--Form--%>

    <form id="form1" runat="server">

        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <%--Multi View--%>
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">

                        <%--View 1--%>

                        <asp:View ID="View1" runat="server">
                            <section class="h-100 gradient-form" style="background-color: #eee;">
                                <div class="container py-5 h-100">
                                    <div class="row d-flex justify-content-center align-items-center h-100">
                                        <div class="col-xl-10">
                                            <div class="card rounded-3 text-black">
                                                <div class="row g-0">
                                                    <div>
                                                        <div class="card-body p-md-4 mx-md-3">

                                                            <div class="text-center">
                                                                <img src="images/login.png" style="width: 90px;" alt="logo" />
                                                                <h4 class="mt-3 pb-1" style="color: orange">Cafe Management</h4>
                                                            </div>
                                                            <p class="mt-4" style="text-align: center"><b>Please register your account</b></p>

                                                            <%--Name--%>

                                                            <div class="form-outline mb-1" align="center">
                                                                <label class="form-label" for="form2Example11">Name</label>
                                                                <asp:TextBox CssClass="form-control text-center" ID="tb_name" placeholder="name" runat="server" Width="350px"></asp:TextBox>

                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_name" ErrorMessage="Name is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            </div>

                                                            <%--Gender--%>

                                                            <div class="form-outline mb-1" align="center">
                                                                <label class="form-label" for="form2Example11">Gender</label>
                                                                <asp:DropDownList CssClass="form-control text-center" Width="350px" ID="DropDownList1" runat="server">
                                                                    <asp:ListItem>Select Gender</asp:ListItem>
                                                                    <asp:ListItem>Male</asp:ListItem>
                                                                    <asp:ListItem>Female</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Gender is Required !" Font-Bold="True" ForeColor="Red" InitialValue="Select Gender" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            </div>

                                                            <%--Age--%>

                                                            <div class="form-outline" align="center">
                                                                <label class="form-label" for="form2Example11">Age</label><br />
                                                                <asp:TextBox CssClass="form-control text-center" ID="tb_age" placeholder="age" runat="server" TextMode="Number" Width="350px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_age" ErrorMessage="Age is Requried !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tb_age" ErrorMessage="Age should be above 18 and below 50" MaximumValue="50" MinimumValue="18" SetFocusOnError="True" Font-Bold="True" ForeColor="Red"></asp:RangeValidator>--%>
                                                            </div>

                                                            <div class="text-center pt-1 mb-2 pb-1">
                                                                <asp:Button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-1" ID="Button2" runat="server" Text="NEXT" OnClick="Button2_Click" />
                                                            </div>

                                                            <%--Login--%>

                                                            <div class="d-flex align-items-center justify-content-center pb-4">
                                                                <p class="mb-0 me-2">Have an account?</p>
                                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="login.aspx" Font-Size="Medium">signin</asp:HyperLink>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </asp:View>

                        <%--View 2--%>

                        <asp:View ID="View2" runat="server">
                            <section class="h-100 gradient-form" style="background-color: #eee;">
                                <div class="container py-5 h-100">
                                    <div class="row d-flex justify-content-center align-items-center h-100">
                                        <div class="col-xl-10">
                                            <div class="card rounded-3 text-black">
                                                <div class="row g-0">
                                                    <div>
                                                        <div class="card-body p-md-4 mx-md-3">

                                                            <%--Title--%>

                                                            <div class="text-center">
                                                                <img src="images/login.png" style="width: 90px;" alt="logo" />
                                                                <h4 class="mb-3 pb-1" style="color: orange">Cafe Management</h4>
                                                            </div>


                                                            <p style="text-align: center"><b>Please register your account</b></p>

                                                            <%--Phone Number--%>

                                                            <div class="form-outline mb-1" align="center">
                                                                <label class="form-label" for="form2Example11">Phone Number</label>
                                                                <asp:TextBox CssClass="form-control text-center" ID="tb_phn" placeholder="+91 123 456 7890" runat="server" TextMode="Phone" Width="350px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_phn" ErrorMessage="Phone No is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            </div>

                                                            <%--Email--%>

                                                            <div class="form-outline mb-1" align="center">
                                                                <label class="form-label" for="form2Example11">Email</label>
                                                                <asp:TextBox CssClass="form-control text-center" Width="350px" ID="tb_mail" placeholder="user@gmail.in" runat="server" TextMode="Email"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="Required" runat="server" ControlToValidate="tb_mail" ErrorMessage="Mail is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_mail" ErrorMessage="Valid Email is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                                            </div>

                                                            <%--Address--%>

                                                            <div class="form-outline mb-1" align="center">
                                                                <label class="form-label" for="form2Example11">Address</label><br />
                                                                <asp:TextBox CssClass="form-control text-center" Width="350px" Height="100px" ID="tb_address" placeholder="address" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_address" ErrorMessage="Address is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                                            </div>

                                                            <%--Next And Pervious Button--%>

                                                            <div class="text-center pt-1 pb-1">
                                                                <asp:Button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" ID="Button3" runat="server" Text="PERVIOUS" OnClick="Button3_Click" />
                                                                <asp:Button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" ID="Button4" runat="server" Text="NEXT" OnClick="Button4_Click" />
                                                            </div>

                                                            <%--Login--%>

                                                            <div class="d-flex align-items-center justify-content-center pb-4">
                                                                <p class="mb-0 me-2">Have an account?</p>
                                                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="login.aspx" Font-Size="Medium">signin</asp:HyperLink>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </asp:View>

                        <%--View 3--%>

                        <asp:View ID="View3" runat="server">
                            <section class="h-100 gradient-form" style="background-color: #eee;">
                                <div class="container py-5 h-100">
                                    <div class="row d-flex justify-content-center align-items-center h-100">
                                        <div class="col-xl-10">
                                            <div class="card rounded-3 text-black">
                                                <div class="row g-0">
                                                    <div>
                                                        <div class="card-body p-md-3 mx-md-3">

                                                            <%--Title--%>

                                                            <div class="text-center">
                                                                <img src="images/login.png" style="width: 90px;" alt="logo" />
                                                                <h4 class="mt-3 pb-1" style="color: orange">Cafe Management</h4>
                                                            </div>


                                                            <p style="text-align: center"><b>Please register your account</b></p>

                                                            <%--Username--%>

                                                            <div class="form-outline mb-1" align="center">
                                                                <label class="form-label" for="form2Example11">Username</label>
                                                                <asp:TextBox CssClass="form-control text-center" Width="350px" ID="tb_user" placeholder="@username" runat="server"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_user" ErrorMessage="Username is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            </div>

                                                            <%--Password--%>
                                                            
                                                            <div class="form-outline mb-1" align="center">
                                                                <label class="form-label" for="form2Example11">Password</label>
                                                                <asp:TextBox CssClass="form-control text-center" Width="350px" ID="tb_pass" placeholder="password" runat="server" TextMode="Password"></asp:TextBox>
                                                                <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="tb_pass" MinimumLowerCaseCharacters="2" MinimumNumericCharacters="2" MinimumSymbolCharacters="2" MinimumUpperCaseCharacters="2" PreferredPasswordLength="8" PrefixText="Password is:" RequiresUpperAndLowerCaseCharacters="True" TextStrengthDescriptions="Weak;Average;Strong;Excellent" />
                                                                <input type="checkbox" style="text-align: end" onchange="document.getElementById('tb_pass').type =this.checked ? 'text' : 'password'" />Show Password<br />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_pass" ErrorMessage="Password is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            </div>

                                                            <%--Confirm Password--%>

                                                            <div class="form-outline mb-1" align="center">
                                                                <label class="form-label" for="form2Example11">Confirm Password</label>
                                                                <asp:TextBox CssClass="form-control text-center" Width="350px" ID="tb_cpass" placeholder="password" runat="server" TextMode="Password"></asp:TextBox>
                                                                <input type="checkbox" onchange="document.getElementById('tb_cpass').type =this.checked ? 'text' : 'password'" />Show Password<br />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tb_cpass" ErrorMessage="Password is Required !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                <br />
                                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_pass" ControlToValidate="tb_cpass" ErrorMessage="Password Don't Match !" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                                                            </div>

                                                            <%--Next And Pervious Button--%>

                                                            <div class="text-center pt-1 pb-1">
                                                                <asp:Button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" ID="Button1" runat="server" Text="PERVIOUS" OnClick="Button1_Click" />
                                                                <asp:Button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" ID="Button5" runat="server" Text="SINGUP" OnClick="Button5_Click" />
                                                            </div>

                                                            <%--Login--%>

                                                            <div class="d-flex align-items-center justify-content-center pb-1">
                                                                <p class="mb-0 me-2">Have an account?</p>
                                                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="login.aspx" Font-Size="Medium">signin</asp:HyperLink>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </asp:View>

                    </asp:MultiView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
