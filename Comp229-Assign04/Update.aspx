<%@ Page Title="Update" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign04.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
   
      <div class="jumbotron">
          
        <h1>
         Wrath Of Kings</h1>         
        </div>
    <div class="body">

        <div class="row">
            

      <asp:label class="control-label" runat="server" >Mini Name   </asp:label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Mntxt"
                        placeholder="Mini Name" required="true">  </asp:TextBox>      
                    <asp:label class="control-label" runat="server">Faction   </asp:label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Ftxt"
                        placeholder=" Faction " required="true">    </asp:TextBox>
                   <asp:label class="control-label" runat="server">Rank   </asp:label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Rtxt"
                        placeholder="Rank" required="true">  </asp:TextBox>
                   <asp:label class="control-label" runat="server">Base   </asp:label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Btxt"
                        placeholder=" Base " required="true">    </asp:TextBox>             
                    <asp:label class="control-label" runat="server">Size   </asp:label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Sztxt"
                        placeholder="Size" required="true">  </asp:TextBox>
               
                    <asp:label class="control-label" runat="server">Deployment Zone   </asp:label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Dztxt"
                        placeholder="Deployment Zone" required="true">  </asp:TextBox>
               
                    <asp:label class="control-label" runat="server">Mobility   </asp:label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Mbtxt"
                        placeholder="Mobility" required="true">  </asp:TextBox>
             
                    <asp:label class="control-label" runat="server">Willpower   </asp:label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Wtxt"
                        placeholder="Willpower" required="true">  </asp:TextBox>
               
                    <asp:label class="control-label" runat="server">Resiliance   </asp:label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Rstxt"
                        placeholder="Resiliance " required="true">    </asp:TextBox>
               
                    <asp:label class="control-label" runat="server">Wound   </asp:label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Wdtxt"
                        placeholder="Wounds " required="true">    </asp:TextBox>

            <asp:Button Text="cancel" ID="Cnclbtn" CssClass="btn btn-danger btn-sm" runat="server" UseSubmitBehavior="false" OnClick="Cnclbtn_Click" />
                    <asp:Button Text="Save" ID="Svbtn" CssClass="btn btn-primary btn-lg" runat="server" OnClick="Svbtn_Click"/>
                
            </div>
          </div>
     
</asp:Content>
