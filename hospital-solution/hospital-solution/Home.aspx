<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="hospital_solution._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <img class="mb-4" src="https://freesvg.org/img/1502946545.png" alt="" width="72" height="72">
                            <h1 class="h3 mb-3 font-weight-normal">Inicio de sesion</h1>
                            <p>Bienvenidos a Hospital Seguro de Panamá</p>
                        </div>
                        <div class="form-signin">
                            <div class="form-label-group">
                                <asp:TextBox ID="inputUser" runat="server" type="text" class="form-control input-sign" placeholder="Usuario" required="true"> </asp:TextBox>
                            </div>
                            <div class="form-label-group">
                                <asp:TextBox ID="inputPassword" runat="server" type="password" class="form-control input-sign" placeholder="Contrasena" required="true"> </asp:TextBox>
                            </div>
                            <hr class="my-4">
                            <asp:Button ID="signIn" runat="server" Text="Iniciar sesion" class="btn btn-lg btn-dark btn-block" type="submit" OnClick="signIn_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
