<%@ Page Title="Detalle" Async="true" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="DetailInformation.aspx.cs" Inherits="hospital_solution.DetailInformation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" id="personalDataSection">
        <h2>Formulario de datos COVID-19</h2>
        <div class="form-row">
            <div class="form-group col-md-3">
                <label class="font-weight-bold">Nombre</label>
                <asp:TextBox ID="inputName" runat="server" type="text" class="form-control" placeholder="Nombre completo" required="true"> </asp:TextBox>
            </div>
            <div class="form-group col-md-3">
                <label class="font-weight-bold">Documento</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="documentType" runat="server" OnSelectedIndexChanged="documentType_SelectedIndexChanged" AutoPostBack="True" CssClass="form-control document">
                        <asp:ListItem Text="Seleccionar" Value="Seleccionar" />
                        <asp:ListItem Text="Cedula" Value="C" />
                        <asp:ListItem Text="Pasaporte" Value="P" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="documentTypeRequired" runat="server" ControlToValidate="documentType"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                </div>
            </div>
            <asp:Panel ID="fieldId" runat="server" Visible="false">
                <div class="form-group col-md-3">
                    <label class="font-weight-bold">Cedula</label>
                    <asp:TextBox ID="inputId" runat="server" type="text" class="form-control input-id" placeholder="8-909-1919" required="true"> </asp:TextBox>
                </div>
            </asp:Panel>
            <asp:Panel ID="fieldPassport" runat="server" Visible="false">
                <div class="form-group col-md-3">
                    <label class="font-weight-bold">Pasaporte</label>
                    <asp:TextBox ID="inputPassport" runat="server" type="text" class="form-control input-id" placeholder="123456789" required="true"> </asp:TextBox>
                </div>
            </asp:Panel>
        </div>
        <div class="form-row">
            <div class="form-group col-md-3">
                <label class="font-weight-bold">Sexo</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="sexType" runat="server" CssClass="form-control document">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="sexTypeRequired" runat="server" ControlToValidate="sexType"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group col-md-4">
                <label class="font-weight-bold">Telefono</label>
                <asp:TextBox ID="inputPhone" runat="server" type="text" class="form-control" placeholder="255-2338" required="true"> </asp:TextBox>
            </div>
            <div class="form-group col-md-3">
                <label class="font-weight-bold">Tipo de sangre</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="bloodType" runat="server" CssClass="form-control document">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="bloodTypeRequired" runat="server" ControlToValidate="bloodType"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                </div>
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
        <div class="form-row">
            <div class="form-group col-md-4">
                <label class="font-weight-bold">Distrito</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="districtChoice" runat="server" CssClass="form-control" OnSelectedIndexChanged="districtChoice_SelectedIndexChanged" AutoPostBack="true">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="districtChoiceRequired" runat="server" ControlToValidate="districtChoice"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                </div>
            </div>
            <asp:Panel ID="fieldTownShip" runat="server" Visible="false">
                <div class="form-group col-md-4">
                    <label class="font-weight-bold">Corregimiento</label>
                    <div class="form-check form-check-inline">
                        <asp:DropDownList ID="townshipChoice" runat="server" CssClass="form-control document">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="townshipChoiceRequired" runat="server" ControlToValidate="townshipChoice"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <br />
        <div class="form-row">
            <div class="form-group col-md-3">
                <label class="font-weight-bold">Seleccione tipo de vivienda</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="houseType" runat="server" CssClass="form-control">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="houseTypeRequired" runat="server" ControlToValidate="houseType"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group col-md-3">
                <label class="font-weight-bold">Residencia</label>
                <asp:TextBox ID="houseInput" runat="server" type="text" class="form-control input-id" required="true"> </asp:TextBox>
            </div>
            <div class="form-group col-md-3">
                <label class="font-weight-bold">Número de casa o apartamento</label>
                <asp:TextBox ID="numberHouseOrAp" runat="server" type="text" class="form-control input-id" required="true"> </asp:TextBox>
            </div>
        </div>
        <br />
        <div class="form-row">
            <div class="form-group col-md-3">
                <label class="font-weight-bold">¿Tiene sintomas?</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="haveSymptops" runat="server" CssClass="form-control document" OnSelectedIndexChanged="haveSymptops_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Seleccionar" Value="Seleccionar" />
                        <asp:ListItem Text="Si" Value="S" />
                        <asp:ListItem Text="No" Value="N" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="haveSymptopsRequired" runat="server" ControlToValidate="haveSymptops"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                </div>
            </div>
            <asp:Panel ID="fieldHaveSymptom" runat="server" Visible="false" CssClass="form-group col-md-3">
                <div class="form-group col-md-3">
                    <label class="font-weight-bold">Sintomas</label>
                    <div class="form-check form-check-inline">
                        <asp:ListBox ID="symptoms" runat="server" SelectionMode="Multiple" CssClass="form-control" Width="250px"></asp:ListBox>
                        <asp:RequiredFieldValidator ID="symptomsRequired" runat="server" ControlToValidate="symptoms"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </asp:Panel>
            <div class="form-group col-md-3">
                <label class="font-weight-bold">¿Viajo recientemente a un país?</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="travelCountry" runat="server" CssClass="form-control" OnSelectedIndexChanged="travelCountry_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Seleccionar" Value="Seleccionar" />
                        <asp:ListItem Text="Si" Value="S" />
                        <asp:ListItem Text="No" Value="N" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="travelCountryRequired" runat="server" ControlToValidate="travelCountry"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                </div>
            </div>
            <asp:Panel ID="fieldTravelCountry" runat="server" Visible="false" CssClass="form-group col-md-3">
                <div class="form-group col-md-3">
                    <label class="font-weight-bold">Seleccione Paises</label>
                    <div class="form-check form-check-inline">
                        <asp:ListBox ID="chooseTravelCountry" runat="server" SelectionMode="Multiple" CssClass="form-control" Width="250px"></asp:ListBox>
                        <asp:RequiredFieldValidator ID="chooseTravelCountryRequired" runat="server" ControlToValidate="chooseTravelCountry"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <br />
        <div class="form-row">
            <div class="form-group col-md-4">
                <label class="font-weight-bold" for="filePhoto">Seleccione foto</label>
                <asp:FileUpload ID="imageFile" runat="server" Width="210px" CssClass="form-control" />
            </div>
            <div class="form-group col-md-4">
                <label class="font-weight-bold">¿Mantuvo contacto con una persona con problemas respiratorios?</label>
                <div class="form-check form-check-inline">
                    <asp:DropDownList ID="chooseContact" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Seleccionar" Value="Seleccionar" />
                        <asp:ListItem Text="Si" Value="S" />
                        <asp:ListItem Text="No" Value="N" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="chooseContactRequired" runat="server" ControlToValidate="chooseContact"
                        ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group col-md-4">
                <label class="font-weight-bold">Cantidad de personas con quien vive</label>
                <asp:TextBox ID="quantityPersons" runat="server" type="text" class="form-control" Width="90px"> </asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <asp:Button ID="savePatient" runat="server" Text="Guardar" CssClass="btn btn-lg btn-block btn btn-dark btn-save" type="submit" ValidationGroup="savePatient" OnClick="savePatient_Click" />
        </div>
    </div>
</asp:Content>

