<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tour.aspx.cs" Inherits="tour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="ftco-section contact-section ftco-no-pb" id="contact-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
             <h2 class="mb-4">Tour Details</h2>     
             <p>Tourist should reach to Railway Station or Bus Stand to pick up our traveling service</p>       
          </div>
        </div>
        
        <%
            string fort = Request.QueryString["fort"];
            string distance = Request.QueryString["distance"];
            string fee = Request.QueryString["fee"];     
        %>
       
       
   <div class="row">
        <div class="col-md-6">

             <div class="form-group">
                <asp:TextBox ID="txtdate" runat="server" class="form-control" 
                      placeholder="Tour Date"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter Tour Date"
                    ControlToValidate="txtdate" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>

              <div class="form-group">                
                  
                  <asp:DropDownList ID="ddltime" runat="server" class="form-control">
                        <asp:ListItem Value="">Select Bus-Time</asp:ListItem>
                        <asp:ListItem Value="9:00AM">9:00AM</asp:ListItem>
                        <asp:ListItem Value="12:00AM">12:00AM</asp:ListItem>
                  </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Select Bus-Time"
                    ControlToValidate="ddltime" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>    

              <div class="form-group">                
                  
                  <asp:DropDownList ID="ddlhotel" runat="server" class="form-control">
                        <asp:ListItem Value="">Hotel Service</asp:ListItem>
                        <asp:ListItem Value="yes">Yes</asp:ListItem>
                        <asp:ListItem Value="no">No</asp:ListItem>
                  </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Select Hotel Service"
                    ControlToValidate="ddlhotel" ForeColor="Red"></asp:RequiredFieldValidator>
              </div> 

              <div class="form-group">
                <asp:TextBox ID="txtticket" runat="server" class="form-control" 
                      placeholder="No of Ticket"  AutoPostBack="True" 
                      ontextchanged="txtticket_TextChanged"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="No of Ticket required"
                    ControlToValidate="txtticket" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group">
                <asp:TextBox ID="txtcharges" runat="server" class="form-control" 
                      placeholder="Bus Charges" ReadOnly ></asp:TextBox>
              </div>
              <div class="form-group">
                <asp:TextBox ID="txtfee" runat="server" class="form-control" placeholder="Entry Fee" ReadOnly></asp:TextBox>
              </div>
              <div class="form-group">
                <asp:TextBox ID="txttotal" runat="server" class="form-control" placeholder="Total Charges" ReadOnly></asp:TextBox>
              </div>

                <div class="form-group">                
                  
                  <asp:RadioButtonList ID="ddlpaymode" runat="server" RepeatDirection="Horizontal"
                  Font-Bold="true" ForeColor="#000" AutoPostBack="true" 
                        onselectedindexchanged="ddlpaymode_SelectedIndexChanged">                        
                        <asp:ListItem Value="cash" Selected>CASH</asp:ListItem>
                        <asp:ListItem Value="card">CARD</asp:ListItem>
                  </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Select Payment Mode"
                    ControlToValidate="ddlpaymode" ForeColor="Red"></asp:RequiredFieldValidator>
              </div> 

              <asp:Panel ID="panel1" Visible="false" runat="server">
               <div class="form-group">
                <asp:TextBox ID="txtBankname" runat="server" class="form-control" 
                      placeholder="Bank Name"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                  runat="server" ErrorMessage="Enter Bank Name"
                    ControlToValidate="txtBankname" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              
              <div class="form-group">
                <asp:TextBox ID="txtCardNo" runat="server" class="form-control" 
                      placeholder="Card No"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                  runat="server" ErrorMessage="Enter Card No"
                    ControlToValidate="txtCardNo" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>

              <div class="form-group">
                <asp:TextBox ID="txtExpiryDate" runat="server" class="form-control" 
                      placeholder="Expiry Date"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                  runat="server" ErrorMessage="Enter Expiry Date"
                    ControlToValidate="txtExpiryDate" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>

               <div class="form-group">
                <asp:TextBox ID="txtCardHolder" runat="server" class="form-control" 
                      placeholder="Card Holder Name"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8"
                  runat="server" ErrorMessage="Enter Card Holder Name"
                    ControlToValidate="txtCardHolder" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              </asp:Panel>
              <div class="form-group">
                  <asp:Button ID="Button1" runat="server" class="btn btn-primary py-3 px-5" 
                      Text="Submit" onclick="Button1_Click" />
                  <asp:Button ID="Button2" runat="server" class="btn btn-primary py-3 px-5" 
                      Text="Print" onclick="Button2_Click" />
                  <asp:Label ID="lblmsg" runat="server"></asp:Label>
              </div>            
          </div>

         <div class="col-md-6">
          	<div class="row d-flex contact-info mb-5">
		          <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<!--<div class="icon mr-3">
		          			<span class="icon-add_location"></span>
		          		</div>-->
		          		<!--<div>
			          		<h3 class="mb-3">Selected </h3>
				            <p><%=fort %></p>
			            </div>-->
			          </div>
		          </div>
		          <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<div class="icon mr-3">
		          			<span class="icon-directions_railway"></span>
		          		</div>
		          		<div>
			          		<h3 class="mb-3">Distance</h3>
				            <p><%=distance %> kms from station</p>
			            </div>
			          </div>
		          </div>
		          <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<div class="icon mr-3">
		          			<span class="icon-rupee"></span>
		          		</div>
		          		<div>
			          		<h3 class="mb-3">Entry Fee</h3>
				            <p>Rs. <%=fee %> per head</p>
			            </div>
			          </div>
		          </div>
		         
                   <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<div class="icon mr-3">
		          			<span class="icon-accessibility"></span>
		          		</div>
		          		<div>
			          		<h3 class="mb-3">Guide Charges</h3>
				            <p>Rs. 100 per head</p>
			            </div>
			          </div>
		          </div>
		        </div>
          </div>
        </div>
      
    </section>
    </div>
</asp:Content>

