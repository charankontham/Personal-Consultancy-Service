<%-- 
    Document   : newjsp
    Created on : 17 Feb, 2018, 1:02:00 AM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>   
    <head>
        <link rel="stylesheet" href="bootstrap.min.css" media="all">
        <script type="text/javascript">
//            $(document).ready(function () {

//            });
        </script>
        <style>
            .styled-select {
                background: url(images/15xvbd5.jpg) no-repeat 96% 0;
                height: 29px;
                overflow: hidden;
                width: 240px;
            }

            .styled-select select {
                background: transparent;
                border: none;
                font-size: 14px;
                height: 29px;
                padding: 5px; /* If you add too much padding here, the options won't show in IE */
                width: 268px;
            }

            .styled-select.slate {
                background: url(images/2e3ybe1.jpg) no-repeat right center;
                height: 34px;
                width: 240px;
            }

            .styled-select.slate select {
                border: 1px solid #ccc;
                font-size: 16px;
                height: 34px;
                width: 268px;
            }

            /* -------------------- Rounded Corners */
            .rounded {
                -webkit-border-radius: 20px;
                -moz-border-radius: 20px;
                border-radius: 20px;
            }

            .semi-square {
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
                border-radius: 5px;
            }

            /* -------------------- Colors: Background */
            .slate   { background-color: #ddd; }
            .green   { background-color: #779126; }
            .blue    { background-color: #3b8ec2; }
            .yellow  { background-color: #eec111; }
            .black   { background-color: #000; }

            /* -------------------- Colors: Text */
            .slate select   { color: #000; }
            .green select   { color: #fff; }
            .blue select    { color: #fff; }
            .yellow select  { color: #000; }
            .black select   { color: #fff; }


            /* -------------------- Select Box Styles: danielneumann.com Method */
            /* -------------------- Source: http://danielneumann.com/blog/how-to-style-dropdown-with-css-only/ */
            #mainselection select {
                border: 0;
                color: #EEE;
                background: transparent;
                font-size: 20px;
                font-weight: bold;
                padding: 2px 10px;
                width: 378px;
                *width: 350px;
                *background: #58B14C;
                -webkit-appearance: none;
            }

            #mainselection {
                overflow:hidden;
                width:350px;
                -moz-border-radius: 9px 9px 9px 9px;
                -webkit-border-radius: 9px 9px 9px 9px;
                border-radius: 9px 9px 9px 9px;
                box-shadow: 1px 1px 11px #330033;
                background: #58B14C url(images/15xvbd5.jpg) no-repeat scroll 319px center;
            }


            /* -------------------- Select Box Styles: stackoverflow.com Method */
            /* -------------------- Source: http://stackoverflow.com/a/5809186 */
            select#soflow, select#soflow-color {
                -webkit-appearance: button;
                -webkit-border-radius: 2px;
                -webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);
                -webkit-padding-end: 20px;
                -webkit-padding-start: 2px;
                -webkit-user-select: none;
                background-image: url(images/15xvbd5.jpg), -webkit-linear-gradient(#FAFAFA, #F4F4F4 40%, #E5E5E5);
                background-position: 97% center;
                background-repeat: no-repeat;
                border: 1px solid #AAA;
                color: #555;
                font-size: inherit;
                margin: 20px;
                overflow: hidden;
                padding: 5px 10px;
                text-overflow: ellipsis;
                white-space: nowrap;
                width: 300px;
            }

            select#soflow-color {
                color: #fff;
                background-image: url(images/15xvbd5.jpg), -webkit-linear-gradient(#779126, #779126 40%, #779126);
                background-color: #779126;
                -webkit-border-radius: 20px;
                -moz-border-radius: 20px;
                border-radius: 20px;
                padding-left: 15px;
            }
            ::placeholder
            { 
                color:white;
                font-size:20px;
            }
            #overlay1 {
                position: fixed;
                display: none;
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background-color: rgba(0,0,0,0.5);
                z-index: 2;
                cursor: pointer;
            }			
            #text1{
                position: absolute;
                top: 50%;
                left: 50%;
                font-size: 50px;
                color: white;
                transform: translate(-50%,-50%);
                -ms-transform: translate(-50%,-50%);
            }
            #grad1
            { background: linear-gradient(to bottom right,lightpink ,lightblue,white,lightblue,lightcyan,lightblue, white,lightblue,lightpink);  last) }
            #grad2
            {background: linear-gradient(to bottom,lightpink ,white,lightpink); last }
            #grad3
            {background: linear-gradient(to bottom,lightpink,lightyellow );  last) }
            #grad4{  background: linear-gradient(to bottom right,lightgreen,white );  last }
            #grad5{  background: linear-gradient(to bottom right,chocolate,white); }
            #grad6{background: linear-gradient(to bottom right,lightgreen,lightyellow,pink); }
            #structurebg{ background: linear-gradient(to bottom right,red,pink,red,pink,red,pink);}
        </style>
        <script type="text/javascript" src="js/userPageFunctions.js"></script>
        <link rel="stylesheet" href="resources/user.css" media="all"> 
        <!--bootstrap-->
        <link rel="stylesheet" href="resources/bootstrap.min.css" media="all">
        <script src="resources/bootstrap.min.js" language="text/javascript"></script>
        <!--jquery-->
        <!--<script src="resources/jquery-1.8.3.min.js" language="text/javascript"></script>-->
        <script src="resources/jquery-3.3.1.min.js" language="text/javascript"></script>
        <!--custom css-->
        <link rel="stylesheet" href="resources/p.css" media="all">
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" media="all">-->
        <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
        <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" >
            $(function () {

                $("#goButtonIdInUserPage").click(function () {
//                    alert($('#workerLocations').val())
                    $("#service").hide();
                    $("#download").hide();
                    $("#booking").hide();
                    $("#home").hide();
                    $("#repair").hide();
                    $("#dailyneeds").hide();
                    $("#renovation").hide();
                    $("#personalneeds").hide();
                    $("#district").show();
                    $.ajax({
                        type: 'GET',
                        url: 'check-worker-avail',
                        data: {
                            location: $('#workerLocations').val()
                        },
                        success: function (result) {
                            var availStatus = $.parseJSON(result);
                            if (availStatus.locationId == 'Yes') {
                                $('#workersAvailTextId').show();
                                $('#workersAvailTextId1').hide();
//                                if (i < txt.length)
//                                {
//                                    document.getElementById("demo").innerHTML += txt.charAt(i);
//                                    i++;
//                                    setTimeout(District, speed);
//                                }
                            } else {
                                $('#workersAvailTextId').hide();
                                $('#workersAvailTextId1').show();
                            }
                        }
                    });
                });
//                $("#goButtonIdInUserPage").click(function () {
//                    alert($("#location option:selected").val())
//                    if ($("#location option:selected").val() == 'Y') {//location
//                        $('#workersAvailTextId').text("Workers are Available in your area");
//                    } else {
//                        $('#workersAvailTextId1').text("Sorry!!Workers are not available in your area");
//                    }
//                    $.ajax({
//                        url: "checkWorkersAvailable",
//                        type: "get",
////                        async: false,
////                        data: "processData=" + processData,
//                        data: {
//                            location: $("#location option:selected").text()
//                        },
////                        cache: false,
//                        success: function (data) {
//                            alert(data.status)
//                            alert(data.status)
////                           
//                        }
//                    });
//                });
            });
            var i = 0;
            var txt = ' In which date you need our service ?';
            var speed = 80;
            /* Start of online payment or cod */
            $(document).ready(function () {
                $('#pay').change(
                        function () {
                            var x = $('#pay option:selected').val();
                            if ($('#pay option:selected').val() == 1) {
                                $('#payment').show();
                            } else {
                                $('#payment').hide();
                                alert("successfully booked");
                            }
                        });
                $("#submitid").click(function () {
                    if ($('#pay option:selected').val() == 1) {
                        $('#payment').show();
                    } else {
                        alert("successfully submitted");
                    }
                });
                $.ajax({
                    type: 'POST',
                    url: 'get-worker-locations',
                    success: function (result) {
//                        alert("sdfsd")
                        var locationsList = $.parseJSON(result);
                        var html = "";
                        for (var i = 0; i < locationsList.length; i++) {
//                            alert(locationsList[i].locationId + " " + locationsList[i].location)
                            html = html + '<option value=' + locationsList[i].locationId + '>' + locationsList[i].location + '</option>'
                        }
                        $('#workerLocations').append(html)
                    }
                });
            });

            /* End of selecting online payment or cod */

            $(document).ready(function () {
                $("input[id='continue_button']").click(function ()
                {
                    var radioValue = $("input[name='payment']:checked").val();
                    if (radioValue == 1)
                    {
                        alert("you selected credit/debit cards");
                        $("#atm").show();
                    } else
                    {
                        alert("You selected Net banking");
                        window.location = "html/netbanking.html";
                        $("#atm").hide();
                    }
                });
            });
        </script>
    </head>
    <body id="grad1">

        <div class="row">
            <%@include  file="../../header.jsp" %>
        </div>
        <br>                             
        <div class="row" style="margin-left:75%"><b style="font-size:20px;color:black;border:2px solid black;height:40px;width:100px;">Welcome ${sessionScope.userName}&nbsp;&nbsp;&nbsp;</b></div>  
        <br>
        <div id="download" hidden>
            <form> 
                <center>
                    <br><br>
                    <b style="font-size:23px;color:black;font-weight:bold;"> 
                        Click here to download PCS Application<br><br>
                        <a href="images/pcslogo.jpg" download="PCS" data-toggle="tooltip" title="Click on download to get pcs application"> Download </a></b>
                </center>
                <br><br>
            </form>
        </div>
        <div id="booking">
            <form>
                <div id="final" hidden="true">
                    <center>
                        <h1 style="font-size:30px;" > <u> TICKETS </u> </h1><br><br>
                        <table class="table table-hover" border="5px" width="1200px" height="150px" style="border-color:black;color:black;">
                            <thead>
                                <tr >
                                    <th style="text-align:center" data-toggle="tooltip" title="Serial number"> S.No </th>
                                    <th style="text-align:center"data-toggle="tooltip" title="Service booked"> Ticket ID </th>
                                    <th style="text-align:center" data-toggle="tooltip" title="Date booked"> Problem </th>
                                    <th style="text-align:center" data-toggle="tooltip" title="Ticket ID"> Payment Mode </th>
                                    <th style="text-align:center" data-toggle="tooltip" title="Status of the service"> Address </th>
                                    <th style="text-align:center" data-toggle="tooltip" title="Message from service provider" > Status </th>
                                    <th style="text-align:center" data-toggle="tooltip" title="Message from service provider" > Date </th>
                                    <th style="text-align:center" data-toggle="tooltip" title="Message from service provider" > Time </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${list}">
                                    <tr style="text-align:center" data-toggle="tooltip" title="Washine machine repair">
                                        <td> ${list.sno}</td>
                                        <td>${list.tokenId} </td>
                                        <td> ${list.issue} </td>
                                        <td> ${list.paymentMode} </td>
                                        <td> ${list.address} </td>
                                        <td> ${list.status}</td>
                                        <td> ${list.transactionDate}</td>
                                        <td> ${list.transactionTime}</td>
                                        <!--                            <td> 
                                                                        SP : We didn't understand your problem <br> 
                                                                        <textarea cols="20" rows="2"></textarea> <br> 
                                                                        <input type="button" class="btn btn-primary" value="Send" onclick="msgtosp()">
                                                                    </td>-->
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>	
                        <br><br>					
                    </center>
                </div>

                <input type="hidden" name="userId" value="${sessionScope.userId}">
            </form>

            <!--                        <center>
                                        <br><br>
                                        <b style="font-size:23px;color:black;font-weight:bold;border:2px solid black;background-color:#eceeef;padding:1%;"> No bookings till now !</b>
                                        <br><br><br><br>
                                    </center>-->
        </div>
        <!--        <div>
                    <form name="serviceDetailsForm" id="serviceDetailsForm" method="post" action="saveUserService"  enctype="multipart/form-data">
        
                    </form>
                </div>-->

        <div id="cmm" hidden>
            <form name="serviceDetailsForm" id="serviceDetailsForm" method="post" action="saveUserService"  enctype="multipart/form-data">
                <div class="col-lg-12">
                    <b style="font-size:30px;color:blueviolet;font-family:monotype corsiva;font-weight:bold;" >
                        <center>
                            <!--repair--> 
                            <div class="issueType"></div>
                            <input type="hidden" id="issueType" name="issueType">
                            <input type="hidden" id="serviceType" name="serviceType">
                        </center>
                    </b>
                    <br><br>
                </div>
                <div class="col-lg-12">
                    <div class="container">
                        <div class="jumbotron" id="grad4">
                            <center>
                                <!--<form name="check">-->
                                <h3><b style="font-family:Bell MT;font-size:25px;">Check the availability of workers in your area</b></h3><br>
                                <input type="button" data-toggle="tooltip" title="Click on check button to check the availability of workers" class="btn btn-primary" onclick="Location()" value="Check" style="height:40px;width:90px;">
                                <!--</form>-->
                            </center>
                            <br>
                            <div id="location" hidden>
                                <div>
                                    <center>
                                        <loc>Enter Location</loc>
                                    </center>
                                </div>
                                <br>

                                <div class="row" style="text-align:center;">
                                    <select style="height:40px;width:400px;border-radius:5px;box-shadow: 0 3px 20px -2px black;" id="workerLocations" name="workerLocations">
                                    </select>
                                    <input type="button" class="btn btn-default"  value="Go" data-toggle="tooltip" title="Checks the area" onclick="District($('#workerLocations').val())" id="goButtonIdInUserPage"><br>
                                </div>
                                <br>
                            </div><!--closing location-->	
                            <div id="district" hidden>
                                <br>
                                <center>
                                    <!--<i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>-->

                                    <!--<span class="sr-only" id="spinnerIdInUserPage">Loading...</span>-->

                                    <br><br>	
                                    <h2 id="workersAvailTextId"><b style="color:red;text-shadow:2px 2px 2px black;border:3px solid green;padding:9px;" >
                                            Workers are Available in your area</b>  <i class="fa fa-check fa-1x" style="color:green;"></i>
                                    </h2>
                                    <h2 id="workersAvailTextId1"><b style="color:red;text-shadow:2px 2px 2px black;border:3px solid red;padding:9px;" >
                                            Sorry!! Workers are not available in your area</b> <i class="fas fa-exclamation-circle"></i>
                                    </h2>
                                    <br><br>
                                    <h2 style="font-family:Bell MT;"><b id="demo"> </b></h2>
                                    <br><br>
                                    <!--<form name="dateform3">-->
                                    <input type="date" name="serviceDate" data-toggle="tooltip" title="Click on date to explore the date window"> <i class="fa fa-calendar fa-3x" style="border-radius:8px;"></i>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                    <input type="button" onclick="Date1()" class="btn btn-info" data-toggle="tooltip" title="Click next for further details" value="next" style="height:35px;width:90px;">
                                    <!--</form>-->
                                </center>		
                            </div><!--closing district-->
                            <div id="details" hidden>
                                <!--<form name="details" method="post">-->
                                <br>
                                <center>
                                    <div class="container" >
                                        <div class="jumbotron" id="grad3" style="border:3px solid blueviolet;">		
                                            <b> Convey your requirement to the service provider by sending message or by capturing a picture of problem </b>
                                            <br><br><br>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <b style="font-size:23px;"> Message for Service provider</b>
                                                    <br><br>
                                                    <textarea name="t5" cols="40" rows="7" style="border:2px solid blue;">
                                                    </textarea>
                                                </div>
                                                 <input type="file" name="issueFile" id="issueFile">
                                                <div class="col-lg-6">
                                                    <!--<label class="btn-bs-file btn btn-2x btn-info" data-toggle="tooltip" title="Click on the button to upload captured images of problems" style="font-size:18px;border-radius:6px;height:40px;width:120px;color:black"> Upload-->
                                                        <input type="file" name="issueFile" id="issueFile" style="height:0px;width:0px;padding-left:20%">
                                                    <!--</label>-->
                                                    <br><br>
                                                    <b style="font-family:monotype corsiva;font-size:28px"><span class="glyphicon glyphicon-phone-alt"></span>  Contact :  </b> 
                                                    <h2 style="border:2px solid black;padding:2%;">9000826971</h2>
                                                </div><br>
                                            </div>
                                        </div><!--closing jumbotron-->
                                    </div><!--closing container-->
                                    <div class="col-lg-12" style="border:2px solid cyan;">
                                        <br>
                                        <h2 style="color:crimson;text-shadow:1px 1px 1px black;"> <b> Address Details <i class="fa fa-map-marker" style="color:black;"></i></b></h2>
                                        <br><br>							
                                        <input type="text" name="t1" placeholder="Enter your Pincode" style="font-size:20px;width:400px;height:40px;text-align:center;border-radius:10px;background-color:navy;color: white;" required="true">
                                        <br><br>
                                        <input type="text" name="t2" placeholder="Enter House number"  style="font-size:20px;width:400px;height:40px;text-align:center;border-radius:10px;background-color:navy;color: white;" required="true">
                                        <br><br>
                                        <input type="text" name="t3" placeholder="Enter Street number" style="font-size:20px;width:400px;height:40px;text-align:center;border-radius:10px;background-color:navy;color: white;" required="true">
                                        <br><br>
                                    </div><br><br>
                                    <br>
                                    <div>
                                        <h1 style="color:goldenrod;text-shadow:2px 2px 2px black;font-size:40px;"><b> Payment </b></h1>
                                        <br><br>
                                        <select id="pay" style="width:200px;height:40px;border-radius:15px;padding-left:2%;" required="true" name="paymentMode">
                                            <option value="">---select---</option>
                                            <option value="1" data-toggle="tooltip" title="For online booking/paymenting">Online payment</option>
                                            <option value="2" data-toggle="tooltip" title="For Cash on delivery">Cod</option>
                                        </select>
                                        <br><br>
                                    </div>
                                    <div id="payment" hidden>
                                        <center>
                                            <!--<form>-->
                                            <div class="container" >
                                                <div class="jumbotron" id="grad3" style="border:3px solid blueviolet;">
                                                    <div class="row" style="font-size:100px;">
                                                        <h1 style="color:mediumaquamarine;text-shadow:2px 2px 2px black;"> Payment method </h1> 
                                                    </div>
                                                    <hr color="darkslateblue" style="height:2px;"></hr>
                                                    <input type="radio" value="1" data-toggle="tooltip" title="Paymenting by credit/debit cards" name="payment" style="height:20px;width:20px;" ><b style="font-size:20px;color:black;"> Credit/Debit card</b><br><br>
                                                    <i class="fa fa-cc-visa" style="font-size:48px;color:red"></i>
                                                    <i class="fa fa-cc-mastercard" style="font-size:48px;color:red"></i>
                                                    <i class="fa fa-credit-card" style="font-size:48px;color:royalblue"></i><br><br>
                                                    <input type="radio" value="2" data-toggle="tooltip" title="paymenting by  Net banking" name="payment" style="height:20px;width:20px;" ><b style="font-size:20px;color:black;"> Net banking </b><br><br>

                                                    <div id="net_banking" >
                                                        <select id="bank" style="height:35px;width:200px;border-radius:15px;" data-toggle="tooltip" title="Select the bank">
                                                            <option value="">--Choose a bank--</option>
                                                            <option value="Andhra bank"> Andhra bank </option>
                                                            <option value="State bank of India"> State bank of India </option>
                                                            <option value="1"> Allahabad bank </option>
                                                            <option value="1"> Bank of borabanda </option>
                                                            <option value="1"> Bank of baroda </option>
                                                            <option value="1"> Bank of India </option>
                                                            <option value="1"> State Bank of India </option>
                                                            <option value="1"> Canara bank </option>
                                                            <option value="1"> Central bank of india </option>
                                                            <option value="1"> Indian overseas Bank </option>
                                                            <option value="1"> City union bank </option>
                                                            <option value="1"> Bank of maharastra </option>
                                                        </select>
                                                    </div><br>
                                                    <input type="button" class="btn btn-default" id="continue_button"  data-toggle="tooltip" title="Click the button to continue" value="Continue" style="height:35px;width:120px;">
                                                </div><!--closing jumbotron-->
                                            </div><!--closing container-->
                                            <div id="atm" hidden>
                                                <hr>
                                                <br><br>
                                                <i class="fa fa-cc-visa" style="font-size:48px;color:red"></i>
                                                <i class="fa fa-cc-mastercard" style="font-size:48px;color:red"></i>
                                                <i class="fa fa-credit-card" style="font-size:48px;color:red"></i>
                                                <i class="fa fa-credit-card-alt" style="font-size:48px;color:red"></i>
                                                <i class="fa fa-cc-paypal" style="font-size:48px;color:red"></i>
                                                <i class="fa fa-cc-stripe" style="font-size:48px;color:red"></i>
                                                <br><br>
                                                <b style="font-size:20px;"> Card Number </b>		
                                                <div class="row">
                                                    <div class="col-lg-12">														
                                                        <input type="text" style="font-size:20px;border:2px solid darkblue;text-align:center;background-color:white;color:darkblue;height:40px;width:450px;" placeholder="Enter card number"/ required="true">	
                                                    </div>
                                                </div>
                                                <br><br>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <b style="font-size:20px;padding-right:8%;"> Expiration Date </b>
                                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp														
                                                        <b style="font-size:20px;padding-right:1%;"> CVV/CVC </b>													
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <input type="text" style="font-size:20px;border:2px solid darkblue;text-align:center;background-color:white;color:darkblue;height:40px;width:130px;" placeholder="Month"required="true"/>
                                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                        <input type="text" style="font-size:20px;border:2px solid darkblue;text-align:center;background-color:white;color:darkblue;height:40px;width:130px;" placeholder="Year" required="true"/>
                                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                        <input type="text" style="font-size:20px;border:2px solid darkblue;text-align:center;background-color:white;color:darkblue;height:40px;width:120px;" placeholder="CVV/CVC" required="true"/> 
                                                    </div>
                                                </div>
                                                <br><br>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <b style="font-size:20px;"> Card Holder Name </b>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <input type="text" style="text-align:center;border:2px solid darkblue;background-color:white;color:darkblue;height:40px;width:450px;" placeholder="Enter card holder name"/ required="true">
                                                    </div>
                                                </div>																							
                                                <br>
                                                <input type="button" class="btn btn-default" onclick="confirm()" data-toggle="tooltip" title="Click for pay the amount" value="Make Payment" style="font-size:15px;height:40px;width:450px;background-color:darkblue;border-color:white;color:white;"/>
                                            </div>
                                            <!--</form>-->		
                                        </center>
                                    </div><!--closing payment-->
                                    <div id="makepayment" hidden>
                                        <center>
                                            <h2 style="border:1px solid black;font-family:Californian FB;"> Payment successfull.<i class="fa fa-check" style="color:green"></i> </h2>
                                        </center>
                                    </div>
                                    <div id="overlay1" onclick="make_payment()">
                                        <div id="text1"> 
                                            <hr>
                                            <h2><b> TRANSACTION SUCCESSFULL. </b></h2> 			
                                            <hr>
                                        </div>
                                    </div>
                                    <br><br>
                                    <input type="hidden" name="userId" value="${sessionScope.userId}">
                                    <input type="hidden" name="userName" value="${sessionScope.userName}">
                                    <input type="button" class="btn btn-primary" data-toggle="tooltip" title="Click the button to submit details " id="submitid" onclick="submitted()" value="Submit" style="height:40px;width:95px;border-radius:20px;" >
                                    <br>
                                    <br>
                                </center>
                                <!--</form>-->
                            </div><!--closing details-->						
                        </div><!--closing jumbotron-->
                    </div><!--closing container-->
                </div><!--closing col-lg-12-->
            </form>
        </div>

        <!--        <div class="container" id="getstarted" style="box-shadow:2px solid black;">
                    <div class="jumbotron" style="background:cyan;border:3px solid chocolate;box-shadow: 0 8px 16px -6px black;">
                        <center>
                            <div>
                                <h3 style="font-size:80px;font-family:dosis;color:darkslateblue;">Get Started With PCS </h3><br><hr color="coral" style="height:3px;" width="670"></hr>
                            </div>
                            <p>
                                To Explore our pcs services click on Services Tab on nav bar<br>
                                Click on Get started to know more about our services.
                            </p>
                            <p>
                                <button type="button" class="btn btn-primary"  onclick="Getstarted()" data-toggle="tooltip" title="To get start with pcs click on getstarted button" style="background-color:darkslateblue;border-radius:25px;text-shadow:2px 1px 1px black;color:white;border-color:white;border-width:3px;height:50px;width:130px;font-size:19px;font-weight:bold;"> Getstarted </button>
                            </p>
                        </center>
                    </div>
                </div>-->
        <div class="container" id="getstarted" style="box-shadow:2px solid black;" >
            <div class="jumbotron" style="background:cyan;border:3px solid chocolate;box-shadow: 0 8px 16px -6px black;">
                <center>
                    <div>
                        <txt1>Get Started With PCS </txt1><br><hr color="coral" style="height:3px;" width="670"></hr>
                    </div>
                    <p>
                        To Explore our pcs services click on Services Tab on nav bar<br>
                        Click on Get started to know more about our services.
                    </p>
                    <p>
                        <button type="button" class="btn btn-primary"  onclick="Getstarted()" data-toggle="tooltip" title="To get start with pcs click on getstarted button" style="background-color:darkslateblue;border-radius:25px;text-shadow:2px 1px 1px black;color:white;border-color:white;border-width:3px;height:50px;width:130px;font-size:19px;font-weight:bold;"> Getstarted </button>
                    </p>
                </center>
            </div>
        </div>
        <%if ("userBookings".equals(request.getAttribute("action"))) {%> 
        <script type="text/javascript">
            $('#getstarted').hide();
            $('#final').show();
        </script>
        <%} else if (!"userBookings".equals(request.getAttribute("action"))) {%> 
        <script type="text/javascript">
            $('#final').hide();
        </script>
        <%}%>
        <div id="structure" hidden>
            <div class="container">
                <div class="jumbotron" style="box-shadow: 0 8px 16px -6px black;"  height="100%" width="90%" id="structurebg">
                    <div class="col-lg-6">
                        <div class="container">
                            <div class="jumbotron" style="box-shadow: 0 8px 16px -6px black;background-image:url(images/simple.jpg);"  >
                                <center>
                                    <a href="#" onclick="service()"> 
                                        <img src="images/service.jpg" style="border:2px solid black;" height="200px" width="270px" class="img-rounded"> <br>
                                        1.Check for services
                                    </a>
                                </center>
                                <br><br>
                                <b style="font-size:17px;"> For booking services, select services tab or click here.</b>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="container">
                            <div class="jumbotron" style="box-shadow: 0 8px 16px -6px black;background-image:url(images/simple.jpg);" >
                                <center>
                                    <a href="#" onclick="booking()">
                                        <img src="images/ticket.jpg" style="border:2px solid black;" class="img-rounded" height="200px" width="320px"><br>
                                        2.Check for previously booked items (tickets)
                                    </a>
                                </center>
                                <br><br>
                                <b style="font-size:17px;"> For Checking previous tickets, click on bookings tab or click here.</b>
                            </div>
                        </div>
                    </div>
                    <br><br><br>
                    <div class="col-lg-6">
                        <div class="container">
                            <div class="jumbotron" style="box-shadow: 0 8px 16px -6px black;background-image:url(images/simple.jpg);" >
                                <center>
                                    <a href="images/pcslogo.jpg" download="PCS" data-toggle="tooltip" title="Click on download to get pcs application">
                                        <img src="images/pcslogo.jpg" style="border:2px solid black;" class="img-rounded" height="200px" width="270px"><br>
                                        3.Download App
                                    </a>
                                </center>
                                <br><br>
                                <b style="font-size:17px;"> To download our pcs application select download app tab or even click here to download.</b>
                            </div>
                        </div>
                    </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                    <div class="col-lg-6">
                        <div class="container">
                            <div class="jumbotron" style="box-shadow: 0 8px 16px -6px black;background-image:url(images/simple.jpg);"  >
                                <center>
                                    <a href="#" onclick="feedback()">
                                        <img src="images/feedback.jpg" style="border:2px solid black;" class="img-rounded" height="200px" width="270px"><br>
                                        4.Feedback from you
                                    </a>
                                </center>
                                <br><br>
                                <b style="font-size:17px;"> To provide any feedback to our site or to give any suggestion to make change to our site simply click here.</b>
                            </div><br>
                        </div>
                    </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                </div>			
            </div>
        </div>
        <!--        <div id="chat" hidden>
                    <div >
                        <center>
                            <form name="feedbackForm" method="post" action="user-feedback">
                                <textarea cols="100" rows="10" name="feedbackMsg"></textarea><br><br>
                                <input type="hidden" value="${userId}" name="userId">
                                <input type="button" class="btn btn primary" style="height:40px;width:100px;" onclick="msgsend()" value="Send" data-toggle="tooltip" title="click here to send the message"/>
                                <input type="submit" class="btn btn primary" style="height:40px;width:100px;" value="Send" data-toggle="tooltip" title="click here to send the message"/>
                            </form>
                        </center>
                    </div>
                </div>-->
        <div id="chat" hidden>
            <div >
                <center>
                    <form name="feedbackForm" method="post" action="user-feedback">	
                        <input type="hidden" value="${sessionScope.userId}" name="userId">
                        <textarea cols="100" rows="10"  name="feedbackMsg"></textarea><br><br>
                        <!--Rating : <input type="number" name="ratings" min="1" max="5" data-toggle="tooltip" title="must contain atmost 5 and atleast 1 rating"><br><br>-->
                        <label> Rating :</label> <div class="styled-select slate">
                            <select id="rating" name="rating">
                                <option value="excellent">excellent</option>
                                <option value="very good">very good</option>
                                <option value="good">good</option>
                                <option value="average">average</option>
                                <option value="bad">bad</option>
                            </select>
                        </div>
                        <br>
                        <!--<input type="number" name="ratings" min="1" max="5" data-toggle="tooltip" title="must contain atmost 5 and atleast 1 rating"><br><br>-->
                        <input type="submit" class="btn btn-primary" style="height:40px;width:100px;" onclick="msgsend()" value="Send" data-toggle="tooltip" title="click here to send the message"/>
                    </form>
                </center>
            </div>
        </div>
        <div  id="service" hidden><center>
                <h1 style="font-size:70px;" > Services </h1><br><br><br><br><br>
                <div class="col-lg-6">
                    <a href="#" style="font-size:60px;color:red;font-family:monotype corsiva;font-weight:bold;" onclick="commonFunctionForAllServices('Repairings', 'repair', 'dailyneeds', 'personalneeds', 'renovation')" data-toggle="tooltip" title="All Gadjet & machinery Repaires"> 
                        <img src="images/repair.jpg" height="350px" style="border:2px solid black;" class="img-rounded" width="380px" ></img><br> Repairings  </a> <br><br><br><br>
                    <a href="#" style="font-size:60px;color:red;font-family:monotype corsiva;font-weight:bold;" onclick="commonFunctionForAllServices('Daily needs', 'dailyneeds', 'repair', 'personalneeds', 'renovation')" data-toggle="tooltip" title="All Daily need services"> 
                        <img src="images/dailyneeds.jpg" style="border:2px solid black;" class="img-rounded" height="350px" width="380px" ></img><br> Daily needs </a> <br><br><br>
                </div>
                <div class="col-lg-6">
                    <a href="#" style="font-size:60px;color:red;font-family:monotype corsiva;font-weight:bold;" onclick="commonFunctionForAllServices('Renovation', 'renovation', 'repair', 'personalneeds', 'dailyneeds')" data-toggle="tooltip" title="All house repairs"> 
                        <img src="images/renovation.jpg" style="border:2px solid black;" class="img-rounded" height="350px" width="380px" ></img><br>  Renovation  </a> <br><br><br>
                    <a href="#" style="font-size:60px;color:red;font-family:monotype corsiva;font-weight:bold;" onclick="commonFunctionForAllServices('personal needs', 'personalneeds', 'repair', 'renovation', 'dailyneeds')" data-toggle="tooltip" title="All personal needs"> 
                        <img src="images/pn.jpg" style="border:2px solid black;" class="img-rounded" height="350px" width="380px" ></img><br>	personal needs </a> <br><br><br>
                </div></center>
        </div>

        <h1 style="text-align: center;font-size:70px;color:red;font-family:monotype corsiva;font-weight:bold;" ><div class="serviceType"></div></h1>
        <div id="repair" hidden>
            <center>
                <br><br><br><br><br><br><br>
                <div class="col-lg-4" >
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;" onclick="repairg()" id="washingMach"> 
                        <img src="images\washingmachine.jpeg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('washing machine')" data-toggle="tooltip" title="All Washine machine Repairs "></img><br> washing machine  </a> <br><br><br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\ac.jpeg" style="border:2px solid black;" class="img-rounded" height="150px" width="270px" onclick="commonFunctionForAllIssues('A/c Repair & Install service')" data-toggle="tooltip" title="All A/c repairs and installations"></img><br> A/c Repair & Install service </a> <br><br><br><br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\carR.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Car mechanic')" data-toggle="tooltip" title="All car repairs (mechanic)"></img><br>  Car mechanic  </a> <br><br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\bike.png" style="border:2px solid black;"  class="img-rounded" height="220px" width="300px" onclick="commonFunctionForAllIssues('Bike mechanic')" data-toggle="tooltip" title="All bike repairings"></img><br> Bike mechanic</a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\fridge.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Refrigerator repair')" data-toggle="tooltip" title="All refrigerator repairings"></img><br>  Refrigerator repair </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\tv.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Television repair')" data-toggle="tooltip" title="All television repairings"></img><br>  Television repair</a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\geyser.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Geyser install & Repair')" data-toggle="tooltip" title="All geyser repairs & installations"></img><br>  Geyser install & Repair </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\mixer.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Mixer grinder Repair')" data-toggle="tooltip" title="Mixer grinder repairs " ></img><br>  Mixer grinder Repair</a> <br><br><br>
                </div>
                <div class="col-lg-4">
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\waterpurifier.jpeg" style="border:2px solid black;" class="img-rounded" height="250px" width="250px" onclick="commonFunctionForAllIssues('Water purifier Repair')" data-toggle="tooltip" title="All water purifiers repairs"></img><br>  Water purifier Repair  </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\sw.png" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Software Consultant')" data-toggle="tooltip" title="A Software Consultant"></img><br> Software Consultant </a> <br><br><br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\pc.jpeg" style="border:2px solid black;" class="img-rounded" height="210px" width="280px" onclick="commonFunctionForAllIssues('Laptop/computer Repair')" data-toggle="tooltip" title="All laptop/computer repairings"></img><br> Laptop/computer Repair </a> <br><br><br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\micro.jpg" style="border:2px solid black;" class="img-rounded" height="210px" width="270px" onclick="commonFunctionForAllIssues('Micro wave Repair')" data-toggle="tooltip" title="All microwave repairs"></img><br>  Micro wave Repair </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\gas.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Gas stove Repair')" data-toggle="tooltip" title="All Gas Stove repairs"></img><br>  Gas stove Repair </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\fan.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Fan Repair')" data-toggle="tooltip" title="All electic Fan repairs"></img><br> Fan Repair </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\cooler.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Cooler Repair')" data-toggle="tooltip" title="All cooler repairings"></img><br> Cooler Repair </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\inverter.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Inverter Repair')" data-toggle="tooltip" title="All inverter repairings"></img><br>  Inverter Repair </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\printer.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Printer Repair')" data-toggle="tooltip" title="All printer repairings"></img><br>  Printer Repair </a> <br><br><br>
                </div>
                <div class="col-lg-4">
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\generator.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Generator Repair')" data-toggle="tooltip" title="All generator repairings"></img><br>  Generator Repair </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\sofadesign.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Sofa Repair')" data-toggle="tooltip" title="All types of sofa repairings"></img><br>  Sofa Repair </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\borewellmotor.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Borewell Motor Repair')" data-toggle="tooltip" title="All borewell motors repairings"></img><br>  Borewell Motor Repair </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\cctv.png" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('CCtv Cams Repair')" data-toggle="tooltip" title="All types cctv cameras repairings"></img><br> CCtv Cams Repair  </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\music.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Sound System Repair')" data-toggle="tooltip" title="All types of sound system repairings"></img><br> Sound System Repair  </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\mobile.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Mobiles Repair')" data-toggle="tooltip" title="ALL mobile repairings"></img><br>   Mobiles Repair </a><br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\lock.png" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Locks Repair')" data-toggle="tooltip" title="All types of lock repairings"></img><br> Locks Repair </a> <br><br><br>
                    <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                        <img src="images\bag.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Bags Repairing')" data-toggle="tooltip" title="All types of bags repairings"></img><br> Bags Repairing</a> <br><br><br>
                </div>
        </div>
    </center>
