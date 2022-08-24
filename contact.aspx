<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="ftco-section contact-section ftco-no-pb" id="contact-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
             <h2 class="mb-4">Contact Me</h2>            
          </div>
        </div>
        
        <div class="row">
        <div class="col-md-6">
              <div class="form-group">                
                  <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Your Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name required"
                    ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>    
              <div class="form-group">
                <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Your Email"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email required"
                    ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group">
                <asp:TextBox ID="txtsubject" runat="server" class="form-control" placeholder="Subject"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject required"
                    ControlToValidate="txtsubject" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group">                
                <asp:TextBox ID="txtmessage" runat="server" class="form-control" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Message    required"
                    ControlToValidate="txtmessage" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group">
                  <asp:Button ID="Button1" runat="server" class="btn btn-primary py-3 px-5" 
                      Text="Send Message" onclick="Button1_Click" />
                  <asp:Label ID="lblmsg" runat="server"></asp:Label>
              </div>            
          </div>

         <div class="col-md-6">
          	<div class="row d-flex contact-info mb-5">
		          <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<div class="icon mr-3">
		          			<span class="icon-map-signs"></span>
		          		</div>
		          		<div>
			          		<h3 class="mb-3">Address</h3>
				            <p>MAP Hoti Road Solapur.SR 3214 ,Maharashtra</p>
			            </div>
			          </div>
		          </div>
		          <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<div class="icon mr-3">
		          			<span class="icon-phone2"></span>
		          		</div>
		          		<div>
			          		<h3 class="mb-3">Contact Number</h3>
				            <p><a href="tel://9090909090">+ 9090909090</a></p>
			            </div>
			          </div>
		          </div>
		          <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<div class="icon mr-3">
		          			<span class="icon-paper-plane"></span>
		          		</div>
		          		<div>
			          		<h3 class="mb-3">Email Address</h3>
				            <p><a href="MaulanaAzad@gmail.com">info@yoursite.com</a></p>
			            </div>
			          </div>
		          </div>
		          <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<div class="icon mr-3">
		          			<span class="icon-globe"></span>
		          		</div>
		          		<div>
			          		<h3 class="mb-3">Website</h3>
				            <p><a href="#">Tours_And_Travel.com</a></p>
			            </div>
			          </div>
		          </div>
		        </div>
          </div>
        </div>
      
    </section>
</asp:Content>

