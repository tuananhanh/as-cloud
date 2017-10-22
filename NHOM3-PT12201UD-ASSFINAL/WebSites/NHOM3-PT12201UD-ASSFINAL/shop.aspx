<%@ Page Title="Trang Chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container page-top" style="margin-top:100px;">
        <div class="row">
           
            <div class="col-md-12">
                <h3>Điện thoại di động</h3>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                    <div class="col-sm-4 col-lg-3 col-md-4">

                        <div class="thumbnail khung-mua" style="margin-top:20px;">
                                <a href="#"><div class="caption">
                                        <asp:Image id="Image1" runat="server"
                                        CssClass ="img-rounded"
                                        Width="100%"
                                        Height="300px"
                                        AlternateText="Image text"
                                        ImageAlign="left"
                                        ImageUrl="<%# Bind('anh')%>"
                                        />
                                </a>
                                <h6 class="pull-right text-primary"><b><asp:Label ID="giaLabel" runat="server" Text='<%# Bind("gia")%>' /> VNĐ</b></h6>
                                <h5><a href="#" class="text-muted"><asp:Label ID="tenLabel" runat="server" Text='<%# Bind("ten") %>' /></a></h5>
                                
                               
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [san_pham]" OldValuesParameterFormatString="original_{0}">
                </asp:SqlDataSource>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
