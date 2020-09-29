<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Welcome to PCS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--<script type="text/javascript" src="js/userPageFunctions.js"></script>-->
        <!--<link rel="stylesheet" href="resources/user.css" media="all">--> 
        <!--bootstrap-->
        <!--<link rel="stylesheet" href="resources/bootstrap.min.css" media="all">-->
        <!--<script src="resources/bootstrap.min.js" language="text/javascript"></script>-->
        <!--jquery-->
        <!--<script src="resources/jquery-1.8.3.min.js" language="text/javascript"></script>-->
        <!--<script src="resources/jquery-3.3.1.min.js" language="text/javascript"></script>-->
        <!--custom css-->
        <!--<link rel="stylesheet" href="resources/p.css" media="all">-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" media="all">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <!--        <div class="row">
                    <div class="col-md-12">
                        <marquee loop="100" behaviour="scroll" bgcolor="yellow" style="color:red;"> 
                            To use our services you must login to your account 
                        </marquee> 
                    </div>
                </div>	-->
        <div class="row">
            <div id="pcs" class="col-md-12 col-lg-12 col-xs-12"> 
                <img src="images/pcs.jpg" style="border:2px solid black;height:120px;width:1370px"></img>
            </div>	
            <div class="col-lg-12" style="width: 1400px">
                <ul class="nav nav-tabs nav-justified"style="background-color:mediumvioletred;box-shadow: 0 7px 5px -6px black;">
                    <li><a href="#" style="font-size:23px;color:black;font-weight:bold;" onclick="home()" title="To explore pcs homepage click on home tab" data-toggle="tooltip">Home <i class="fa fa-home fa-lg "></i></a></li>
                    <li><a href="userBookings?userId=${userId}" style="font-size:23px;color:black;font-weight:bold;" onclick="booking()" title="To see previous booked services click on bookings" data-toggle="tooltip">booking <i class="fa fa-check-circle"></i></a></li>
                    <li><a href="#" style="font-size:23px;color:black;font-weight:bold;" onclick="service()" title="To explore our services click on services tab" data-toggle="tooltip">services <i class="fa fa-globe"></i></a></li>
                    <li><a href="#" style="font-size:23px;color:black;font-weight:bold;" onclick="downloadapp()" title="To download our pcs app click on download tab" data-toggle="tooltip">Download App <i class="fa fa-download"></i></a></li>
                    <li><a href="#" style="font-size:23px;color:black;font-weight:bold;" onclick="learn()" title="To know more about our website click on learn more" data-toggle="tooltip">Learn more   <i class="fa fa-angle-double-right"> </i></a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" id="menu1" data-toggle="dropdown">
                            <b style="font-size:20px;color:black;">
                                <i class="fa fa-cog fa-spin fa-lg fa-fw"></i>Settings</b>
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1" class="nav nav-tabs nav-justified"style="background-color:mediumvioletred;box-shadow: 0 8px 5px -6px black;width:226px">
                            <li><a href="showUserEditPage?userId=${sessionScope.userId}"><big style="font-weight:bold;">${userName} (Edit)</big></a></li>
                            <li><a href="html/terms.html"><big style="font-weight:bold;">About</big></a></li>
                            <li><a href="login.jsp"><big style="font-weight:bold;">Logout&nbsp&nbsp<i class="fa fa-power-off"></i></big></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!--Welcome-->
    </body>
</html>
