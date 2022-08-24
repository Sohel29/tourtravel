<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="ftco-section contact-section ftco-no-pb" id="contact-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
             <h2 class="mb-4">Login Here</h2>            
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
                  <asp:Button ID="Button1" runat="server" class="btn btn-primary py-3 px-5" 
                      Text="Login" onclick="Button1_Click" />
                  &nbsp;
                  <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                      CausesValidation="False" >New User</asp:LinkButton>
              &nbsp;&nbsp;
                  <br />
                  <asp:Label ID="lblmsg" runat="server"></asp:Label>
              </div> 
          </div>
        </div>
      </div>
    </section>
</asp:Content>



