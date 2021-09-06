<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="NewCustomer.aspx.cs" Inherits="PizzaStore_WebApp.Registration" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div> <br />
            <div class="form-group row">              <asp:Label for="tbName" ID="lblName" runat="server" Text="Name" class="col-sm-2 col-form-label"></asp:Label>            <div class="col-sm-10">                <asp:TextBox ID="tbName" runat="server" class="form-control" placeholder="Please enter the name"></asp:TextBox>            </div>
            </div>
                
            <div class="form-group row">              <asp:Label for="tbEmail" ID="lblEmail" runat="server" Text="Email" class="col-sm-2 col-form-label"></asp:Label>            <div class="col-sm-10">                <asp:TextBox ID="tbEmail" runat="server" class="form-control" placeholder="Please enter the email"></asp:TextBox>            </div>
            </div>

             <div class="form-group row">              <asp:Label for="tbZipcode" ID="lblZipcode" runat="server" Text="Zipcode" class="col-sm-2 col-form-label"></asp:Label>            <div class="col-sm-10">                <asp:TextBox ID="tbZipcode" runat="server" class="form-control" placeholder="Please enter the zipcode"></asp:TextBox>            </div>
            </div>
                
             <div class="form-group row">              <asp:Label for="tbUsername" ID="lblUsername" runat="server" Text="Username" class="col-sm-2 col-form-label"></asp:Label>            <div class="col-sm-10">                <asp:TextBox ID="tbUsername" runat="server" class="form-control" placeholder="Please enter the username"></asp:TextBox>            </div>
             </div>
           
             <div class="form-group row">              <asp:Label for="tbPassword" ID="lblPassword" runat="server" Text="Password" class="col-sm-2 col-form-label"></asp:Label>            <div class="col-sm-10">                <asp:TextBox ID="tbPassword" runat="server" class="form-control" placeholder="Please enter the password"></asp:TextBox>            </div>
             </div>

         <div class="form-group row">
            <div class="col-sm-10 offset-sm-2">
                <asp:Button ID="btn_Add" class="btn btn-primary" runat="server" Text="Register" OnClick="btn_Add_Click"  />
            </div>
              
          </div>

    </div>
   

</asp:Content>