<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoriaForm.aspx.cs" Inherits="UMCAEstilo.Vistas.CategoriaForm" %>


<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="UTF-8">
    <title>Mantenimiento de Categorías de Ropa</title>
    <link rel="stylesheet" type="text/css" href="../Estilos/CategoriaStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 id="main-title">Mantenimiento de Categorías de Ropa</h1>
            <div>
                <label for="txtNombre">Nombre de la Categoría:</label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="txtDescripcion">Descripción:</label>
                <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar Categoría"   CssClass="btn-add" />
            </div>
            <h2>Categorías Existentes</h2>
            <asp:GridView ID="gvCategorias" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                            <asp:Button ID="btnSelect" runat="server" Text="Seleccionar"   CssClass="btn-select"   />
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar"   CssClass="btn-delete"  />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
