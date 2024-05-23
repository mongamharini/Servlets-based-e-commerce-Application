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
-->
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
                <a class="navbar-brand" href="#"><strong>FASHION </strong> HUB</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                <ul class="nav navbar-nav navbar-right">
                   <li><a href="shop.jsp">SHOP</a></li>
                    <li><a href="glogin.jsp">Guest Login</a></li>
					  <li><a href="alogin.jsp">Admin Login</a></li>
                    <li><a href="gsignup.jsp">Guest Signup</a></li>

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
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" placeholder="Enter Keyword Here ..." class="form-control">
                    </div>
                    &nbsp; 
                    <button type="submit" class="btn btn-primary">Search</button>
                </form>
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
              
               
                </div>
                
                        <%   
                                          
try
{
   
	  Connection con=dbconnection.getConnection();
      Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 
       
 
	 
	   String s1="select pid as ProductID,pdesc as ProductDescription,rate as Rate,pic as Photo,gst as GST from product where Category='WOMENS'";
	
     rs = stmt.executeQuery(s1);
      
		//out.println("<body><h1><div align=center><strong><span class=style1>DETAILS</span></strong></div></h1></body>");
      
        out.println("<table border=5 align=center width=150% bordercolor=silver id=customers ><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n+1;i++)
        {
		    if(i<=n)
            out.println("<td align=center><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			else
			out.println("<td align=center><b><font size=5>ADD TO CART</font></b></td>");
        }
        String id="",cat="",gst="",rate="",s="";
        while (rs.next())
        {
            out.println("<tr align=center>");
            
                for(int x=1;x<=n;x++)
                {
        	         s=rs.getString(x);
					  if(x==1)
					 {
       // out.println("<td><b><img src="+s+" width=100 height=100></img></b></td>");
	   id=s;
	     out.println("<td><b>"+id+"</b></td>");
	//	 gst=s;
					 }
					else if(x==2)
					 {
					// cat=s;
       // out.println("<td><b><img src="+s+" width=100 height=100></img></b></td>");
	    out.println("<td><b>"+s+"</b></td>");
					
					 }
					 	 	else if(x==4)
					 {
					 rate=s;
            out.println("<td><b><img src="+s+" width=100 height=100></img></b></td>");
					 }
					 	else if(x==5)
					 {
					 gst=s;
              out.println("<td><b>"+s+"</b></td>");
					 }
					  else
					  {
					                 out.println("<td><b>"+s+"</b></td>");
					  }
					 
					  
                 }   
                     out.println("<td><b><a href=addcart.jsp?d="+id+"&c=Buckles"+"&gst="+gst+"&rate="+rate+"></b> <img src='cart.png' width=50 height=50 ></img><a/></td>");
                
            
         
                
            
          out.println("</tr>");
        }
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
            <!-- /.col -->
            
          
            <!-- /.col -->
        </div>
        <!-- /.row -->
     
               
                <!-- /.div -->
             
                <!-- /.row -->
               
                <!-- /.row -->
              
                <!-- /.row -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
    

    <!--Footer -->
  
    <!-- /.col -->
 
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
