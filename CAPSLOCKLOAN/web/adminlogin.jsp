<html lang="en">
    <%@page import="com.Model.JPerson"%>
    <%@page import="com.Model.JPayment"%>
    <%@page import="com.Model.JLoan"%>
    <%@page import="javax.servlet.http.HttpSession"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.util.Date"%>
    <%@page import="java.text.*"%>
    <%@page import="java.text.DecimalFormat;"%>
    <head>
	<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <link rel="shortcut icon" href="images/icon.ico">
        <title>CAPSLOCKLOAN</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" href="styles/layout2.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component2.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,700' rel='stylesheet' type='text/css' />
        <script type="text/javascript" src="js/modernizr.custom.79639.js"></script> 
        <script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Economica:700,400italic' rel='stylesheet' type='text/css'>
        <noscript>
                <link rel="stylesheet" type="text/css" href="css/nojs.css" />
        </noscript>
    </head>
    <body>
        
<div class="wrapper row1">
  <header id="header" class="clear">
    <hgroup>
      <h1><img src="images/CapsLockLogo-resize.png" alt="logo"><a href="index.jsp">&nbsp;<different>C </different><span>A P S </span><different>L</different><span> O C K </span><different>L </different><span>O A N</span></a></h1>
    </hgroup>
    <div class="fl_right">
    </div>
  </header>
</div>
        
 <!-- content -->
<div class="wrapper row3">
  <div id="footer" class="clear">    
        <form action="LoginAdmin" method="post">
            <h7>Username: &nbsp;</h7><input class="textbox" type="text" name="email">
            <br>
            <h7>Password: &nbsp;</h7><input class="textbox" input type="password" name="password">
            <br>
            <button class="btn btn-7 btn-7h">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
        </form>
<!-- Footer -->
  </div>
</div>
        <%@include file="footer.jsp"%>
    </body>
</html>