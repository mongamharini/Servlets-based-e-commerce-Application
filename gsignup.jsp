<%@page import="dbcon.dbconnection"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>


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
                    <li><a href="glogin.jsp">Track Order</a></li>
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
               
            
            <div class="col-md-3 text-center">
                <div class=" col-md-12 col-sm-6 col-xs-6" >
                  
                </div>
                <div class=" col-md-12 col-sm-6 col-xs-6">
                    <form id="form1" name="form1" method="post" action="">
                  <table width="93%" border="0px" align="center" bgcolor="#FFFFFF">
                    <tr>
                      <td colspan="2"><h4 class="title"><span class="text"><strong>Guest</strong> signup</span></h4></td>
                      <td width="198" rowspan="10"><img src="signup.png" width="200" height="200" /></td>
                    </tr>
                    <tr>
                      <td width="139"><span class="style1">Email-ID </span></td>
                    <td width="277" align="left"><label>
                  <div align="left">
                            <input name="t1" type="email" id="t1" required="required" />
                          </div>
                      </label></td>
                    </tr>
                    <tr>
                      <td><span class="style1">Password</span></td>
                      <td><label>
                      <input type="password" name="t2"    required="required" id="t10" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
                      </label></td>
                    </tr>
                    <tr>
                      <td><span class="style1">Name</span></td>
                      <td><label>
                        <input name="t3" type="text" id="t3" title="letters only" pattern="[A-Za-z]+" required="required" />
                      </label></td>
                    </tr>
                    <tr>
                      <td><span class="style1">Gender</span></td>
                      <td><label>
                        <select name="t4" id="t4">
                          <option value="Male">Male</option>
                          <option value="Female">Female</option>
                          <option value="Others">Others</option>
                        </select>
                      </label></td>
                    </tr>
                    <tr>
                      <td><span class="style1">Date of birth </span></td>
                      <td><div ng-app="myApp" ng-controller="myCntrl">
                          <input name="t5"  id="t4" type="date" />
                         
                    </tr>
                    <tr>
                      <td><span class="style1">Address</span></td>
                      <td><label>
                        <textarea name="t6" id="t6"></textarea>
                      </label></td>
                    </tr>
                    <tr>
                      <td height="28"><span class="style1">Phone</span></td>
                      <td><label>
                        <input name="t7" id="t7" title="only nos should be 10 digits" maxlength="10"   pattern="^\d{10}$" required="required"/>
                      </label></td>
                    </tr>
                    <tr>
                      <td height="47" colspan="2"><label>
                          <div align="center"></div>
                        </label>
                        <input type="submit" name="Submit" value="Submit" />
                        <input type="reset" name="Submit2" value="Reset" /></td>
                    </tr>
                    <tr>
                      <td height="47" colspan="2"><a href="glogin.jsp" class="style2">Already have an account??</a></td>
                    </tr>
                  </table>
                </form>
                
                  <%
   
if(request.getParameter("Submit")!= null)
	
   	{
try
{

   		
	  Connection con=dbconnection.getConnection();  
       	 String t1=request.getParameter("t1").trim();
		 String t2=request.getParameter("t2").trim();
		 String t3=request.getParameter("t3").trim();
	     String t4=request.getParameter("t4").trim();
         String t5=request.getParameter("t5").trim();
         String t6=request.getParameter("t6").trim();
         String t7=request.getParameter("t7").trim();
   /*     
        Statement stmt=con.createStatement();
		 int count=0;
	     ResultSet rs;
		 rs=stmt.executeQuery("select * from signup where emailid="+"'"+t1+"'");

      while(rs.next())
      {
			count++;
		}

			 if(count==0)
	  {*/
       

		
       
        PreparedStatement pstmt=con.prepareStatement("insert into signup values(?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
            pstmt.setString(6,t6);
            pstmt.setString(7,t7);
           
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("<h1>SUCCESFULLY REGISTERED</h1>");
            //response.sendRedirect("http://localhost:8084/Quickmail/succsignup.html");
   /* }
	
	else
		{
			out.println("<h1>User already Registrered with us ....</h1>");
		}*/
}

    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	}
%>
                </div>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    
               
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
   
        <div class="row">
            <div class="col-md-4">
                <strong>Send a Quick Query </strong>
                <hr>
                <form>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Name">
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Email address">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <textarea name="message" id="message" required="required" class="form-control" rows="3" placeholder="Message"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Submit Request</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-md-4">
                <strong>Our Location</strong>
                <hr>
                <p>
                     234, New york Street,<br />
                                    Just Location, USA<br />
                    Call: +09-456-567-890<br>
                    Email: info@yourdomain.com<br>
                </p>

                2014 www.yourdomain.com | All Right Reserved
            </div>
            <div class="col-md-4 social-box">
                <strong>We are Social </strong>
                <hr>
                <a href="#"><i class="fa fa-facebook-square fa-3x "></i></a>
                <a href="#"><i class="fa fa-twitter-square fa-3x "></i></a>
                <a href="#"><i class="fa fa-google-plus-square fa-3x c"></i></a>
                <a href="#"><i class="fa fa-linkedin-square fa-3x "></i></a>
                <a href="#"><i class="fa fa-pinterest-square fa-3x "></i></a>
              
            </div>
        </div>
        <hr>
    </div>
    <!-- /.col -->
    <div class="col-md-12 end-box ">
        &copy; 2021 |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |    &copy; 2021 |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |    &copy; 2021 |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |    &copy; 2021 |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |    &copy; 2021 |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved |  &copy; 2021 | &nbsp; All Rights Reserved 
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
