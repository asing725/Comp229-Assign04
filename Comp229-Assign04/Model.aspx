<%@ Page Title="Model" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="Comp229_Assign04.Model" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="/content/style1.css" rel="stylesheet" type="text/css">
   
      <div class="jumbotron">
          
        <h1>
         Wrath Of Kings</h1>         
        </div>
    <div class="body">

        <div class="row">
          
     
       <asp:GridView ID="Gviewmp" runat="server" AutoGenerateColumns="false"  DataKeyField="MiniName" >
             <Columns>
                 <asp:HyperLinkField Text="Edit"
                             ControlStyle-CssClass="btn btn-primary btn-sm"
                            runat="server" DataNavigateUrlFields="MiniName"
                            DataNavigateUrlFormatString="Update.aspx?MiniName={0}" />
                     <asp:TemplateField><ItemTemplate>
                     <asp:Button ID="del" OnClick="del_Click" Text="Delete" runat="server" CssClass="btn btn-danger btn-sm"/>
                 </ItemTemplate> </asp:TemplateField>              
                <asp:BoundField DataField="Mininame" HeaderText="Name" />
                <asp:BoundField DataField="faction" HeaderText="Faction" />
                <asp:BoundField DataField="rank" HeaderText="Rank" />
                <asp:BoundField DataField="_base" HeaderText="Base" />
                <asp:BoundField DataField="size" HeaderText="Size" />
                <asp:BoundField DataField="deploymentZone" HeaderText="Deployment Zone" />
                <asp:ImageField DataImageUrlField="ImageUrl"  ControlStyle-Height="230px" ControlStyle-Width="250px" ></asp:ImageField>               
           </Columns>
        </asp:GridView>
          
            </div>
        </div>
</asp:Content>
