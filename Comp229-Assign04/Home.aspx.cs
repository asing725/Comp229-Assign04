using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Comp229_Assign04.Models;
using Newtonsoft.Json;
using System.IO;
using System.Net.Mail;

namespace Comp229_Assign04
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getlist();
            add.Visible = false;
            email.Visible = false;
            addbtn.Visible = true;
            
        }
        public void getlist()
        {
            var filepath = MapPath("~/Assign04.json");
            if (File.Exists(filepath))
            {
                var list = JsonConvert.DeserializeObject<List<Mini>>(File.ReadAllText(filepath));
               var models = from name in list
                           select name;
                Gview.DataSource = list;
               Gview.DataBind();
            }
            Gview.Visible = true;
        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            add.Visible = true;
            email.Visible = true;
            addbtn.Visible = false;
            Gview.Visible = false;
        }
        protected void savebtn_Click(object sender, EventArgs e)
        {

            this.save();
            Response.Redirect("~/home.aspx");
        }
        public void save()
        {
            Mini mini = new Mini();
            mini.MiniName = nametxt.Text;
            mini.faction = facttxt.Text;
            mini.willpower = Convert.ToInt32(willtxt.Text);
            mini.resiliance = Convert.ToInt32(restxt.Text);
            mini.wounds = Convert.ToInt32(woundtxt.Text);
            mini.mobility = Convert.ToInt32(mobtxt.Text);
            mini.rank = Convert.ToInt32(ranktxt.Text);
            mini.deploymentZone = deptxt.Text;
            mini._base = Convert.ToInt32(basetxt.Text);
            mini.size = Convert.ToInt32(sizetxt.Text);
            var filepath = MapPath("~/Assign04.json");
            string strng = File.ReadAllText(filepath);
            if (File.Exists(filepath))
            {

                var writedata = JsonConvert.DeserializeObject<List<Mini>>(strng);
                writedata.Add(mini);
                File.WriteAllText(filepath, JsonConvert.SerializeObject(writedata));         
            }
        }
       
        protected void cnclbtn_Click(object sender, EventArgs e)
        {
            nametxt.Text = "";
            facttxt.Text = "";
            willtxt.Text = "";
            restxt.Text = "";
            woundtxt.Text = "";
            mobtxt.Text = "";
            ranktxt.Text = "";
            deptxt.Text = "";
            basetxt.Text = "";
            sizetxt.Text = "";
            add.Visible = false;
            email.Visible = false;
            Gview.Visible = true;
            addbtn.Visible = true;
            
        }

        protected void send_Click(object sender, EventArgs e)
        {    
            this.save();

            // from class demo
            SmtpClient smtpClient = new SmtpClient("smtp-mail.outlook.com", 587);
            MailMessage message = new MailMessage();
            try
            {
 
                message.Subject = "MiniModels";
                message.Body = txttxt.Text;
                Attachment attch = new Attachment(MapPath("~/Assign04.json"));
                message.Attachments.Add(attch);
              //  MailAddress toAddress = new MailAddress(Convert.ToString(etxt.Text), "you");
             //   MailAddress fromAddress = new MailAddress("cc-comp229f2016@outlook.com", "Comp229");

                MailAddress toAddress1 = new MailAddress("to@example.com", "You");
                MailAddress fromAddress = new MailAddress("cc-comp229f2016@outlook.com", "You");
                message.From = fromAddress;
                message.To.Add(toAddress1);
               
                smtpClient.Host = "smtp-mail.outlook.com";
                smtpClient.Credentials = new System.Net.NetworkCredential("cc-comp229f2016@outlook.com", "comp229pwd");
                smtpClient.Send(message);

          /*      message.From = fromAddress;
                message.To.Add(toAddress);
                smtpClient.Host = "smtp-mail.outlook.com";
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("cc-comp229f2016@outlook.com", "password");
                smtpClient.Send(message); */
                emaillbl.Text = "Message has been sent.";
                Response.Redirect("~/home.aspx");
            }
            catch (Exception exp)
            {
                emaillbl.Text = "Message Was not sent!";
            }
        }
    }
    }
        
        
    
