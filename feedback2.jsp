<%@page import="dbcon.dbconnection"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		<link href="style1.css" rel="stylesheet" type="text/css" />
  <!-- Styles -->
  <link href="css/stylenew.css" rel="stylesheet">
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
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
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form method="POST" class="search_form">
						<input type="text" class="input-block-level search-query" Placeholder="eg. T-sirt">
					</form>
				</div>
				<div class="span8"></div>
		  </div>
		</div>
		<div id="wrapper" class="container"></br>
<section class="navbar main-menu">
  <div class="navbar-inner main-menu"> <a href="index.jsp" class="logo pull-left">
    <h2  class="site_logo">Online Boutique</h2>
    </a>
      <nav id="menu" class="pull-right">
        <ul>
          <li><a href="epwguest.jsp">Change Profile</a></li>
          <li class="active"><a href="Showmycart.jsp" >View my Cart</a></li>
          <li><a href="trackorder.jsp" >Track Order</a></li>
          <li><a href="index.jsp" >Signout</a></li>
        </ul>
      </nav>
  </div>
</section>
<section class="header_text sub">
			<img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >
				<h4>&nbsp;</h4>
		  </section>


			<section class="main-content">
			 
                <table width="81%" height="242" border="0" align="center">
                  <caption>
                  <div style="height:50px">
                    <h4 class="title"><span class="text"><strong>Feedback</strong></span></h4>
                  </div>
                  </caption>
                  <tr>
                    <td scope="col"></label>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <div align="center">      <%  
  String e=(String)session.getAttribute("emailid");
	String n=(String)session.getAttribute("fname");
		String a=(String)session.getAttribute("addr");
			String m=(String)session.getAttribute("mobile");
  
  %>
                        <form id="form" method="post" action="">
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
                        </form>
                      </div></td>
                  </tr>
                    </td>
          </tr>
                  </table>
                </form>
		        
                <div align="center">
                 
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
                </div>
                <div align="center"></div>
			  
                </table>
		   
			  <div align="center"></div>
		  </section>
            
<section id="footer-bar">
				<div class="row"></div>	
		  </section>
			<section id="copyright">
				<span>Online boutique</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script src="themes/js/jquery.flexslider-min.js"></script>
		<script type="text/javascript">
			$(function() {
				$(document).ready(function() {
					$('.flexslider').flexslider({
						animation: "fade",
						slideshowSpeed: 4000,
						animationSpeed: 600,
						controlNav: false,
						directionNav: true,
						controlsContainer: ".flex-container" // the container that holds the flexslider
					});
				});
			});
		</script>
    </body>
</html>
