using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
//ing System.Linq;
using System.Web;
using ECCVWebsite.App_Code;
using System.Data;
using System.Security.Cryptography;
using System.Text;

namespace ECCVWebsite.App_Code
{
    public class dbProvider
    {
        public Int32 IsValidCustomerLogin(string email, string password)
        {
            //encode password
            //string encoded_password = Encoder.Encode(password);
            string encoded_password = GetMd5Hash(password);
            //check email/password
            string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;

            string sql = "select top 1 customerNumber from CustomerLogin where username = '" + email + "' and password = '" + encoded_password + "';";

           
            using (SqlConnection DBcon = new SqlConnection(strcon))
            {
                   
                        SqlDataAdapter da = new SqlDataAdapter(sql, DBcon);

                DataSet ds = new DataSet();
                da.Fill(ds);
                try
                {

                    if (ds.Tables[0].Rows.Count == 0) return 0;
                    


                }
                catch (Exception ex)
                {

                    //throw new Exception("Error checking login", ex);
                }

                
                return Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            }


        }

       

        public DataSet GetComments(string productCode)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(strcon))
            {
                string sql = "select * from Comments where productCode = @productCode";
                SqlDataAdapter da = new SqlDataAdapter(sql, connection);
                da.SelectCommand.Parameters.AddWithValue("@productCode", productCode);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }

        public string AddComment(string productCode, string email, string comment)
        {
            string sql = "insert into Comments(productCode, email, comment) values ('" + productCode + "','" + email + "','" + comment + "');";
            string output = null;

            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(strcon))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(sql, connection);
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                //log.Error("Error adding comment", ex);
                output = ex.Message;
            }

            return output;
        }

        public string AddCustomer(string username, string email, string password,string favcolor,string firstName, string LastName, string add1, string add2, string city, string state, string phone)
        {
            password = GetMd5Hash(password);
            string output = "User Sucessfully Registered!";
            string sql1 = "SELECT isnull(MAX(customerNumber),0) from CustomerLogin";
            Int32 customerNo = 0;
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(strcon))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(sql1, connection);
                    customerNo = Convert.ToInt32(command.ExecuteScalar()) +1 ;
                }
            }
            catch (Exception ex)
            {
                //log.Error("Error adding comment", ex);
                output = ex.Message;
            }
            string sql = "INSERT INTO CustomerLogin (Username,FirstName,LastName,Add1,Add2,City,State,Phoneno,email,customerNumber,password,question_id,answer) values " +
                "('"+ username+"','" + firstName + "','" + LastName  + "','" + add1 + "','" + add2 + "','" + city + "','" + state + "','" + phone  + "','" + email +"'," + customerNo + ",'" + password + "',1,'" + favcolor+ "');";
         

            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(strcon))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(sql, connection);
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                //log.Error("Error adding comment", ex);
                output = ex.Message;
            }

            return output;
        }

        private static string GetMd5Hash(string input)
        {
            var hasher = MD5.Create();
            var data = hasher.ComputeHash(Encoding.Default.GetBytes(input));
            var builder = new StringBuilder();

            for (var i = 0; i < data.Length; i++)
            {
                builder.Append(data[i].ToString("x2"));
            }

            return builder.ToString();
        }

        public DataSet GetOffice(string city)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(strcon))
            {
                string sql = "select * from Offices where city = @city";
                SqlDataAdapter da = new SqlDataAdapter (sql, connection);
                da.SelectCommand.Parameters.AddWithValue("@city", city);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }

        public DataSet GetCustomers()
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(strcon))
            {
                string sql = "select * from Customerlogin";
                SqlDataAdapter da = new SqlDataAdapter(sql, connection);
                //da.SelectCommand.Parameters.AddWithValue("@city", city);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }


        public DataSet GetCustomerOrders(Int32 CustId)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(strcon))
            {
                string sql = "select * from Orders1 where customerNumber=" + CustId;
                SqlDataAdapter da = new SqlDataAdapter(sql, connection);
                //da.SelectCommand.Parameters.AddWithValue("@city", city);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }

        public DataSet GetAllOrders()
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(strcon))
            {
                string sql = "select * from Orders1" ;
                SqlDataAdapter da = new SqlDataAdapter(sql, connection);
                //da.SelectCommand.Parameters.AddWithValue("@city", city);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }

        public DataSet GetOrderDetails(string Orderid)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(strcon))
            {
                string sql = "select * from  OrderDetails1 where orderNumber = '"+ Orderid  + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, connection);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }

        public string UpdateOrder(string OrderNum, string Itemcode, string Itemdesc, string Qty, string rate, string status)
        {
            
            string output = "Order Updated Registered!";
             string sql1 = "UPDATE OrderDetails1   SET productCode ='" + Itemcode + "'," +
                "productDesc='" + Itemdesc + "', quantityOrdered =" + Qty + ",priceEach = " + rate + "  WHERE orderNumber ='" + OrderNum + "'";
            ;
            
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(strcon))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(sql1, connection);
                                    }
            }
            catch (Exception ex)
            {
                //log.Error("Error adding comment", ex);
                output = ex.Message;
            }
            string sql = "Update Orders1 set status ='" + status +"' where ordernumber ='" + OrderNum +"'" ;


            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(strcon))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(sql, connection);
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                //log.Error("Error adding comment", ex);
                output = ex.Message;
            }

            return output;
        }
    }



}