using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSWA.Pages
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (TheBrokenSpineEntities entities = new TheBrokenSpineEntities())
            {
                //Insert a Record
                //===================================
                //Create the student stud obect
               // tblStudent stud = new tblStudent();


                //Select
                //=======================================================
                var studs = from s in entities.tblStudents select s;
                var stud = from s in entities.tblStudents
                           where s.fldStudentID == 1
                           select s;

                if(studs != null)
                {
                    GridView1.DataSource = studs.ToList();
                    GridView1.DataBind();
                }
        


                //fill the object with data
                //stud.fldStudentName = "Joe Oakes";
                //stud.fldStudentSSN = "666666666";
                //stud.fldStudentEmail = "joe.oakes@psu.edu";
                //stud.fldStudentPhone = "555-555-5555";
                //Call the method to add the object to the table
                //entities.tblStudents.Add(stud);
                ////Save the changes to the DB
                //entities.SaveChanges();
                ////stud.fldStudentID will contain the record number

                ////Update a record
                ////==================================
                //stud.fldStudentName = "Joseph Oakes";
                //entities.SaveChanges();

                //Delete a record
                //==================================
                //LINQ

                //var stud = from s in entities.tblStudents
                //           where s.fldStudentID == 1
                //           select s;

                //entities.tblStudents.Remove(stud);
                //entities.SaveChanges();

            }
        }
    }
}