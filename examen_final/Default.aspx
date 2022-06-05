<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="examen_final._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Catalogos de Productos de Tecnologia</h1>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Agregar Productos</h2>
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DefaultMode="Insert" DataKeyNames="id" DataSourceID="SqlDataSource2">
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="codigoStock" HeaderText="codigoStock" SortExpression="codigoStock" />
                        <asp:BoundField DataField="fechaIngreso" HeaderText="fechaIngreso" SortExpression="fechaIngreso" />
                        <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_productosConnectionString %>" DeleteCommand="DELETE FROM [tb_producto] WHERE [id] = @original_id AND [codigo] = @original_codigo AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([codigoStock] = @original_codigoStock) OR ([codigoStock] IS NULL AND @original_codigoStock IS NULL)) AND (([fechaIngreso] = @original_fechaIngreso) OR ([fechaIngreso] IS NULL AND @original_fechaIngreso IS NULL)) AND (([precio] = @original_precio) OR ([precio] IS NULL AND @original_precio IS NULL))" InsertCommand="INSERT INTO [tb_producto] ([codigo], [nombre], [codigoStock], [fechaIngreso], [precio]) VALUES (@codigo, @nombre, @codigoStock, @fechaIngreso, @precio)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tb_producto]" UpdateCommand="UPDATE [tb_producto] SET [codigo] = @codigo, [nombre] = @nombre, [codigoStock] = @codigoStock, [fechaIngreso] = @fechaIngreso, [precio] = @precio WHERE [id] = @original_id AND [codigo] = @original_codigo AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([codigoStock] = @original_codigoStock) OR ([codigoStock] IS NULL AND @original_codigoStock IS NULL)) AND (([fechaIngreso] = @original_fechaIngreso) OR ([fechaIngreso] IS NULL AND @original_fechaIngreso IS NULL)) AND (([precio] = @original_precio) OR ([precio] IS NULL AND @original_precio IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_codigo" Type="String" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                        <asp:Parameter Name="original_codigoStock" Type="String" />
                        <asp:Parameter Name="original_fechaIngreso" Type="DateTime" />
                        <asp:Parameter Name="original_precio" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="codigo" Type="String" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="codigoStock" Type="String" />
                        <asp:Parameter Name="fechaIngreso" Type="DateTime" />
                        <asp:Parameter Name="precio" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="codigo" Type="String" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="codigoStock" Type="String" />
                        <asp:Parameter Name="fechaIngreso" Type="DateTime" />
                        <asp:Parameter Name="precio" Type="Decimal" />
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_codigo" Type="String" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                        <asp:Parameter Name="original_codigoStock" Type="String" />
                        <asp:Parameter Name="original_fechaIngreso" Type="DateTime" />
                        <asp:Parameter Name="original_precio" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_ProductosConnectionString %>" DeleteCommand="DELETE FROM [tb_productos] WHERE [codigo] = @original_codigo AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([marca] = @original_marca) OR ([marca] IS NULL AND @original_marca IS NULL)) AND (([fechaIngreso] = @original_fechaIngreso) OR ([fechaIngreso] IS NULL AND @original_fechaIngreso IS NULL)) AND (([codigoStock] = @original_codigoStock) OR ([codigoStock] IS NULL AND @original_codigoStock IS NULL)) AND [precio] = @original_precio" InsertCommand="INSERT INTO [tb_productos] ([codigo], [nombre], [marca], [fechaIngreso], [codigoStock], [precio]) VALUES (@codigo, @nombre, @marca, @fechaIngreso, @codigoStock, @precio)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tb_productos]" UpdateCommand="UPDATE [tb_productos] SET [nombre] = @nombre, [marca] = @marca, [fechaIngreso] = @fechaIngreso, [codigoStock] = @codigoStock, [precio] = @precio WHERE [codigo] = @original_codigo AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([marca] = @original_marca) OR ([marca] IS NULL AND @original_marca IS NULL)) AND (([fechaIngreso] = @original_fechaIngreso) OR ([fechaIngreso] IS NULL AND @original_fechaIngreso IS NULL)) AND (([codigoStock] = @original_codigoStock) OR ([codigoStock] IS NULL AND @original_codigoStock IS NULL)) AND [precio] = @original_precio">
                    <DeleteParameters>
                        <asp:Parameter Name="original_codigo" Type="Int32" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                        <asp:Parameter Name="original_marca" Type="String" />
                        <asp:Parameter Name="original_fechaIngreso" Type="DateTime" />
                        <asp:Parameter Name="original_codigoStock" Type="String" />
                        <asp:Parameter Name="original_precio" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="codigo" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="marca" Type="String" />
                        <asp:Parameter Name="fechaIngreso" Type="DateTime" />
                        <asp:Parameter Name="codigoStock" Type="String" />
                        <asp:Parameter Name="precio" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="marca" Type="String" />
                        <asp:Parameter Name="fechaIngreso" Type="DateTime" />
                        <asp:Parameter Name="codigoStock" Type="String" />
                        <asp:Parameter Name="precio" Type="Decimal" />
                        <asp:Parameter Name="original_codigo" Type="Int32" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                        <asp:Parameter Name="original_marca" Type="String" />
                        <asp:Parameter Name="original_fechaIngreso" Type="DateTime" />
                        <asp:Parameter Name="original_codigoStock" Type="String" />
                        <asp:Parameter Name="original_precio" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Listado de Productos</h2>
            <p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="codigo" HeaderText="Codigo" SortExpression="codigo" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="codigoStock" HeaderText="Codigo Stock" SortExpression="codigoStock" />
                        <asp:BoundField DataField="fechaIngreso" HeaderText="Fecha Ingreso" SortExpression="fechaIngreso" />
                        <asp:BoundField DataField="precio" HeaderText="Precio" SortExpression="precio" />
                    </Columns>
                </asp:GridView>
            </p>
        </div>
    </div>

</asp:Content>