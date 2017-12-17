<%@ Page Title="Update" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign04.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
   
      <div class="jumbotron">
          
        <h1>
         Wrath Of Kings</h1>         
        </div>
    <div class="body">

        <div class="row">
            
            <<h2>Update mini info here: </h2>
<table>
    <tr><td><asp:label class="control-label" runat="server" >Mini Name: </asp:label></td><th><asp:TextBox runat="server" class="form-control" ID="Mntxt"
                         required="true">  </asp:TextBox></th></tr>
      <tr><td> <asp:label class="control-label" runat="server">Faction: </asp:label></td><th> <asp:TextBox runat="server" class="form-control" ID="Ftxt"
                         required="true">    </asp:TextBox></th></tr>
           <tr><td></td><th></th></tr>
    <tr><td> <asp:label class="control-label" runat="server">Rank: </asp:label></td><th><asp:TextBox runat="server" class="form-control" ID="Rtxt"
                         required="true">  </asp:TextBox></th></tr>
    <tr><td><asp:label class="control-label" runat="server">Base: </asp:label></td><th><asp:TextBox runat="server" class="form-control" ID="Btxt"
                         required="true">    </asp:TextBox> </th></tr>
    <tr><td><asp:label class="control-label" runat="server">Size: </asp:label></td><th><asp:TextBox runat="server" class="form-control" ID="Sztxt"
                         required="true">  </asp:TextBox></th></tr>
    <tr><td><asp:label class="control-label" runat="server">Deployment Zone: </asp:label></td><th><asp:TextBox runat="server" class="form-control" ID="Dztxt"
                         required="true">  </asp:TextBox></th></tr>
    <tr><td> <asp:label class="control-label" runat="server">Mobility: </asp:label></td><th><asp:TextBox runat="server" class="form-control" ID="Mbtxt"
                         required="true">  </asp:TextBox></th></tr>
    <tr><td><asp:label class="control-label" runat="server">Willpower: </asp:label></td><th> <asp:TextBox runat="server" class="form-control" ID="Wtxt"
                         required="true">  </asp:TextBox></th></tr>
    <tr><td><asp:label class="control-label" runat="server">Resiliance: </asp:label></td><th><asp:TextBox runat="server" class="form-control" ID="Rstxt"
                         required="true">    </asp:TextBox></th></tr>
    <tr><td><asp:label class="control-label" runat="server">Wound: </asp:label></td><th><asp:TextBox runat="server" class="form-control" ID="Wdtxt"
                         required="true">    </asp:TextBox></th></tr>
     <tr><td><asp:Button Text="cancel" ID="Cnclbtn" class="btn btn-danger btn-sm" runat="server" UseSubmitBehavior="false" OnClick="Cnclbtn_Click" /></td><th>
         <asp:Button Text="Save" ID="Svbtn" class="btn btn-primary btn-lg" runat="server" OnClick="Svbtn_Click"/>
   </th></tr>         
</table>
            </div>
          </div>
     
</asp:Content>
