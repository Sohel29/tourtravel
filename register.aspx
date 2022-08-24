<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="ftco-section contact-section ftco-no-pb" id="contact-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
             <h2 class="mb-4">Register Here</h2>            
          </div>
        </div>
        
        <div class="row justify-content-center">
        <div class="col-md-6">
              <div class="form-group">                
                  <asp:TextBox ID="txtuname" runat="server" class="form-control" placeholder="User ID"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Id required"
                    ControlToValidate="txtuname" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>    
              <div class="form-group">
                <asp:TextBox ID="txtpassword" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password required"
                    ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>                  
              <div class="form-group">
                <asp:TextBox ID="txtcpassword" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                  ErrorMessage="Confirm Passsword does not match"
                  ControlToValidate="txtcpassword" ControlToCompare="txtpassword" ForeColor="Red"></asp:CompareValidator>
              </div>    
               <div class="form-group">               
                  <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name required"
                    ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>  
                <div class="form-group">               
                  <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email Id"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email required"
                    ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
              </div> 
               <div class="form-group">               
                  <asp:TextBox ID="txtmobile" runat="server" class="form-control" 
                       placeholder="Mobile" MaxLength="10"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mobile number required"
                    ControlToValidate="txtmobile" ForeColor="Red"></asp:RequiredFieldValidator>
              </div> 
              <div class="form-group">
                  <asp:Button ID="Button1" runat="server" class="btn btn-primary py-3 px-5" 
                      Text="Submit" onclick="Button1_Click" />
                  &nbsp;
                  <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                  CausesValidation="false">Already Registered User?</asp:LinkButton>
              &nbsp;
                  <br />
                  <asp:Label ID="lblmsg" runat="server"></asp:Label>
              </div> 
          </div>
       
    </section>
    </div>
</asp:Content>



