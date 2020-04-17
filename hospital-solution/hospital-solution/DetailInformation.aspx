<%@ Page Title="Detalle - " Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="DetailInformation.aspx.cs" Inherits="hospital_solution.DetailInformation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" id="personalDataSection">
        <h2>Datos personales</h2>
        <form>
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label class="font-weight-bold">Nombre</label>
                    <asp:TextBox ID="inputName" runat="server" type="text" class="form-control" placeholder="Nombre completo" required="true"> </asp:TextBox>
                </div>
                <div class="form-group col-md-3">
                    <label class="font-weight-bold">Documento</label>
                    <div class="form-check form-check-inline">
                        <asp:DropDownList ID="documentType" runat="server" OnSelectedIndexChanged="documentType_SelectedIndexChanged" AutoPostBack="True">
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
                        <asp:DropDownList ID="sexType" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="sexTypeRequired" runat="server" ControlToValidate="sexType"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group col-md-4">
                    <label class="font-weight-bold">Telefono</label>
                    <asp:TextBox ID="inputPhone" runat="server" type="text" class="form-control" placeholder="255-2338" required="true"> </asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label class="font-weight-bold">Tipo de sangre</label>
                    <div class="form-check form-check-inline">
                        <asp:DropDownList ID="bloodType" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="bloodTypeRequired" runat="server" ControlToValidate="bloodType"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="filePhoto">Seleccione foto</label>
                    <input type="file" class="form-control-file" id="filePhoto" required>
                </div>
                <div class="form-group col-md-4">
                    <label class="font-weight-bold">Email</label>
                    <asp:TextBox ID="inputEmail" runat="server" type="text" class="form-control" required="true"> </asp:TextBox>
                </div>
                <div class="form-group col-md-4">
                    <label class="font-weight-bold">País de nacimiento</label>
                    <div class="form-check form-check-inline">
                        <asp:DropDownList ID="countryChoice" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="countryChoiceRequired" runat="server" ControlToValidate="countryChoice"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <div class="container" id="locationSection">
        <form>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label class="font-weight-bold">Distrito</label>
                    <div class="form-check form-check-inline">
                        <asp:DropDownList ID="districtChoice" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="districtChoiceRequired" runat="server" ControlToValidate="districtChoice"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group col-md-4">
                    <label class="font-weight-bold">Corregimiento</label>
                    <div class="form-check form-check-inline">
                        <asp:DropDownList ID="townshipChoice" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="townshipChoiceRequired" runat="server" ControlToValidate="townshipChoice"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-3">
                    <label class="font-weight-bold">Seleccione tipo de vivienda</label>
                    <div class="form-check form-check-inline">
                        <asp:DropDownList ID="houseType" runat="server" OnSelectedIndexChanged="houseType_SelectedIndexChanged">
                            <asp:ListItem Text="Seleccionar" Value="Seleccionar" />
                            <asp:ListItem Text="Casa" Value="C" />
                            <asp:ListItem Text="Apartamento" Value="P" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="houseTypeRequired" runat="server" ControlToValidate="houseType"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <asp:Panel ID="fieldBuilding" runat="server" Visible="false">
                    <div class="form-group col-md-3">
                        <label for="inputDistrict">Edificio</label>
                        <select id="inputBuilding" class="form-control" required>
                            <option selected disabled>Seleccionar</option>
                            <option>PH Sol</option>
                            <option>PH Reserva santa fé</option>
                        </select>
                    </div>
                </asp:Panel>
                <asp:Panel ID="fieldSlum" runat="server" Visible="false">
                    <div class="form-group col-md-3">
                        <label class="font-weight-bold">Barriada</label>
                        <div class="form-check form-check-inline">
                            <asp:DropDownList ID="slumChoice" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="slumChoiceRequired" runat="server" ControlToValidate="slumChoice"
                                ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </asp:Panel>
                <div class="form-group col-md-3">
                    <label for="inputNumberPlace">Numero de casa o apartamento</label>
                    <input type="text" class="form-control" id="inputNumberPlace" required>
                </div>
            </div>
        </form>
    </div>

    <div class="container" id="questionSection">
        <h2>Preguntas generales</h2>
        <form>
            <div class="form-row">
                <div class="form-group col-md-2">
                    <label class="font-weight-bold">¿Tiene sintomas?</label>
                    <div class="form-check form-check-inline">
                        <asp:DropDownList ID="haveSymptom" runat="server" OnSelectedIndexChanged="haveSymptom_SelectedIndexChanged">
                            <asp:ListItem Text="Seleccionar" Value="Seleccionar" />
                            <asp:ListItem Text="Si" Value="S" />
                            <asp:ListItem Text="No" Value="N" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="haveSymptomRequired" runat="server" ControlToValidate="haveSymptom"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <asp:Panel ID="fieldHaveSymptom" runat="server" Visible="true">
                    <div class="form-group col-md-3">
                        <label class="font-weight-bold">Sintomas</label>
                        <div class="form-check form-check-inline">
                            <asp:ListBox ID="symptoms" runat="server" SelectionMode="Multiple"></asp:ListBox>
                            <asp:RequiredFieldValidator ID="symptomsRequired" runat="server" ControlToValidate="symptoms"
                                ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </asp:Panel>
                <div class="form-group col-md-3">
                    <label class="font-weight-bold">¿Viajo recientemente a un país?</label>
                    <div class="form-check form-check-inline">
                        <asp:DropDownList ID="travelCountry" runat="server" OnSelectedIndexChanged="travelCountry_SelectedIndexChanged">
                            <asp:ListItem Text="Seleccionar" Value="Seleccionar" />
                            <asp:ListItem Text="Si" Value="S" />
                            <asp:ListItem Text="No" Value="N" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="travelCountryRequired" runat="server" ControlToValidate="travelCountry"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <asp:Panel ID="fieldTravelCountry" runat="server" Visible="true">
                    <div class="form-group col-md-3">
                        <label class="font-weight-bold">Seleccione Paises</label>
                        <div class="form-check form-check-inline">
                            <asp:ListBox ID="chooseTravelCountry" runat="server" SelectionMode="Multiple"></asp:ListBox>
                            <asp:RequiredFieldValidator ID="chooseTravelCountryRequired" runat="server" ControlToValidate="chooseTravelCountry"
                                ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </asp:Panel>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label class="font-weight-bold">¿Mantuvo contacto con una persona con problemas respiratorios?</label>
                    <div class="form-check form-check-inline">
                        <asp:DropDownList ID="chooseContact" runat="server">
                            <asp:ListItem Text="Seleccionar" Value="Seleccionar" />
                            <asp:ListItem Text="Si" Value="S" />
                            <asp:ListItem Text="No" Value="N" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="chooseContactRequired" runat="server" ControlToValidate="chooseContact"
                            ErrorMessage="Seleccione una opción" InitialValue="Seleccionar" SetFocusOnError="true" ValidationGroup="savePatient"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group col-md-6">
                    <label class="font-weight-bold">Cantidad de personas</label>
                    <asp:TextBox ID="quantityPersons" runat="server" type="text" class="form-control"> </asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-2">
                    <asp:Button ID="savePatient" runat="server" Text="Guardar" class="btn btn-lg btn-block btn btn-dark" type="submit" ValidationGroup="savePatient"/>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
