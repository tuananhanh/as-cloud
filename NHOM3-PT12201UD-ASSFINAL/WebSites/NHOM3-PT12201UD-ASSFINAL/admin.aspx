<%@ Page Title="Trang Chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container page-top" style="margin-top: 20px; background-color:#0ff;">
        
        <div class="container page-top">
        <h3>HÓA ĐƠN CHI TIẾT</h3>
        <asp:DetailsView ID="DetailsView3" runat="server" Height="100px" Width="500px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ms" DataSourceID="hoadonchitiet" ForeColor="#333333" GridLines="None" style="margin-right: 20px" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ms" HeaderText="ms" ReadOnly="True" SortExpression="ms"></asp:BoundField>
                <asp:BoundField DataField="ms_hoa_don" HeaderText="ms_hoa_don" SortExpression="ms_hoa_don"></asp:BoundField>
                <asp:BoundField DataField="ms_san_pham" HeaderText="ms_san_pham" SortExpression="ms_san_pham"></asp:BoundField>
                <asp:BoundField DataField="so_luong" HeaderText="so_luong" SortExpression="so_luong"></asp:BoundField>
                <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource runat="server" ID="hoadonchitiet" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [hoa_don_chi_tiet] WHERE [ms] = @ms" InsertCommand="INSERT INTO [hoa_don_chi_tiet] ([ms], [ms_hoa_don], [ms_san_pham], [so_luong]) VALUES (@ms, @ms_hoa_don, @ms_san_pham, @so_luong)" SelectCommand="SELECT [ms], [ms_hoa_don], [ms_san_pham], [so_luong] FROM [hoa_don_chi_tiet]" UpdateCommand="UPDATE [hoa_don_chi_tiet] SET [ms_hoa_don] = @ms_hoa_don, [ms_san_pham] = @ms_san_pham, [so_luong] = @so_luong WHERE [ms] = @ms">
            <DeleteParameters>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="ms_hoa_don" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="ms_san_pham" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="so_luong" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ms_hoa_don" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="ms_san_pham" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="so_luong" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div class="container page-top">
        <h3>HÓA ĐƠN</h3>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="100px" Width="500px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ms" DataSourceID="hoadon" ForeColor="#333333" GridLines="None" style="margin-right: 20px" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                <asp:BoundField DataField="ms" HeaderText="ms" ReadOnly="True" SortExpression="ms"></asp:BoundField>
                <asp:BoundField DataField="trang_thai_hd" HeaderText="trang_thai_hd" SortExpression="trang_thai_hd"></asp:BoundField>
                <asp:BoundField DataField="ms_khach_hang" HeaderText="ms_khach_hang" SortExpression="ms_khach_hang"></asp:BoundField>
                <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource runat="server" ID="hoadon" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [hoa_don] WHERE [ms] = @ms" InsertCommand="INSERT INTO [hoa_don] ([ms], [trang_thai_hd], [ms_khach_hang]) VALUES (@ms, @trang_thai_hd, @ms_khach_hang)" SelectCommand="SELECT [ms], [trang_thai_hd], [ms_khach_hang] FROM [hoa_don]" UpdateCommand="UPDATE [hoa_don] SET [trang_thai_hd] = @trang_thai_hd, [ms_khach_hang] = @ms_khach_hang WHERE [ms] = @ms">
            <DeleteParameters>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="trang_thai_hd" Type="String"></asp:Parameter>
                <asp:Parameter Name="ms_khach_hang" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="trang_thai_hd" Type="String"></asp:Parameter>
                <asp:Parameter Name="ms_khach_hang" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div class="container page-top">
        <h3>SẢN PHẨM</h3>
                <asp:DetailsView ID="DetailsView1" runat="server" Height="100px" Width="500px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ms" DataSourceID="update" ForeColor="#333333" GridLines="None" style="margin-right: 20px" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="ms" HeaderText="ms" ReadOnly="True" SortExpression="ms" />
                    <asp:BoundField DataField="ms_chuyenmuc_sp" HeaderText="ms_chuyenmuc_sp" SortExpression="ms_chuyenmuc_sp" />
                    <asp:BoundField DataField="sku" HeaderText="sku" SortExpression="sku" />
                    <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten" />
                    <asp:BoundField DataField="gia" HeaderText="gia" SortExpression="gia" />
                    <asp:BoundField DataField="mo_ta" HeaderText="mo_ta" SortExpression="mo_ta" />
                    <asp:BoundField DataField="anh" HeaderText="anh" SortExpression="anh" />
                    <asp:BoundField DataField="don_vi" HeaderText="don_vi" SortExpression="don_vi" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="update" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [san_pham] WHERE [ms] = @original_ms AND [ms_chuyenmuc_sp] = @original_ms_chuyenmuc_sp AND [sku] = @original_sku AND [ten] = @original_ten AND [gia] = @original_gia AND [mo_ta] = @original_mo_ta AND [anh] = @original_anh AND [don_vi] = @original_don_vi" InsertCommand="INSERT INTO [san_pham] ([ms], [ms_chuyenmuc_sp], [sku], [ten], [gia], [mo_ta], [anh], [don_vi]) VALUES (@ms, @ms_chuyenmuc_sp, @sku, @ten, @gia, @mo_ta, @anh, @don_vi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [san_pham]" UpdateCommand="UPDATE [san_pham] SET [ms_chuyenmuc_sp] = @ms_chuyenmuc_sp, [sku] = @sku, [ten] = @ten, [gia] = @gia, [mo_ta] = @mo_ta, [anh] = @anh, [don_vi] = @don_vi WHERE [ms] = @original_ms AND [ms_chuyenmuc_sp] = @original_ms_chuyenmuc_sp AND [sku] = @original_sku AND [ten] = @original_ten AND [gia] = @original_gia AND [mo_ta] = @original_mo_ta AND [anh] = @original_anh AND [don_vi] = @original_don_vi">
                <DeleteParameters>
                    <asp:Parameter Name="original_ms" Type="Int32" />
                    <asp:Parameter Name="original_ms_chuyenmuc_sp" Type="Int32" />
                    <asp:Parameter Name="original_sku" Type="String" />
                    <asp:Parameter Name="original_ten" Type="String" />
                    <asp:Parameter Name="original_gia" Type="Decimal" />
                    <asp:Parameter Name="original_mo_ta" Type="String" />
                    <asp:Parameter Name="original_anh" Type="String" />
                    <asp:Parameter Name="original_don_vi" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ms" Type="Int32" />
                    <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
                    <asp:Parameter Name="sku" Type="String" />
                    <asp:Parameter Name="ten" Type="String" />
                    <asp:Parameter Name="gia" Type="Decimal" />
                    <asp:Parameter Name="mo_ta" Type="String" />
                    <asp:Parameter Name="anh" Type="String" />
                    <asp:Parameter Name="don_vi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
                    <asp:Parameter Name="sku" Type="String" />
                    <asp:Parameter Name="ten" Type="String" />
                    <asp:Parameter Name="gia" Type="Decimal" />
                    <asp:Parameter Name="mo_ta" Type="String" />
                    <asp:Parameter Name="anh" Type="String" />
                    <asp:Parameter Name="don_vi" Type="String" />
                    <asp:Parameter Name="original_ms" Type="Int32" />
                    <asp:Parameter Name="original_ms_chuyenmuc_sp" Type="Int32" />
                    <asp:Parameter Name="original_sku" Type="String" />
                    <asp:Parameter Name="original_ten" Type="String" />
                    <asp:Parameter Name="original_gia" Type="Decimal" />
                    <asp:Parameter Name="original_mo_ta" Type="String" />
                    <asp:Parameter Name="original_anh" Type="String" />
                    <asp:Parameter Name="original_don_vi" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
    </div>
    <div class="container page-top" style="margin-bottom:20px;">
        <h3>CHUYÊN MỤC SẢN PHẨM</h3>
         <asp:DetailsView ID="DetailsView5" runat="server" Height="100px" Width="500px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ms" DataSourceID="chuyenmucsanpham" ForeColor="#333333" GridLines="None" style="margin-right: 20px" AllowPaging="True">
             <AlternatingRowStyle BackColor="White" />
             <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
             <EditRowStyle BackColor="#2461BF" />
             <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
             <Fields>
                <asp:BoundField DataField="ms" HeaderText="ms" ReadOnly="True" SortExpression="ms"></asp:BoundField>
                <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten"></asp:BoundField>
                <asp:BoundField DataField="ms_chuyenmuc_cha" HeaderText="ms_chuyenmuc_cha" SortExpression="ms_chuyenmuc_cha"></asp:BoundField>
                <asp:BoundField DataField="mo_ta" HeaderText="mo_ta" SortExpression="mo_ta"></asp:BoundField>
                <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource runat="server" ID="chuyenmucsanpham" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [chuyenmuc_sanpham] WHERE [ms] = @ms" InsertCommand="INSERT INTO [chuyenmuc_sanpham] ([ms], [ten], [ms_chuyenmuc_cha], [mo_ta]) VALUES (@ms, @ten, @ms_chuyenmuc_cha, @mo_ta)" SelectCommand="SELECT [ms], [ten], [ms_chuyenmuc_cha], [mo_ta] FROM [chuyenmuc_sanpham]" UpdateCommand="UPDATE [chuyenmuc_sanpham] SET [ten] = @ten, [ms_chuyenmuc_cha] = @ms_chuyenmuc_cha, [mo_ta] = @mo_ta WHERE [ms] = @ms">
            <DeleteParameters>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="ten" Type="String"></asp:Parameter>
                <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="mo_ta" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ten" Type="String"></asp:Parameter>
                <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="mo_ta" Type="String"></asp:Parameter>
                <asp:Parameter Name="ms" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </div>
</asp:Content>
