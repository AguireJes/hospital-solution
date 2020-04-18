<%@ Page Title="Personas" Async="true" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="RelationPatient.aspx.cs" Inherits="hospital_solution.RelationPatient" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" id="personalDataSection">
        <h2>Formulario de contactos COVID-19</h2>
               
        <div class="form-row">
            <div class="form-group col-md-4">
                <label class="font-weight-bold">Nombre</label>
                <asp:TextBox ID="inputName" runat="server" type="text" class="form-control" placeholder="Nombre completo"> </asp:TextBox>
            </div>
            <div class="form-group col-md-4">
                <label class="font-weight-bold">Sexo</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="sexTypeContact" runat="server" CssClass="form-control document">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="sexTypeContactRequired" runat="server" ControlToValidate="sexTypeContact"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="saveContact"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group col-md-4">
                <label class="font-weight-bold">Tipo de sangre</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="bloodTypeContact" runat="server" CssClass="form-control document">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="bloodTypeContactRequired" runat="server" ControlToValidate="bloodTypeContact"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="saveContact"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-4">
                <label class="font-weight-bold">Telefono</label>
                <asp:TextBox ID="inputPhone" runat="server" type="text" class="form-control" placeholder="255-2338"> </asp:TextBox>
            </div>
            <div class="form-group col-md-4">
                <label class="font-weight-bold">Email</label>
                <asp:TextBox ID="inputEmail" runat="server" type="text" class="form-control"> </asp:TextBox>
            </div>
            <div class="form-group col-md-4">
                <label class="font-weight-bold">País de nacimiento</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="countryChoiceContact" runat="server" CssClass="form-control document">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="countryChoiceContactRequired" runat="server" ControlToValidate="countryChoiceContact"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="saveContact"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>

        <br />
        <div class="row">
            <div class="form-group col-md-4">
                <asp:Button ID="saveContact" runat="server" Text="Guardar" CssClass="btn btn-lg btn-block btn btn-dark btn-save" type="submit" ValidationGroup="saveContact" OnClick="saveContact_Click"/>
            </div>
            <div class="form-group col-md-4">
                <asp:Button ID="fowardForm" runat="server" Text="Regresar a formulario" CssClass="btn btn-lg btn-block btn btn-dark btn-save"  OnClick="fowardForm_Click"/>
            </div>
        </div>
    </div>
</asp:Content>

