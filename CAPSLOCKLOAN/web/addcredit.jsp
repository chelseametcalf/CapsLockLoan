<!DOCTYPE html>
<html lang="en">
    <%@include file="header.jsp"%>
    <head>
	<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <link rel="shortcut icon" href="images/icon.ico">
        <title>CAPSLOCKLOAN</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" href="styles/layout.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style2.css" />
        <link rel="stylesheet" type="text/css" href="cssHover/normalize.css" />
	<link rel="stylesheet" type="text/css" href="cssHover/common.css" />
        <link rel="stylesheet" type="text/css" href="cssHover/style.css" />
        <link rel="stylesheet" type="text/css" href="css/component3.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,700' rel='stylesheet' type='text/css' />
        <script type="text/javascript" src="js/modernizr.custom.79639.js"></script> 
        <script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Economica:700,400italic' rel='stylesheet' type='text/css'>
        <noscript>
                <link rel="stylesheet" type="text/css" href="css/nojs.css" />
        </noscript>
    </head>
    <body>
<!-- content -->

    <!-- content body -->
    <!-- ########################################################################################## --> 
    <div class="wrapper row3">
  <div id="footer" class="clear">
      <header id="header" class="clear">
        <hgroup>
            <input type="submit" class="fsSubmitButton2" value="<- Summary" onclick="window.location='summary.jsp';">
            <br><br>
            <h3>Add Credit</h3>
        </hgroup>
      </header>
      
    <script language="JavaScript" src="http://j.maxmind.com/app/geoip.js"></script>
    Country Name:
    <script language="JavaScript">
        document.write(geoip_country_name());   
    </script>
      
      <form action="SaveCredit" method="post">
        <table border="0" cellpadding="10">
            <tr><td><h8>Amount</h8></td><td><input class="textbox" type="text" name="Amount"></td></tr>
            <tr><td><label>
                <select id="PaymentMethod" name="PaymentMethod">
                <option value="Credit">Credit</option>
                <option value="PayPal">PayPal</option>
                </select>
            </label></td></tr>
        </table>
            <button class="btn btn-8 btn-8h">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Save &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
      </form>
    
  </div>
</div>

        <%@include file="footer.jsp"%>
    </body>
    
        <script language="JavaScript">
        if(geoip_country_name() != 'United States')
        {
            alert("This function is not available outside the United States");
            history.go(-1);
        };
        
    </script>
    
</html>