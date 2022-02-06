<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AgregarTarjeta.aspx.cs" Inherits="Multiservicios_WebForms.AgregarTarjeta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="sidebar" data-color="purple" data-background-color="white" data-image="assets/img/sidebar-1.jpg">
          <!--
            Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

            Tip 2: you can also add an image using data-image tag
        -->
          <div class="logo">
              <img src="assets/img/multi.png" width="260" alt="Alternate Text" />
          </div>
          <div class="sidebar-wrapper">
            <ul class="nav">
              <li class="nav-item">
                <a class="nav-link" href="./Clientes.aspx">
                  <i class="material-icons">people_alt</i>
                  <p>Clientes</p>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="./Index.aspx">
                  <i class="material-icons">attach_money</i>
                  <p>Ventas</p>
                </a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="./Tarjetas.aspx">
                  <i class="material-icons">style</i>
                  <p>Tarjetas</p>
                </a>
              </li>
            </ul>
          </div>
        </div>
    <div class="main-panel">
        <!-- Navbar -->
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-absolute fixed-top ">
            <div class="container-fluid">
              <div class="navbar-wrapper">
                <h4>Multiservicios</h4>
              </div>
              <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                <span class="sr-only">Toggle navigation</span>
                <span class="navbar-toggler-icon icon-bar"></span>
                <span class="navbar-toggler-icon icon-bar"></span>
                <span class="navbar-toggler-icon icon-bar"></span>
              </button>
              <div class="collapse navbar-collapse justify-content-end">
                <ul class="navbar-nav">
                  <li class="nav-item dropdown">
                    <a class="nav-link" href="Clientes.aspx" id="navbarDropdownMenuLink" aria-haspopup="true" aria-expanded="false">
                      <i class="material-icons">list</i>
                    </a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link" href="AgregarCliente.aspx" id="navbarDropdownProfile" aria-haspopup="true" aria-expanded="false">
                      <i class="material-icons">add</i>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
      <!-- End Navbar -->
    <div class="content">
        <div class="card">
                <div class="card-header card-header-warning">
                    <div class="container">
                    <div class="row">
                        <div class="col-6">
                          <h4 class="card-title">Clientes</h4>
                          <p class="card-category">Agregar Tarjeta</p>
                         </div>
                     </div>
                        </div>
                </div>
                <div class="card-body table-responsive">
                      <h3>AGREGAR Tarjeta</h3>
                      <label>Descripción Tarjeta:</label>
                      <input type="text" name="txtDescripcion" id="txtDescripcion" runat="server" /><br />
                      <label>Precio $us:</label>
                      <input type="text" name="txtPrecioDolares" id="txtPrecioDolares" runat="server" />
                      <label>Precio Bs:</label>
                      <input type="text" name="txtPrecioBs" id="txtPrecioBs" runat="server" /><br />
                      <label>Tipo Tarjeta:</label>
                      <input type="text" name="txtTipoTarjeta" id="txtTipoTarjeta" runat="server" />
                    <asp:Button ID="btnGuardar" OnClick="btnGuardar_Click" runat="server" Text="Guardar" />
                </div>
              </div>
      </div>
      </div>
</asp:Content>
