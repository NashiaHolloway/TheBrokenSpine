using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TBSWA.App_Code
{
    public class Person
    {
        
    
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public Address address { get; set; }

            public Person() { address = new Address(); }
       
    }
}