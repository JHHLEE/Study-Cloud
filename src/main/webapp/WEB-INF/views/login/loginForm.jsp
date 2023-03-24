<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>로그인 페이지</title>

<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/assets/css/normalize.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/assets/css/fontello.css">
<link href="<%=request.getContextPath() %>/resources/sneat/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/sneat/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/sneat/assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/assets/css/bootstrap-select.min.css"> 
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/assets/css/price-range.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/assets/css/owl.carousel.css">  
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/assets/css/owl.theme.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/assets/css/owl.transitions.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/assets/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/sneat/assets/css/responsive.css">
</head>
<body onload="document.f.id.focus();">
 <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <!-- Body content -->

   
    <div class="header-connect">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-sm-8  col-xs-12">
                    <div class="header-half header-call">
                        <p>
                            <span><i class="pe-7s-call"></i> +1 234 567 7890</span>
                            <span><i class="pe-7s-mail"></i> your@company.com</span>
                        </p>
                    </div>
                </div>
                <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
                    <div class="header-half header-social">
                        <ul class="list-inline">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-vine"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>            
    <!--End top header -->

    <nav class="navbar navbar-default ">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<%=request.getContextPath() %>/"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/logo.png" alt=""></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
                        <button class="navbar-btn nav-button wow bounceInRight login" onclick=" location.href='login' " data-wow-delay="0.45s">로그인</button>
                        <button class="navbar-btn nav-button wow fadeInRight" onclick=" location.href='join' " data-wow-delay="0.48s">회원가입</button>
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li class="dropdown ymm-sw " data-wow-delay="0.1s"><a class="" href="notice.jsp">notice</a></li>
						<li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="<%=request.getContextPath() %>/contact">contact</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.3s"><a class="" href="chat.jsp">chat</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <!-- End of nav bar -->

    <div class="page-head"> 
        <div class="container">
            <div class="row">
                <div class="page-head-content">
                    <h1 class="page-title">Home New account / Sign in </h1>               
                </div>
            </div>
        </div>
    </div>
    <!-- End page header -->


    <!-- register-area -->
    <div class="register-area" style="background-color: rgb(249, 249, 249);">
        <div class="container">

            <div class="col-md-6 just-center">
                <div class="box-for overflow">                         
                    <div class="col-md-12 col-xs-12 login-blocks">
                     	<c:url value="/login" var="loginUrl" />
						<form:form name="f" action="${loginUrl}" method="POST">
						    
						    
						    
						    <c:if test="${param.logout != null}">
						        <p>로그아웃 하였습니다.</p>
						    </c:if>
						    <div class="form-group">
						        <label for="username">아이디</label>
						        <input type="text" class="form-control" id="id" name="id" />
						        <c:if test="${param.error != null}">
						        <p>아이디와 비밀번호가 잘못되었습니다.</p>
						    </c:if>
						    </div>
						    <div class="form-group">
						        <label for="password">비밀번호</label>
						        <input type="password" id="password" class="form-control" name="password"/>
						    </div>
						    <%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
						    <button type="submit" class="btn btn-default">로그인</button>
						</form:form>
						<br>
                        
                        <h2>Social login :  </h2> 
                        
                        <p>
                        <a class="login-social" href="#"><i class="fa fa-facebook"></i>&nbsp;Facebook</a> 
                        <a class="login-social" href="#"><i class="fa fa-google-plus"></i>&nbsp;Gmail</a> 
                        <a class="login-social" href="#"><i class="fa fa-twitter"></i>&nbsp;Twitter</a>  
                        </p> 
                    </div>
                    
                </div>
            </div>

        </div>
    </div>      

      <!-- Footer area-->
    <div class="footer-area">

        <div class=" footer">
            <div class="container">
                <div class="row">

                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer">
                            <h4>About us </h4>
                            <div class="footer-title-line"></div>

                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/footer-logo.png" alt="" class="wow pulse" data-wow-delay="1s">
                            <p>Lorem ipsum dolor cum necessitatibus su quisquam molestias. Vel unde, blanditiis.</p>
                            <ul class="footer-adress">
                                <li><i class="pe-7s-map-marker strong"> </i> 9089 your adress her</li>
                                <li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
                                <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer">
                            <h4>Quick links </h4>
                            <div class="footer-title-line"></div>
                            <ul class="footer-menu">
                                <li><a href="properties.html">Properties</a>  </li> 
                                <li><a href="#">Services</a>  </li> 
                                <li><a href="submit-property.html">Submit property </a></li> 
                                <li><a href="contact.html">Contact us</a></li> 
                                <li><a href="faq.html">fqa</a>  </li> 
                                <li><a href="faq.html">Terms </a>  </li> 
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer">
                            <h4>Last News</h4>
                            <div class="footer-title-line"></div>
                            <ul class="footer-blog">
                                <li>
                                    <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                        <a href="single.html">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-proerty-2.jpg">
                                        </a>
                                        <span class="blg-date">12-12-2016</span>

                                    </div>
                                    <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                        <h6> <a href="single.html">Add news functions </a></h6> 
                                        <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                    </div>
                                </li> 

                                <li>
                                    <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                        <a href="single.html">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-proerty-2.jpg">
                                        </a>
                                        <span class="blg-date">12-12-2016</span>

                                    </div>
                                    <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                        <h6> <a href="single.html">Add news functions </a></h6> 
                                        <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                    </div>
                                </li> 

                                <li>
                                    <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                        <a href="single.html">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-proerty-2.jpg">
                                        </a>
                                        <span class="blg-date">12-12-2016</span>

                                    </div>
                                    <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                        <h6> <a href="single.html">Add news functions </a></h6> 
                                        <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                    </div>
                                </li> 


                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer news-letter">
                            <h4>Stay in touch</h4>
                            <div class="footer-title-line"></div>
                            <p>Lorem ipsum dolor sit amet, nulla  suscipit similique quisquam molestias. Vel unde, blanditiis.</p>

                            <form>
                                <div class="input-group">
                                    <input class="form-control" type="text" placeholder="E-mail ... ">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </form> 

                            <div class="social pull-right"> 
                                <ul>
                                    <li><a class="wow fadeInUp animated" href="https://twitter.com/kimarotec"><i class="fa fa-twitter"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://www.facebook.com/kimarotec" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li>
                                </ul> 
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="footer-copy text-center">
            <div class="container">
                <div class="row">
                    <div class="pull-left">
                        <span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a> , All rights reserved 2016  </span> 
                    </div> 
                    <div class="bottom-menu pull-right"> 
                        <ul> 
                            <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a></li>
                            <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">Property</a></li>
                            <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a></li>
                            <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a></li>
                        </ul> 
                    </div>
                </div>
            </div>
        </div>

    </div>

     <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/modernizr-2.6.2.min.js"></script>

    <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/jquery-1.10.2.min.js"></script> 
    <script src="<%=request.getContextPath() %>/resources/sneat/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/bootstrap-select.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/bootstrap-hover-dropdown.js"></script>

    <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/easypiechart.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/jquery.easypiechart.min.js"></script>

    <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/wow.js"></script>

    <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/icheck.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/price-range.js"></script>

    <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/main.js"></script>

</body>
</html>