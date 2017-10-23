using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using log4net;

namespace TBSWA
{
    public partial class Browse : System.Web.UI.Page
    {
        private static readonly ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        protected void Page_Load(object sender, EventArgs e)
        {
            log4net.Config.XmlConfigurator.Configure();

            try
            {
                string connectionInfo = ConfigurationManager.AppSettings["ChartImageHandler"];
                DataSet ds = new DataSet();
                ds.ReadXml(MapPath(".") + "/../App_Data/SaleSummary.xml");
                DataTable dt = ds.Tables[0];
                DataView dataView = new DataView(dt);
                //Chart1.Series[0].Points.DataBindXY(dataView, "day", dataView, "totalSales");
            }
            catch (Exception ex)
            {
                //TBSWA.App_Code.ExceptionUtility.LogException(ex, "Calendar");
               // logger.Error("Login Error", ex);
            }
        }
    }
}