</div>
<div id="dailyneeds" hidden>
    <center>
        <div class="col-lg-4">
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\plumber.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Plumber')"  data-toggle="tooltip" title="Plumbing works"></img><br> Plumber  </a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\electrician.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Electrician')" data-toggle="tooltip" title="Electrical works"></img><br> Electrician  </a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\carpenter.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Carpenter')" data-toggle="tooltip" title="carpenter Works"></img><br>   Carpenter </a><br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\painter.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Painter')" data-toggle="tooltip" title="All types of Painters"></img><br> Painter </a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\driver.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Driver')" data-toggle="tooltip" title="All types of Driver "></img><br> Driver</a> <br><br><br>
        </div>
        <div class="col-lg-4">
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\fullclean.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Full home Cleaning')" data-toggle="tooltip" title="Full home cleaning (long process)"></img><br> Full home Cleaning </a>  <br><br><br> 
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\bathroomclean.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Bathroom Cleaning')" data-toggle="tooltip" title="Bathroom(washrooms) cleanings"></img><br> Bathroom Cleaning  </a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\watertankclean.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Water tank Cleaning')" data-toggle="tooltip" title="Watertanks(Drums) cleaning"></img><br> Water tank Cleaning </a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\septic.jpeg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Septic-tank Cleaning')" data-toggle="tooltip" title="Septic-tank cleaning "></img><br> Septic-tank Cleaning</a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\deepclean.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Deep cleaning')" data-toggle="tooltip" title="Deep cleaning (full)"></img><br> Deep cleaning</a> <br><br><br>
        </div>
        <div class="col-lg-4">
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\sofaclean.jpeg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Sofa cleaning')" data-toggle="tooltip" title="All types of sofa cleanings"></img><br> Sofa cleaning  </a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\drainageclean.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="drainageclean('Drainage Cleaning')" data-toggle="tooltip" title="All drainage cleanings"></img><br> Drainage Cleaning  </a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\car.jpg" style="border:2px solid black;" class="img-rounded" height="200px" width="300px" onclick="commonFunctionForAllIssues('Car/Bike Wash')" data-toggle="tooltip" title="All types car/bike washings"></img><br> Car/Bike Wash </a> <br><br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\dish.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('DTH Connection')" data-toggle="tooltip" title="All dish/star/dth connections"></img><br> DTH Connection </a> <br><br><br>
        </div>
    </center>
