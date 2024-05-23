<%@page import="dbcon.dbconnection"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<style type="text/css">
<!--
body {
	background-image: url(shopimage.jpg);
	background-repeat: repeat-x;
}
-->
</style>
<%
   

try
{
        
	  Connection con=dbconnection.getConnection();
	//	out.println("test1");
       	 String t1=request.getParameter("d").trim();
		/* String t2=request.getParameter("c").trim();
		 String t3=request.getParameter("gst").trim();
		 String t4=request.getParameter("rate").trim();
		 */
          Statement stmt=con.createStatement();
		// out.println("test2");
	   String s1="",s2="",s3="",s4="",s5="",s6="";
	     ResultSet rs;
		// String s6="select * from "+t2+" where pid="+t1;
		// out.println(s6);
     	rs = stmt.executeQuery("select * from product where pid="+"'"+t1+"'");
//		out.println("test3");
		while(rs.next())
		{
		s1=rs.getString("pid");
		s2=rs.getString("pdesc");
		s3=rs.getString("rate");
		s4=rs.getString("pic");
			s5=rs.getString("category");
		s6=rs.getString("gst");
		}
		rs.close();
       
  //    out.println("test4");
       
        PreparedStatement pstmt=con.prepareStatement("insert into carttemp values(?,?,?,?,?,?)");   
        	pstmt.setString(1,s1);
            pstmt.setString(2,s2);
            pstmt.setString(3,s3);
            pstmt.setString(4,s4);
            pstmt.setString(5,s5);
			 pstmt.setString(6,s6);
  //         out.println("test5");
           
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
	//out.println("<script> alert('Added successfully'); </script>");
			//out.println("<br><br><br><h1><a href=index.jsp>Return to Cart</a></h1>");
	
           // response.sendRedirect("index.jsp");
		   out.println( "<script>alert('Product Added in the cart');window.location='shop.jsp';</script>");
    }
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
%>

