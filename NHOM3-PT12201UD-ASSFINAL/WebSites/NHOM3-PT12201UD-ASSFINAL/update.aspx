<%@ Page Title="Trang Chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container page-top" style="margin-top:100px;">
        

    <div class="container page-top">
        <h3>KHÁCH HÀNG</h3>
        <asp:DetailsView ID="DetailsView2" runat="server" Height="100px" Width="500px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ms" DataSourceID="khachhang" ForeColor="#333333" GridLines="None" style="margin-right: 20px" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="ms" HeaderText="ms" ReadOnly="True" SortExpression="ms" />
                    <asp:BoundField DataField="ho_va_ten" HeaderText="ho_va_ten" SortExpression="ho_va_ten" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="dia_chi" HeaderText="dia_chi" SortExpression="dia_chi" />
                    <asp:BoundField DataField="so_thich" HeaderText="so_thich" SortExpression="so_thich" />
                    <asp:BoundField DataField="so_dien_thoai" HeaderText="so_dien_thoai" SortExpression="so_dien_thoai" />
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="khachhang" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [ms], [email], [dia_chi], [so_thich], [so_dien_thoai], [ho_va_ten] FROM [khach_hang]" DeleteCommand="DELETE FROM [khach_hang] WHERE [ms] = @ms" InsertCommand="INSERT INTO [khach_hang] ([ms], [email], [dia_chi], [so_thich], [so_dien_thoai], [ho_va_ten]) VALUES (@ms, @email, @dia_chi, @so_thich, @so_dien_thoai, @ho_va_ten)" UpdateCommand="UPDATE [khach_hang] SET [email] = @email, [dia_chi] = @dia_chi, [so_thich] = @so_thich, [so_dien_thoai] = @so_dien_thoai, [ho_va_ten] = @ho_va_ten WHERE [ms] = @ms">
            <DeleteParameters>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="email" Type="String"></asp:Parameter>
                <asp:Parameter Name="dia_chi" Type="String"></asp:Parameter>
                <asp:Parameter Name="so_thich" Type="String"></asp:Parameter>
                <asp:Parameter Name="so_dien_thoai" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="ho_va_ten" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="email" Type="String"></asp:Parameter>
                <asp:Parameter Name="dia_chi" Type="String"></asp:Parameter>
                <asp:Parameter Name="so_thich" Type="String"></asp:Parameter>
                <asp:Parameter Name="so_dien_thoai" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="ho_va_ten" Type="String"></asp:Parameter>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
