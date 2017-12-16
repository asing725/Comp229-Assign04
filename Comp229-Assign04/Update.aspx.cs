using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Newtonsoft.Json;
using Comp229_Assign04.Models;


namespace Comp229_Assign04
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getmdls();
        }

        protected void Cnclbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
        private void getmdls()
        {
            string miniName = Request.QueryString["MiniName"];
            var filePath = MapPath("~/Assign04.json");
            if (File.Exists(filePath))
            {
                var strng = File.ReadAllText(filePath);
                var list = JsonConvert.DeserializeObject<List<Mini>>(strng);
                var models = from Model in list
                             where Model.MiniName == miniName
                             select Model;
                foreach (var mdl in models)
                {
                    Mntxt.Text = mdl.MiniName;
                    Ftxt.Text = mdl.faction;
                    Rtxt.Text = Convert.ToString(mdl.rank);
                    Btxt.Text = Convert.ToString(mdl._base);
                    Sztxt.Text = Convert.ToString(mdl.size);
                    Dztxt.Text = mdl.deploymentZone;
                    Mbtxt.Text = Convert.ToString(mdl.mobility);
                    Wtxt.Text = Convert.ToString(mdl.willpower);
                    Rstxt.Text = Convert.ToString(mdl.resiliance);
                    Wdtxt.Text = Convert.ToString(mdl.wounds);
                }
            }
        }

        protected void Svbtn_Click(object sender, EventArgs e)
        {
            string mininame = Request.QueryString["MiniName"];
            var file = MapPath("~/Assign04.json");
            if (File.Exists(file))
            {
                var strng = File.ReadAllText(file);
                var list = JsonConvert.DeserializeObject<List<Mini>>(strng);
                var models = from mdl in list
                             where mdl.MiniName == mininame
                             select mdl;
               foreach ( var modl in models)
               {
                    modl.MiniName = Mntxt.Text;
                    modl.faction = Ftxt.Text;
                    modl.rank = Convert.ToInt32(Rtxt.Text);
                    modl._base = Convert.ToInt32(Btxt.Text);
                    modl.size = Convert.ToInt32(Sztxt.Text);
                    modl.deploymentZone = Dztxt.Text;
                    modl.mobility = Convert.ToInt32(Mbtxt.Text);
                    modl.willpower = Convert.ToInt32(Wtxt.Text);
                    modl.resiliance = Convert.ToInt32(Rstxt.Text);
                    modl.wounds = Convert.ToInt32(Wdtxt.Text);
               }
                File.WriteAllText(file, JsonConvert.SerializeObject(list));
            }
            Response.Redirect("Home.aspx");
            
        }
    }
}
