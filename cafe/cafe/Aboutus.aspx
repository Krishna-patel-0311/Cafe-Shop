<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="cafe.updateSatff" EnableEventValidation="false" ValidateRequest="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />

    <%--Title--%>

    <div class="jumbotron" style="background-color: #272b2f">
        <div class="container">
            <h1 class="display-3" style="color: white; text-align: center">About Us</h1>
            <br />
            <p style="text-align: center"><a class="btn btn-success btn-lg" href="home.aspx" role="button">HOME &raquo;</a></p>
        </div>
    </div>

    <%--Content--%>


    <div class="container">
        <div class="text-center mb-4">
            <h2><b>Your First Steps on Your Our Franchising Journey</b></h2>
        </div>

        <div class="text-center">
            <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl="~/images/AboutCafeImg.jpg" />
        </div>

        <div class=" mt-4 mb-4">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Panel ID="Panel1" runat="server">
                <h3><b>Welcome to Mcafe Franchising</b></h3>
                <p style="color: white">Perhaps we were your first job. The go-to birthday outing for the kids. Your favorite fries. Maybe you’ve noticed the role we play in our communities and for charity. Or it just might be that you’ve wondered what it would be like to own a Mcafe’s franchise in the Rajkot.</p>
                <h4><b>Have a seat.Let's talk.</b></h4>
                <p style="color: white">Running a Mcafe’s franchise is a once-in-a-lifetime experience. Think of the people you’ll meet … in the restaurant, across our organization and in the neighborhood. We couldn’t be more proud of the leadership our franchisees demonstrate each and every day. It takes heart, soul and a genuine commitment to the communities we serve.</p>
                <h4><b>Why Mcafe's?</b></h4>
                <p style="color: white">For community-minded individuals willing to put in the work and inspired to delve into every aspect of the business, Mcafe's has the established framework for success. Our resources are unmatched, and the Mcafe's franchise model is the best in the Rajkot.</p>
                <asp:Label ID="Label1" CssClass="btn btn-success" runat="server"></asp:Label>
            </asp:Panel>

            <%--Contact Section--%>

            <asp:Panel ID="Panel2" runat="server">
                <h4><b>Contact</b></h4>
                <h6 style="color: white"><b>Mcafe Corporation</b></h6>
                <h6 style="color: white"><b>Phone Number: 1-866-394-6589</b></h6>
            </asp:Panel>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" TargetControlID="Panel2" CollapseControlID="Panel1" ExpandControlID="Panel1" CollapsedText="Contact Us" ExpandedText="^" TextLabelID="Label1" />
        </div>
    </div>

</asp:Content>
