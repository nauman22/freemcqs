﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace jquery1
{
    public class Global : System.Web.HttpApplication
    {
        protected  void Page_Init(object sender, EventArgs e)
        {
            
        }
        protected void Application_Start(object sender, EventArgs e)
        {
                  // Add Routes.
          RegisterCustomRoutes(RouteTable.Routes);
        }

        void RegisterCustomRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("Practise", "Practice/Online-MCAT-ECAT-NEET-UKAT-MEDICAL-Engineering-Free-Mcq-Mcqs-Test-Practise-download/{subjectName}/{TestName}/{TestId}", "~/General_Pages/PractiseTest.aspx");
           // routes.MapPageRoute("check", "hi/hello", "~/General_Pages/PractiseTest.aspx");
         
        }
        
    }
}