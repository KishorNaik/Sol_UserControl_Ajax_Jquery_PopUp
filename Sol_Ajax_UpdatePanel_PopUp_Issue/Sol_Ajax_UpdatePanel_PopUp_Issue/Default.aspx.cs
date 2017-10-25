using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sol_Ajax_UpdatePanel_PopUp_Issue
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region Api Method

        [WebMethod]
        public static String GetServerSideValue()
        {
            return
                "Kishor Naik " + DateTime.Now.ToString();
        }

        #endregion Api Method
    }
}