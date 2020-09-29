<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to PCS</title>
        <!--bootstrap-->
        <script src="resources/bootstrap.min.js" language="text/javascript"></script>
        <link rel="stylesheet" href="resources/bootstrap.min.css" media="all">
        <!--jquery-->
        <script src="resources/jquery-1.8.3.min.js" language="text/javascript"></script>
        <script src="resources/jquery.min.js" language="text/javascript"></script>
        <!--custom css-->
        <link rel="stylesheet" href="resources/p.css" media="all">
        <script>
            function mypass()
            {
                var x = document.getElementById("myInput");
                if (x.type == "password")
                {
                    x.type = "text";
                } else
                {
                    x.type = "password";
                }
            }
        </script>
        <style>
            #sub1
            {	
                background: linear-gradient(to bottom ,pink,white); 
            }
        </style>
    </head>
    <body style="background-image:url(images/c.jpg);">
        <div class="row">
            <div class="col-md-12">
                <marquee loop="100" behaviour="scroll" bgcolor="yellow" style="color:red;"> 
                    To use our services you must login to your account 
                </marquee> 
            </div>
        </div>	
        <div class="row">
            <div id="pcs" class="col-md-12 col-lg-12 col-xs-12"> 
                <img src="images/pcs.jpg" style="border:2px solid black;height:120px;width:1350px"></img>
            </div>			
        </div>
        <div class="row">
            <br><br><br>
            <center>
                <div style="font-size:20px;text-align:center;font-weight:bold;text-shadow:1px 1px 1px white;font-family:oldenglish;color:red;">
                    ${statusMsg}
                </div>
                <div class="container">
                    <div class="jumbotron" style="height:70%;width:65%;border:2px solid slateblue;background-image:url(images/user.jpg);background-position:center;background-size:cover;border-radius:15px;">
                        <form name="login" method="post" action="user-login">
                            <div class="form-group">
                                <div style="font-size:40px;color:red;font-weight:bold;font-family:elephant;text-shadow:2px 2px 2px black;">
                                    <center> Sign in </center>
                                </div>
                                <center>
                                    <br><br>
                                    <label class="control-label " style="text-align:center;"></label>
                                    <input name="username" type="textbox" class="form-control" required="true" name="t1"  style="color: black;font-size:17px;background-color:lightcyan;width:350px;height:38px;text-align:center;border-bottom:10px red;border-radius:15px;" placeholder="Email id"> 
                                    <br>
                                    <label class="control-label " style="text-align:right;"> </label>
                                    <input name="password" type="password" class="form-control"  id="myInput" required="true" style="font-size:17px;background-color:lightcyan;width:350px;height:38px;text-align:center;border-bottom:10px red;border-radius:15px;" placeholder="Password"><br>
                                    <input type="checkbox" value="ggg" onclick="mypass()" name="checkpass" style="height:17px;width:17px;"> Show Password
                                    <br>
                                    <br> 
                                    <div id="but1p">
                                        <input type="submit" class=" btn btn-default" id="but1" value="Login" name="b1" >
                                    </div>
                                </center>
                            </div><!-- closing form-group -->
                        </form>
                    </div><!-- closing jumbotron-->
                </div><!-- closing container-->
                <a href="registration.htm" > <h1 style="color:darkgreen;"> Create new account </h1> </a>
                <br><br>
            </center>
        </div><br>
        <div class="col-lg-12 col-sm-12" id="sub1" ><br>
            <div class="col-lg-3" style="font-size:15px;border-right-style:groove;text-align:center;">
                <center>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="A/c repairings">  A/c Repair  </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="washing machine repair"> Washing Machine Repair </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Geyser repair"> Geyser Repair  </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="laptop/computer repair"> laptop/computer Repair </a>
                    <br><br>
                </center>
            </div>
            <div class="col-lg-3" style="font-size:15px;border-right-style:groove;text-align:center;">
                <center>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Full home cleaning (had lot of workers)"> Full home cleaning </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Bathroom cleaning (for neat look)"> Bathroom cleaning </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Water-tank cleaning (its come under deep cleaning)"> Water-tank cleaning </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Septic tank cleaning(limited workers)"> Septic-tank cleaning </a>
                    <br><br>
                </center>
            </div>
            <div class="col-lg-3" style="font-size:15px;border-right-style:groove;text-align:center;">
                <center>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Electricians for home applians"> Electrician </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;"title="Carpenters (all types of wood works)"> Carpenter </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Plumbing workers"> Plumber </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Painters for home applians"> Painter </a>
                    <br><br>
                </center>
            </div>
            <div class="col-lg-3" style="font-size:15px;border-right-style:groove;text-align:center;">
                <center>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Dth connections(sun direct,dish,airtel..etc)"> Dth connection </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Drivers for any vehicle"> Driver </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Bike/car wash (home service)"> Bike/car wash </a>
                    <br><br>
                    <a href="#" onclick="service()" data-toggle="tooltip" style="color:black;" title="Software consultants for gadjets fixing"> Software consultant </a>
                    <br><br>
                </center>
            </div>
        </div>
    </body>
</html>





