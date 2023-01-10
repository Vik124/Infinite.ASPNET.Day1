using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Infinite.ASPNET.Day1
{
    public partial class FrmSamplePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Page Load Event");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Button 1 Event");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("Button 2 Event");
        }
    }
}