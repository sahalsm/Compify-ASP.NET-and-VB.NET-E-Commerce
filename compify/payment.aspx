﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="payment.aspx.vb" Inherits="compify.payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
       <!-- #include file="includes/acss.aspx" -->
</head>
<body>
    <!-- #include file="includes/userproductsidebar.aspx" -->
    <form id="form1" runat="server">
        <div class="row mt-5">
            <div class="col-md-2"></div>
                <div class="col-md-10">
                    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Select Payment Method"></asp:Label>
                    <div class="card w-75 mt-5">
                      <div class="card-body">
                        <h5 class="card-title">Card</h5>
                            <asp:Button ID="Button2" CssClass="btn btn-warning float-right"  runat="server" Text="Select" /> 
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                         <img src="asset/images/payment.png" class="d-block w-500 paymentimg" alt="...">
                          <br />
                           <asp:Label ID="Label2" runat="server" Text="Card Name" Font-Bold="True"></asp:Label>

                        <p>
                            <asp:LinkButton ID="Button4" CssClass="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample"  runat="server" Text="Add CARD" />
                        </p>
                           <div class="collapse" id="collapseExample">
                              <div class="card card-body">
                                   
                                          <div class="mb-3">
                                                <label for="exampleInputEmail1" class="form-label">Card Name</label>
                                                <asp:TextBox ID="cardname" class="form-control" runat="server"></asp:TextBox>
                                          </div>
                                          <div class="mb-3">
                                                <label for="exampleInputPassword1" class="form-label">Card Number</label>
                                                 <asp:TextBox ID="cardnumber" class="form-control" runat="server"></asp:TextBox>
                                                 <div id="emailHelp" class="form-text">We'll never share your Card Details with anyone else.</div>
                                          </div>
                                          <div class="mb-3">
                                                <label for="exampleInputPassword1" class="form-label">Expiry Date</label>
                                                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                                    <OtherMonthDayStyle ForeColor="#999999" />
                                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                                </asp:Calendar>
                                          </div>
                                          <asp:Button ID="Button1" CssClass="btn btn-success"  runat="server" Text="Submit" /> 
                                     
                              </div>
                            </div>
                    </div>
                      </div>
                    <div class="card w-75 mt-5">
                      <div class="card-body">
                        <h5 class="card-title">Cash On Delivry</h5>
                            <asp:Button ID="Button3" CssClass="btn btn-warning float-right"  runat="server" Text="Select" /> 
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                      </div>
                    </div>
                </div>
        </div>
    </form>




          <!-- #include file="includes/javascripts.aspx" -->
        <!-- #include file="includes/ajs.aspx" -->
    
     <script>
         <% If Session("error") IsNot Nothing Then %>
         swal("<%=Session("error") %>", "", "<%=Session("errorstatus") %>");
         <% End If %>
         <% Session("error") = Nothing
         Session("errorstatus") = Nothing%>
     </script>
</body>
</html>