</div>
<div id="renovation" hidden>
    <center>
        <div class="col-lg-4">
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\fabrication.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Fabrication and Works')" data-toggle="tooltip" title="All fabrication works"></img><br> Fabrication and Works  </a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\ceiling.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Ceiling works')" data-toggle="tooltip" title=" All ceiling works"></img><br> Ceiling works  </a> <br><br><br>
        </div>
        <div class="col-lg-4">
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\sofadesign.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('New sofa makers')" data-toggle="tooltip" title="All top designinger of sofas"></img><br>  New sofa makers </a><br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\interiordesign.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Interior Design')" data-toggle="tooltip" title="All interior designers of a building"></img><br> Interior Design </a> <br><br><br>
        </div>
        <div class="col-lg-4">
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\flooring.png" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Flooring works')" data-toggle="tooltip" title="All flooring Works"></img><br> Flooring works</a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\mosquitonet.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('mosquito net and screens')" data-toggle="tooltip" title="All mosquito nets & screens applyings"></img><br> mosquito net and screens  </a> <br><br><br>
        </div>
    </center>
</div>
<div id="personalneeds" hidden>
    <center>
        <div class="col-lg-4">
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\events.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Parties & Events')" data-toggle="tooltip" title="All parties & events"></img><br> Parties & Events  </a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\catering.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Catering')" data-toggle="tooltip" title="All catering services"></img><br> Catering  </a> <br><br><br>
        </div>
        <div class="col-lg-4">
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\pooja.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Pooja services')" data-toggle="tooltip" title="All pooja services"></img><br>   Pooja services </a><br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\carRent.jpg" style="border:2px solid black;" class="img-rounded" height="230px" width="280px" onclick="commonFunctionForAllIssues('Car Rentals')" data-toggle="tooltip" title="All types of car rentals"></img><br> Car Rentals </a> <br><br><br>
        </div>
        <div class="col-lg-4">
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\packers.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Packers & Movers')" data-toggle="tooltip" title="Packers & movers(we provide huge heavy vehicles)"></img><br> Packers & Movers</a> <br><br><br>
            <a href="#" style="font-size:30px;color:red;font-family:monotype corsiva;font-weight:bold;"> 
                <img src="images\idproof.jpg" style="border:2px solid black;" class="img-rounded" height="250px" width="270px" onclick="commonFunctionForAllIssues('Id proof Agents')" data-toggle="tooltip" title="All types of id proof agents"></img><br> Id proof Agents  </a> <br><br><br>
        </div>
    </center>
