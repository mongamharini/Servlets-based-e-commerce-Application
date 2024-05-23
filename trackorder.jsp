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
.style1 {color: #000000}
.style2 {color: #FF0000;
font-size: 12px;
}
.style7 {font-size: 24px}
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
                <a class="navbar-brand" href="#"><strong>DIGI</strong> Shop</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                <ul class="nav navbar-nav navbar-right">
                 <li><a href="geditprofile.jsp">Edit Profile</a></li>
                   <li><a href="showmycart.jsp">Cart</a></li>
                    <li><a href="trackorder.jsp">Track Order</a></li>
                  
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
            <Br>  <Br>  <Br>  <Br>  <Br>  <Br>  <Br>  <Br>  <h1 align="center" >Welcome to Guest Page 
            				
            </h1>
             
                </div>
               
                <div align="center">
                  <p>
                    <% String s5=(String)session.getAttribute("emailid");//out.println(s5); %>
                   
                    <%
                                          
try
{
    	
	  Connection con=dbconnection.getConnection();  
      Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 


	   String s1="select billno as InvoiceNo,fullname as Name,addr as Address,emailid as Email,ph as Mobile,status as Status from payment2 where emailid="+"'"+s5+"'";
	
     rs = stmt.executeQuery(s1);
      
		out.println("To be Dispatched Detail");
      
        out.println("<table border=1 align=center width=100% bordercolor=blue id=customers><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n;i++)
        {
		
            out.println("<td><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			
        }
		String s="",s11="";
        while (rs.next())
        {
            out.println("<tr>");

			
                for(int x=1;x<=n;x++)
                {
				
					 s=rs.getString(x);
					 if(x==1)
					 {
					 	s11=s;
					  out.println("<td><b>"+s11+"</td>");
					 }
					 else
					 {
					 out.println("<td><b>"+s+"</td>");
					 }
					 
				}
				  
  out.println("<td><b><a href=feedback.jsp?id="+s11+"><img src='rate.png' width='50px' height='50px'><p style='color:#000'>Rate Us</p></b><a/></td>");
           
 out.println("</tr>");	
                
           out.println("</table>");
                
            
               


        rs.close();
		stmt.close();
		con.close();
	} 	
      
}
  catch(Exception e)
    {
        
      //out.println(e);
    }
	
%>
                  </p>
                  <p>
                    <%
                                          
try
{
    	
	  Connection con=dbconnection.getConnection();  
      Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 


	   String s1="select InvoiceNo,DispatchLocation,LocationLat ,LocationLong,EmailId     from dispatch where emailid="+"'"+s5+"'";
	
     rs = stmt.executeQuery(s1);
      
		out.println("To be Dispatched Detail");
      
        out.println("<table border=1 align=center width=100% bordercolor=blue id=customers><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n;i++)
        {
		
            out.println("<td><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			
        }
		String s="",lat="",lon="",s11="";
        while (rs.next())
        {
            out.println("<tr>");

			
                for(int x=1;x<=n;x++)
                {
				
					 s=rs.getString(x);
					 if(x==3)
					 {
					 	lat=s;
					  out.println("<td><b>"+lat+"</td>");
					 }
					 else if(x==4)
					 {
					 	lon=s;
					  out.println("<td><b>"+lon+"</td>");
					 }
					 else
					 {
					 out.println("<td><b>"+s+"</td>");
					 }
					 
				}
				  
  out.println("<td><b><a href=locate.jsp?lat="+lat+"&lon="+lon+"><img src='locatio.png' width='50px' height='50px'><p style='color:#000'>Search Location</p></b><a/></td>");
           
 out.println("</tr>");	
                
           out.println("</table>");
                
            
               


        rs.close();
		stmt.close();
		con.close();
	} 	
      
}
  catch(Exception e)
    {
        
      //out.println(e);
    }
	
%>
                  </p>
                </div>
              <div class="col-md-3 text-center">
                <div class=" col-md-12 col-sm-6 col-xs-6" >
                 
                </div>
              </div>
            <!-- /.col -->
        </div>
     
    <!-- /.col -->
    <!--Footer end -->
    <!--Core JavaScript file  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!--bootstrap JavaScript file  -->
    <script src="assets/js/bootstrap.js"></script>
    <!--Slider JavaScript file  -->
    <script src="assets/ItemSlider/js/modernizr.custom.63321.js"></script>
    <script src="assets/ItemSlider/js/jquery.catslider.js"></script>
    <script>
        $(function () {

            $('#mi-slider').catslider();

        });
		</script>
</body>
</html>
