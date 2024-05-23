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

.style1 {color: #000000}
.style2 {color: #FF0000;
font-size: 100px;
}

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 150%;
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
  color: red;
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
                <a class="navbar-brand" href="#"><strong>FASHION </strong> HUB</a>
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
            					<%
											String em=(String) session.getAttribute("emailid");out.println(em);
											
								
								%>
            
            </h1>
               
                </div>
               
            
            <div class="col-md-3 text-center">
              <%
try
{
    
    
     // String s2=request.getParameter("d").trim();
    
       //Class.forName("com.mysql.jdbc.Driver");
	  Connection con=dbconnection.getConnection(); 
     
      //ResultSet rs;
      Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 
       
 	   String s1="select pid as ProductId,pdesc as ProductDescription,rate as Rate,GST,pic as Photo  from carttemp";
	 
//   String s1="select billno as InvoiceNo,emailid as Email,fullname as Fullname,addr as Address,ph as Mobile,status as Status from payment2";

	
     rs = stmt.executeQuery(s1);
      
		//out.println("<body><div align=center><strong><span class=style1>CART DETAILS</span></strong></div></body>");
      
        out.println("<table border=1 align=center width=50% bordercolor=blue id=customers ><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n;i++)
        {
		
            out.println("<td><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			
        }
        String s="",s5="",s6="",s111="";
		int count=0;
		double sum=0;
		double temp=0;
		double mgst=0,mgsttemp=0;
		String pid="";
		String pdesc="";
        while (rs.next())
        {
            out.println("<tr>");
            count++;
			
                for(int x=1;x<=n;x++)
                {
				/*	if(x==1)
					{
					 s=rs.getString(x);
					  out.println("<td><b>"+s+"</td>");
					  mgsttemp=mgsttemp+Float.parseFloat(s);
        	         } */
					 
					 	if(x==1)
					{
					 	s=rs.getString(x);
						pid=s;
					 out.println("<td><b>"+s+"</b></td>");
        	         } 
					 else if(x==2)
					{
					 	s=rs.getString(x);
						pdesc=s;
					 out.println("<td><b>"+s+"</b></td>");
        	         } 
					else if(x==5)
					{
					 	s=rs.getString(x);
					  out.println("<td><b><img src="+s+" width=100 height=100></img></b></td>");
        	         } 
					else if(x==3)
					{
					 s111=rs.getString(x);
					temp=temp+Float.parseFloat(s111);
				 //  sum=sum+temp;
				  out.println("<td><b>"+s111+"</b></td>");
				  }
					
					  else 
					  {
					   s=rs.getString(x);
					                 out.println("<td><b>"+s+"</b></td>");
									 }
						
					}
					  
                   
	           out.println("<td><a href=deletecart.jsp?d="+pid+">delete<img src='deleteicon.jpg' width=50 height=50></img><a/></td>");
                
            
                
            
          out.println("</tr>");
        }
		session.setAttribute("gst",mgsttemp);
		out.println("</table><br>");
		out.println("<a href=payments.jsp?total="+temp+"&no="+count+"&gst="+mgsttemp+"&pd="+pdesc+"><p style=\"color:green;font-size:22px\">Proceed to Payment</p></a>");
		out.println("<a href=deleteall.jsp><p style=\"color:red;font-size:20px\">Delete all from cart</p<a>");
		out.println("<h3  align=center ><h1 style='color:black'> Total items="+count+" Total Cart Value="+temp+"</h1></h3>");
//		out.println("<h3  align=center > Total items="+count+" Total Cart Value GST="+mgsttemp+"%</h3>");
		out.println("</table><br></body></html>");
        rs.close();
		stmt.close();
		con.close();
		
    
}
  catch(Exception e)
    {
        
      out.println(e);
    }
%>

             
              <div class=" col-md-12 col-sm-6 col-xs-6" >
                
                  
                </div>
                </div>
            <!-- /.col -->
        </div>
      
    </div>
    <!-- /.container -->
    <div class="col-md-12 download-app-box text-center">

        <span class="glyphicon glyphicon-download-alt"></span>Download Our Android App and Get 10% additional Off on all Products . <a href="#" class="btn btn-danger btn-lg">DOWNLOAD  NOW</a>

    </div>

   
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