</div>
<div id="website_layout" hidden>
    <div class="row">
        <div class="col-lg-12">
            <center>
                <layout style="font-size:50px;color:red;text-shadow:2px 1px 1px black;font-family:elephant;"> Website layout</layout>
                <img src="images/layout.jpg" alt="img not found" height="120%" data-toggle="tooltip" title="Website structure" width="100%" style="border:4px solid black;"></img>
            </center>
        </div>
    </div><br>
    <div class="row">
        <div class="container">
            <div class="jumbotron" id="grad2" >
                <font style="font-size:20px;">
                <center>
                    <b > 1) </b> Users will visit our website for their requirements.if they have  pcs account then can continue with login,if they doesn't have pcs account they must create account to use our services.<br>
                </center>
                </font>
                <br><br>
                <font style="font-size:20px;">
                <center>
                    <b> 2) </b> user will be logged into he/she's account. now user must check for availability of workers in their surrounding i.e, local area.if workers are available then user will move to next step that is slecting the service.<br>
                </center>
                </font>
                <br><br>
                <font style="font-size:20px;">
                <center>
                    <b> 2) </b> user will be logged into he/she's account. now user must check for availability of workers in their surrounding i.e, local area.if workers are available then user will move to next step that is slecting the service.<br>
                </center>
                </font>
                <br><br>
                <font style="font-size:20px;">
                <center>
                    <b> 4) </b> Now admin will decide the amount for work required by the user. user can pay the amount by two ways<br><br>
                </center>
                </font>
                <br>
            </div>
        </div>
    </div>	
    <font style="font-size:20px;">
    <center>
        <ul style="padding-right:41%;margin-left:40%;color:blue;" type="square">
            <li><b> Online paymenting.</b>
            <li><b> Cash on delivery.</b>
        </ul><br>
        <img src="images/payment.jpg" height="400px" data-toggle="tooltip" title="Cash on delivery/Online payment" width="470px"></img>
        <br><br>
        <b1 style="font-family:monotype corsiva;font-size:35px;color:green;" >For online paymenting we provide</b1><br><br>
        <ul type="bullet" style="margin-left:43%;padding-right:44%;font-weight:bold;color:blue;">
            <li>Paytm</li>
            <li> Paypal</li>
            <li>Phone-pe</li>
            <li> Debit card</li>
            <li>Credit card</li>
        </ul><br>
        <img src="images/payment.jpg" height="400px" style="border:2px solid black;" class="img-rounded" data-toggle="tooltip" title="All online payments" width="480px"></img> <br><br>
        <b >By using these sources you can pay the amount.</b><br> <br>
        <b1 style="font-family:monotype corsiva;font-size:35px;color:green;"> Cash on delivery </b1><br><br>
        <img src="images/cod.jpg" height="360px" data-toggle="tooltip" title="Cash on delivery" width="450px" ></img> <br><br>
        &nbsp&nbsp 
    </center>
    </font>
    <div class="row">
        <div class="container">
            <div class="jumbotron" id="grad2">
                <font style="font-size:20px;">
                <center>
                    After completion of service you must pay the amount accuratley. without barging of payment.if you are expecting any
                    discount from our services, you should discuss with admins when you are going to pay the amount.
                    <br><br>
                    <b> 5)</b> If you choose online paymenting then your timer will start for reaching the worker to your home 
                    our workers will find your home and they provide you good services 
                    <br><br>
                    <i class="fa fa-clock-o fa-4x" data-toggle="tooltip" title="Time to reach our worker to your home"></i><br>
                </center>
                </font>
            </div>
        </div>
    </div>
