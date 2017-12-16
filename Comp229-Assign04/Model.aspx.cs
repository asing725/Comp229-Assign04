using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Comp229_Assign04.Models;
using System.IO;

namespace Comp229_Assign04
{
    public partial class Model : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdetail();
            }
        }
        public void getdetail()
        {
            string mininame = Request.QueryString["Mininame"];
            var filepath = MapPath("~/Assign04.json");
            if (File.Exists(filepath))
            {
                string strng = File.ReadAllText(filepath);
                var lists = JsonConvert.DeserializeObject<List<Mini>>(strng);
                var detail = (from modl in lists where modl.MiniName == mininame select modl);
                Gviewmp.DataSource = detail;
                Gviewmp.DataBind();
            }
        }

        protected void del_Click(object sender, EventArgs e)
        {
            Mini mini = new Mini();
            string mininame = Request.QueryString["Mininame"];
            var filepath = MapPath("~/Assign04.json");
            if (File.Exists(filepath))
            {
                var lists = JsonConvert.DeserializeObject<List<Mini>>(File.ReadAllText(filepath));
                foreach (var mdl in lists)
                {
                    if (mdl.MiniName == mininame)
                        mini = mdl;
                }
            
                lists.Remove(mini);
                File.WriteAllText(filepath, JsonConvert.SerializeObject(lists));
                Response.Redirect("~/Home.aspx");

            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Update.aspx");
        }
    }
}