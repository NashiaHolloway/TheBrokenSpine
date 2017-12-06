using System;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZedGraph;
using ZedGraph.Web;
using System.Data;

namespace TBSWA
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(MapPath(".") + "/App_Data/SalesSummary.xml");
            DataTable dt = ds.Tables[0];
            DataView dataView = new DataView(dt);
            //Chart1.Series[0].Points.DataBindXY(dataView, "day", dataView, "totalSales");
        }

        protected void ZedGraphWeb1_RenderGraph(ZedGraphWeb webObject, Graphics g, MasterPane pane)
        {
            //GraphPane class came from the ZedGraph DLL
            GraphPane myPane = pane[0]; //create an empty Graph Pane object
            myPane.Title.Text = "The Broken Spine Busy Hours"; //Title text property of pane object
            myPane.XAxis.Title.Text = "Time (Hours)"; //Title X axis label text property
            myPane.YAxis.Title.Text = "Number of People"; //Title Y axis label text property
            //PointPairList class came from the ZedGraph DLL
            PointPairList list1 = new PointPairList(); //New Point Pair List object
            //Create some plotting line to display
            for (int i = 0; i < 10; i++)
            {
                double x = Convert.ToDouble(i);
                double y = x + x ;
                list1.Add(x, y);
            }
            //Use a LineItem type chart came from the ZedGraph DLL
            string textForLegend = "Customers Throughout the Day";
            myPane.CurveList.Clear();
            LineItem myCurve = myPane.AddCurve(textForLegend,
              list1, Color.Red, SymbolType.Diamond);
            myCurve.Symbol.IsVisible = true;
        }

        protected void Account(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Create_Account.aspx");
        }

        protected void Student(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Student.aspx");
        }
    }
}