</div>
<br>
<br>	<!--closing website layout-->
<div class="col-lg-12" style="text-align:center;background-color:cadetblue;">
    <div class="col-lg-4 col-sm-4" style="border-right-style:groove;border-color:black;">
        <div class="page-header">
            <b style="font-size:20px;font-weight:bold;color:blue;">
                About company
            </b>
        </div>
        <p1 style="font-size:20px;fontweight:bold;">
            <a href="http://www.nttdata.com/global/en/" style="color:black;" data-toggle="tooltip">Company partner NTTdata </a><br><br>
            <a href="http://www.tv9.com" style="color:black;" data-toggle="tooltip" title="social media partner" > Media partner TV9 </a><br><br>
            <a href="#" onclick="service()" style="color:black;" data-toggle="tooltip" title="Users dependency" > Users dependency </a><br><br>
            <a href="#" onclick="home()" style="color:black;" data-toggle="tooltip" title="Highly secured sctructured" > Highly secured Layout </a><br><br>
        </p1>				
    </div>
    <div class="col-lg-4 col-sm-4" style="border-right-style:groove;border-color:black;">
        <div class="page-header">
            <b style="font-size:20px;font-weight:bold;color:blue;">
                Recently used services 
            </b>
        </div>
        <p1 style="font-size:20px;fontweight:bold;">
            <a href="#" style="color:black;" onclick="service()" data-toggle="tooltip" title="all repairings"> Repairing </a><br><br>
            <a href="#" style="color:black;" onclick="service()" data-toggle="tooltip" title="all types of Cleaners"> cleaning </a><br><br>
            <a href="#" style="color:black;" onclick="service()" data-toggle="tooltip" title="all types of Electrical works"> Electrician </a> <br><br>
            <a href="#" style="color:black;" onclick="service()" data-toggle="tooltip" title="all types of painter"> painters </a> <br><br>
        </p1>
    </div>
    <div class="col-lg-4 col-sm-4" >
        <div class="page-header">
            <b style="font-size:20px;font-weight:bold;color:blue;">
                Following (PCS)
            </b>
        </div>
        <p1 style="font-size:20px;fontweight:bold;">
            <a href="https://www.facebook.com/" style="color:black;" data-toggle="tooltip" title="Conncet with us on facebook"> facebook <i class="fa fa-facebook fa-lg"></i> </a><br><br>
            <a href="https://www.twitter.com/" style="color:black;" data-toggle="tooltip" title="Connect with us on twitter"> twitter <i class="fa fa-twitter fa-lg"></i> </a> <br><br>
            <a href="https://www.instagram.com/" style="color:black;" data-toggle="tooltip" title="Connect with us on instagram"> instagram <i class="fa fa-instagram fa-lg"></i> </a> <br><br>
            Public Consultancy Services © 2018<br>
        </p1>
    </div>
</div>
</body>
</html>