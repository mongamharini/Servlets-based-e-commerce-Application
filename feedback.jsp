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
      <link href="stylenew.css" rel="stylesheet">
    <style type="text/css">
<!--
.style8 {font-size: 12px}
-->
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

              <form name="form1" method="post" action="">
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <div align="center">
                  <%  
  String e=(String)session.getAttribute("emailid");
	String n=(String)session.getAttribute("fname");
		String a=(String)session.getAttribute("addr");
			String m=(String)session.getAttribute("mobile");
  
  %>
                  <table width="693" border="0" align="center">
                    <tr>
                      <td width="226"><div align="center"><span class="style8">Full Name </span></div></td>
                      <td width="457"><label>
                        <input type="text" name="name" value="<%out.println(n);%>"/>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <td height="28"><div align="center"><span class="style8">Feedback</span></div></td>
                      <td><label>
                        <input type="text" name="feedback" required="required" />
                      </label></td>
                    </tr>
                    <tr>
                      <td><div align="center"><span class="style8">Phone No </span></div></td>
                      <td><label>
                        <input name="phoneno" type="text" maxlength="10"  value="<%out.println(m);%>"/>
                      </label></td>
                    </tr>
                    <tr>
                      <td><div align="center"><span class="style8">E-Mail</span></div></td>
                      <td><input type="email" name="emailid"  value="<%out.println(e);%>"/></td>
                    </tr>
                    <tr>
                      <td colspan="2"><div align="center">Rate This </div>
                          <div class="stars">
                            <input name="star" type="radio" class="star-1" id="star-6" value="1" />
                            <label class="star-1" for="star-6">1</label>
                            <input name="star" type="radio" class="star-2" id="star-7" value="2" />
                            <label class="star-2" for="star-7">2</label>
                            <input name="star" type="radio" class="star-3" id="star-8" value="3" />
                            <label class="star-3" for="star-8">3</label>
                            <input name="star" type="radio" class="star-4" id="star-9" value="4" />
                            <label class="star-4" for="star-9">4</label>
                            <input name="star" type="radio" class="star-5" id="star-10" value="5" />
                            <label class="star-5" for="star-10">5</label>
                            <span></span> </div>
                          
                      </td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td><div align="left">
                          <input type="submit" name="Submit" value="Submit" />
                          <input type="reset" name="Submit3" value="Reset" />
                      </div></td>
                    </tr>
                  </table>
               
                  </p>
</div>
                            </form>
                            
                            
                  <%


if (request.getParameter("Submit")!=null)
{

try
{

	String fname=request.getParameter("name");
	String feedback=request.getParameter("feedback");
	String email=request.getParameter("phoneno");
	String phno=request.getParameter("emailid");
	String rating=request.getParameter("star");


 
		Connection cn = dbconnection.getConnection(); 
	
		//Statement st=c.createStatement();
		PreparedStatement pstmt;
			 
			pstmt=cn.prepareStatement("insert into feedback values(?,?,?,?,?)");
				
			pstmt.setString(1,fname);
			pstmt.setString(2,feedback);
			pstmt.setString(3,email);
			pstmt.setString(4,phno);
			pstmt.setString(5,rating);
			pstmt.executeUpdate();
			
			out.println("<h1>Submitted successfully </h1>");
		}

       catch(Exception ex)
             {
             		out.print(ex);
             	
             }
      }  

%>
                  </p>
                
                            
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
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec nisl odio. Mauris vehicula at nunc id posuere. Curabitur nec nisl odio. Mauris vehicula at nunc id posuere. 
                </p>
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
