<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>WEB APP Prueba - Regalo Original</h1>
        <p class="lead">En una página hay 3 textboxs (cantidad, nombre producto y precio unitario), un dropdown con las opciones favoritos y carrito) y un botón (agregar).
                        Al hacer click en agregar, se agrega el ítem en la lista de carrito o favorito según lo seleccionado.

                        Y mostrar abajo 2 listas. 
                        Favoritos: mostrar nombre producto y precio.
                        Carrito: mostrar cantidad, nombre producto, precio unitario, subtotal ítem = precio unitario * cantidad)
                        Abajo del listado de carrito mostrar la suma de subtotal ítem.</p>

    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>TEXT BOX</h2>
            <p><asp:TextBox ID="tbCan" runat="server" OnTextChanged="TextBox1_TextChanged" Height="35px" Width="150px"></asp:TextBox></p>
            <p><asp:TextBox ID="tbNom" runat="server" OnTextChanged="TextBox1_TextChanged" Height="35px" Width="150px"></asp:TextBox></p>
            <p><asp:TextBox ID="tbPre" runat="server" OnTextChanged="TextBox1_TextChanged" Height="35px" Width="150px"></asp:TextBox></p>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Favoritos</asp:ListItem>
                    <asp:ListItem>Cesta de la compra</asp:ListItem>
                </asp:DropDownList>

                <asp:Button ID="add" runat="server" Text="Agregar" OnClick="add_Click" />

            </p>
        </div>
        <div class="col-md-4">
            <p>
                Favoritos
                <asp:ListBox ID="favs" runat="server" OnSelectedIndexChanged="favs_SelectedIndexChanged"></asp:ListBox>
            </p>
            <p>
                Cesta de la compra
                <asp:ListBox ID="cesta" runat="server" OnSelectedIndexChanged="cesta_SelectedIndexChanged"></asp:ListBox>
                <asp:Literal ID="total" runat="server">0</asp:Literal>
            </p>
            <p>
                &nbsp;</p>
            
        </div>
    </div>

</asp:Content>
