<%@page import="dbcon.dbconnection"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Bootstrap E-Commerce Template- DIGI Shop mini</title>
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!-- Fontawesome core CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!--Slide Show Css -->
    <link href="assets/ItemSlider/css/main-style.css" rel="stylesheet" />
    <!-- custom CSS here -->
    <link href="assets/css/style.css" rel="stylesheet" />
     <style type="text/css">
<!--
-->
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #BEEDFC;
  padding: 8px;
}

#customers tr:nth-child(even){background-color:#fff;}

#customers tr:hover {background-color:#BEEDFC;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: black;
}
        .style8 {font-size: 12px}
     </style>
</head>
<body>
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><strong>FASHION </strong> HUB</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                <ul class="nav navbar-nav navbar-right">
                    <li><a href="aproduct.jsp">Add Products</a></li>
                    <li><a href="eproduct.jsp">Edit Products</a></li>
                       <li><a href="avieworders.jsp">View Orders</a></li>
                    <li><a href="dispatchorder.jsp">Dispatch Orders</a></li>
                    <li><a href="index.html">SignOut</a></li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">24x7 Support <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><strong>Call: </strong>+09-456-567-890</a></li>
                            <li><a href="#"><strong>Mail: </strong>info@yourdomain.com</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><strong>Address: </strong>
                                <div>
                                    234, New york Street,<br />
                                    Just Location, USA
                                </div>
                            </a></li>
                        </ul>
                    </li>
                </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="well well-lg offer-box text-center">


                   Today's Offer : &nbsp; <span class="glyphicon glyphicon-cog"></span>&nbsp;40 % off  on purchase of $ 2,000 and above till 24 dec !                
            <Br>  <Br>  <Br>  <Br>  <Br>  <Br>  <Br>  <Br>  <h1 align="center" >Dispatch Orders Page </h1>
               
                </div>
               
            
            <div class="col-md-3 text-center">
              <form name="form1" method="post" action="">
                <table width="693" border="0" align="center">
                  <tr>
                    <td width="268"><div align="center"><strong>Invoice No</strong></div></td>
     <td width="415"><label></label>     <input type="text" name="textfield" id="textfield" readonly value="<% String id=request.getParameter("id"); out.println(id);  %>"></td>
                  </tr>
                  <tr>
                    <td height="28"><div align="center"><strong>Invoice Date</strong></div></td>
                    <td><label>
                      <input type="text" name="textfield2" id="textfield2" readonly value="<% String ind=request.getParameter("ind"); out.println(ind);  %>">
                    </label></td>
                  </tr>
                  <tr>
                    <td><div align="center"><strong>Dispatch Location</strong></div></td>
                    <td><select name="select" id="select">
                      <option value="DELHI">DELHI</option>
                      <option value="NAGPUR">NAGPUR</option>
                      <option value="HYDERABAD">HYDERABAD</option>
                      <option value="BENGALURU">BENGALURU</option>
                    </select>                    </td>
                  </tr>
                  
                  <tr>
                    <td><div align="center"><strong>Email id</strong></div></td>
                    <td><input type="text" name="textfield5" id="textfield5"  value="<% String em=request.getParameter("e");   %>"></td>
                  <!--   out.println(em);-->
                  </tr>
                  <tr>
                    <td colspan="2"><div align="center"></div>
                        <div class="stars"></div>                    </td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><div align="left">
                        <input type="submit" name="Submit" value="Submit" />
                        <input type="reset" name="Submit3" value="Reset" />
                    </div></td>
                  </tr>
                </table>
               
                <%
   
if(request.getParameter("Submit")!= null)
	
   	{
try
{

   		
 		Connection con=dbconnection.getConnection(); 
       	 String t1=request.getParameter("textfield").trim();
		 String t2=request.getParameter("textfield2").trim();
		 String t3=request.getParameter("select").trim();
		 String t4a="",t4b="";
		 if(t3.equals("DELHI"))
		 {
				 t4a="28.640813";t4b="77.229717";
		 }
		 else if(t3.equals("NAGPUR"))
		 {
				 t4a="21.157903";t4b="79.091929";
		 }
		 else if(t3.equals("HYDERABAD"))
		 {
				 t4a="17.439699";t4b="78.499301";
		 }
		 else if(t3.equals("BENGALURU"))
		 {
				 t4a="12.981481";t4b="77.627728";
		 }
		 
	     String t5=request.getParameter("textfield5").trim();
        /* String t5=request.getParameter("t5").trim();
         String t6=request.getParameter("t6").trim();*/
         //String t7=request.getParameter("t7").trim();
        
        //Statement stmt=con.createStatement();
		       
       
        PreparedStatement pstmt=con.prepareStatement("insert into dispatch values(?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4a);
			   pstmt.setString(5,t4b);
            pstmt.setString(6,t5);
           
 			pstmt.executeUpdate();   
            
            pstmt.close();  
            con.close(); 
			out.println("<h1 style='color:red'>SUCCESFULLY Added</h1>");
            
    
	
	
		
}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    
	}
	}
%>
              </form>
              
         
</body>
</html>
