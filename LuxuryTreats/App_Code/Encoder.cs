using System;
using System.Collections.Generic;
//ing System.Linq;
using System.Web;

namespace ECCVWebsite.App_Code
{
    public class Encoder
    {
        public static string Encode(string s)
        {
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(s);
            string output = System.Convert.ToBase64String(bytes);
            return output;
        }
    }
   
}