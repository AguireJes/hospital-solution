<%@ Page Title="Personas" Async="true" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="RelationPatient.aspx.cs" Inherits="hospital_solution.RelationPatient" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" id="personalDataSection">
        <h2>Formulario de contactos COVID-19</h2>
        <div class="form-row">
            <div class="form-group col-md-3">
                <label class="font-weight-bold">Nombre</label>
                <asp:TextBox ID="inputName" runat="server" type="text" class="form-control" placeholder="Nombre completo" required="true"> </asp:TextBox>
            </div>
            <div class="form-group col-md-3">
                <label class="font-weight-bold">Sexo</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="sexType" runat="server" CssClass="form-control document">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="sexTypeRequired" runat="server" ControlToValidate="sexType"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-3">
                    <label class="font-weight-bold">Tipo de sangre</label>
                    <div class="form-check form-check-inline">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control document">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="bloodType"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="form-row">
            </div>
            <div class="form-group col-md-4">
                <label class="font-weight-bold">Telefono</label>
                <asp:TextBox ID="inputPhone" runat="server" type="text" class="form-control" placeholder="255-2338" required="true"> </asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label class="font-weight-bold">Email</label>
                <asp:TextBox ID="inputEmail" runat="server" type="text" class="form-control"> </asp:TextBox>
            </div>
            <div class="form-group col-md-4">
                <label class="font-weight-bold">País de nacimiento</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="countryChoice" runat="server" CssClass="form-control document">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="countryChoiceRequired" runat="server" ControlToValidate="countryChoice"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <asp:Button ID="savePatient" runat="server" Text="Guardar" CssClass="btn btn-lg btn-block btn btn-dark btn-save" type="submit" ValidationGroup="savePatient" />
        </div>
    </div>
</asp:Content>

