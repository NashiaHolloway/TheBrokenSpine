using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TBSWA.App_Code;
using System.Web.Script.Serialization;
namespace TBSWA.Handlers
{
    /// <summary>
    /// Summary description for JSONAJAX
    /// </summary>
    public class JSONAJAX : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            Person p = new Person();
            p.FirstName = "John";
            p.LastName = "Adams";
            p.address.Address1 = "100 Pennsylvania Ave";
            p.address.Address2 = "apt 12";
            p.address.Country = "USA";
            p.address.State = "Washington DC";
            JavaScriptSerializer JSS = new JavaScriptSerializer();
            string JSONObject = JSS.Serialize(p);
            context.Response.Write(JSONObject);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}