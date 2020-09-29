
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <script src="boostrap.min.js" language="text/javascript"></script>
        <style>
            a:hover 
            {
                background-color:cadetblue;
                color:yellow;
            }   
            #grad1 { background: linear-gradient(to bottom right,lightpink ,lightyellow,lightgreen,lightblue, white,lightgoldenrodyellow)  last }			
            #grad2 {background: linear-gradient(to bottom right ,chocolate,white)  last }
        </style>
        <link rel="stylesheet" href="admin.css" media="all">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="bootstrap.min.css" media="all">
        <script src="jquery-1.8.3.min.js" language="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" media="all">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="all">
        <script src="jquery-1.8.3.min.js" language="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" media="all">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            function addWorkerDetails() {
                $.ajax({
                    url: 'add-worker',
                    type: 'POST',
                    data: jQuery.param(
                            {
                                workerName: $('#workerName').val(),
                                location: $('#location').val(),
                                workerId: $('#workerId').val(),
                                contactno: $('#contactno').val()
                            }
                    ),
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    success: function (response) {
                        alert("Worker added Successlly");
                        window.location.reload();
                    },
                    error: function () {
                        alert("Failed");
                    }
                });
//                $.ajax({
//                    type: "POST",
//                    url: "add-worker",
//                    data: $("#addWorkerForm").serialize(), // serializes the form's elements.
//                    success: function (data)
//                    {
//                        alert(data); // show response from the php script.
//                    }
//                });
            }
            function getstarted()
            {
                $("#user_message").show();
                $("#getstarted").hide();
            }
            function Home()
            {
                $("#getstarted").show();
                $("#user_message").hide();
                $("#rating").hide();
                $("#request").hide();
                $("#worker").hide();

            }
            function Worker()
            {
                $("#user_message").hide();
                $("#getstarted").hide();
                $("#worker").show();
                $("#rating").hide();
                $("#request").hide();
            }
            function Rating()
            {
                $("#user_message").hide();
                $("#getstarted").hide();
                $("#worker").hide();
                $("#rating").show();
                $("#request").hide();
            }
            function Request()
            {
                $("#rating").hide();
                $("#request").show();
                $("#worker").hide();
                $("#getstarted").hide();
                $("#user_message").hide();
                document.userRequestForm.submit();
            }
            function Feedback()
            {
                $("#user_message").show();
                $("#worker").hide();
                $("#getstarted").hide();
                $("#rating").hide();
                $("#request").hide();
            }
            function Reply1()
            {
                $("#reply1").show();
            }
            function Reply2()
            {
                $("#reply2").show();
            }
            function Reply3()
            {
                $("#reply3").show();
            }
            function msgclose1()
            {
                $("#reply1").hide();
            }
            function msgclose2()
            {
                $("#reply2").hide();
            }
            function msgclose3()
            {
                $("#reply3").hide();
            }
            function Send()
            {
                alert("message forwarded");
                $("#reply1").hide();
                $("#reply2").hide();
                $("#reply3").hide();
            }
            function addworker()
            {
                $("#Addworker").show();
            }
            function updateWorkerStatus(obj,wid){
                alert(wid)
            }
        </script>
    </head>
    <body  id="grad1"   >
        <form name="userRequestForm" method="post" action="userRequestDetails">
            <div class="row">
                <div id="pcs" class="col-md-12"> 
                    <center> 
                        <img src="images/pcs.jpg" style="border:2px solid black;height:120px;width:1350px"></img>
                    </center>
                </div>			
            </div>
            <div class="row">
                <div class="col-lg-12" >
                    <ul class="nav nav-tabs nav-justified" style="background-color:#563d7c;border:1px solid black;">
                        <li id="homeTabId"><a href="#" style="font-size:23px;color:lightyellow;font-weight:bold;" onclick="Home()" >Home <i class="fa fa-home fa-lg"  style="color:lightgreen;"></i></a></li>
                        <li id="workerTabId"><a href="workerDetails?action=workerDetails" style="font-size:23px;color:lightyellow;font-weight:bold;"  onclick="Worker()" >Workers <i class="fa fa-users fa-fw" style="color:lightblue;"></i></a></li>
                        <li id="ratingTabId"><a href="user-feeback-details?action=rating" style="font-size:23px;color:lightyellow;font-weight:bold;" onclick="Rating()" >Ratings <i class="fa fa-star checked" style="color:gold;"></i></a></li>
                        <li id="userRequestTabId"><a href="userRequestDetails?action=userRequestDetails" style="font-size:23px;color:lightyellow;font-weight:bold;" onclick="Request()">Requests <i class="fa fa-envelope-o fa-fw" style="color:lawngreen;"></i></a></li>
                        <li id="feedbackTabId"><a href="user-feeback-details?action=feedback" style="font-size:23px;color:lightyellow;font-weight:bold;" onclick="Feedback()">Feedback <i class="fa fa-flag" style="color:orange;"></i></a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" id="menu1" data-toggle="dropdown">
                                <b style="font-size:20px;color:black;">
                                    <i class="fa fa-cog fa-spin fa-lg fa-fw"></i>Settings</b>
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1" class="nav nav-tabs nav-justified"style="background-color:mediumvioletred;box-shadow: 0 8px 5px -6px black;width:226px">
                                <li><a href="showUserEditPage?userId=${sessionScope.userId}"><big style="font-weight:bold;">${sessionScope.userName} (Edit)</big></a></li>
                                <li><a href="addNewAdmin"><big style="font-weight:bold;">Add Admin</big></a></li>
                                <li><a href="html/terms.html"><big style="font-weight:bold;">About</big></a></li>
                                <li><a href="login.jsp"><big style="font-weight:bold;">Logout&nbsp&nbsp<i class="fa fa-power-off"></i></big></a></li>
                            </ul>
                        </li>
                        <!--<li><a href="login.jsp" style="font-size:23px;color:lightyellow;font-weight:bold;" >Logout <i class="fa fa-power-off" style="color:fuchsia;"></i></a></li>-->
                    </ul>
                </div>
            </div>
            <br/>
            <div id="getstarted">
                <div class="container" >
                    <div class="jumbotron"  id="grad2" style="width:1200px;border-radius:20px;;border:2px solid black;">
                        <center>
                            <div class="page-header">
                                <txt>Get Started with User
                                    Requirements <br> </txt>		
                            </div><br>
                            <p1>
                                Hello,People are waiting for your services. go get started.
                            </p1><br><br>
                            <input type="button" class="btn btn-primary" href="#"  value="Getstarted" onclick="getstarted()" id="gets" >
                        </center>
                    </div><!--closing jumbotron-->
                </div><!--closing container-->
                <!--<br><br><br><br>-->
            </div>

            <div id="user_message" hidden="true">
                <h1 style="font-weight:bold;font-size:50px;color:blue;font-family:monotype corsiva;text-align:center;padding-bottom:1%;">
                    Feedback
                </h1>
                <table class="table table-hover" border="5px" style="background-color:lightblue;">
                    <c:forEach var="userFeedbackDtlsList" items="${userFeedbackDtlsList}">
                        <tr>
                            <td><h2 style="padding-left:7%;" >${userFeedbackDtlsList.userName}</h2></td>
                        </tr>
                        <tr>
                            <td><p style="font-size:20px;padding-left:7%;">${userFeedbackDtlsList.feedbackMsg}</p></td>
                        </tr>
                    </c:forEach> 
                </table>
            </div>
            <div id="worker" hidden="true">
                <center>
                    <h1 style="color:red;font-family:monotype corsiva;"> <b> Workers Details </b> </h1>
                    <br/>
                    <table class="table table-hover" border="5px" style="background-color:lightblue;">
                        <tr>
                            <th style="text-align:center;"> S.No </th>
                            <th style="text-align:center;"> Worker ID </th>
                            <th style="text-align:center;"> Name </th>
                            <th style="text-align:center;"> Contact No. </th>
                            <th style="text-align:center;"> Location </th>
                            <th style="text-align:center;"> status </th>
                            <th style="text-align:center;"> Date/Time </th>
                        </tr>
                        <c:forEach var="workersList" items="${workersList}">
                            <tr>
                                <td>${workersList.sno}</td>
                                <td>${workersList.workerId}</td>
                                <td>${workersList.workerName}</td>
                                <td>${workersList.contactNo}</td>
                                <td>${workersList.location}</td>
                                <!--<td>${workersList.taskStatus}</td>-->
                                <td>
                                    <select style="height:30px;width:150px;border-radius:7px;" onclick="updateWorkerStatus(${workersList.workerId})">
                                        <%--<c:choose>--%>
                                            <%--<c:when test="${workersList.taskStatus=='Work Pending'}">--%>
                                                <option value="Work Pending" onclick="updateWorkerStatus(${workersList.workerId})"><center>Work Pending</center></option>
                                                <option value="Work Finished"><center>Work Finished</center></option>
                                                <%--</c:when>--%>
                                                <%--<c:when test="${workersList.taskStatus=='Work Finished'}">--%>
                                                <!--<option value="Work Finished"><center>Work Finished</center></option>-->
                                                <!--<option value="Work Pending"><center>Work Pending</center></option>-->
                                                <%--</c:when>--%>
                                            <%--</c:choose>--%>
                                    </select>
                                </td>

                                <td>${workersList.createdDate}&nbsp;&nbsp;${workersList.createdTime}</td>
                            </tr>
                        </c:forEach> 
                    </table>
                    <br>
                    <input type="button" class="btn btn-primary" value="Add worker" onclick="addworker()" ><br><br><br>
                </center>
            </div>
            <form name="addWorkerForm" action="add-worker" id="addWorkerForm" method="post">
                <div class="row" id="Addworker" hidden>
                    <center>
                        <table border="3px" style="background-color:lightblue;" >
                            <tr style="height:30px;">
                                <!--<th style="text-align:center;width:50px;"> S.No </th>-->
                                <th style="text-align:center;width:300px;"> Name </th>
                                <th style="text-align:center;width:300px;"> Locality </th>
                                <th style="text-align:center;width:300px;"> Id </th>
                                <th style="text-align:center;width:250px"> Contact No </th>
                                <th style="text-align:center;width:200px;"> status </th>
                            </tr >
                            <tr style="text-align:center;height:40px;" >
                                <!--<td> <input type="number" style="width:50px;border-radius:7px;height:30px;" min="1" max="200" name="" > </td>-->
                                <td> <input type="text" style="border-radius:7px;height:30px;" name="workerName" id="workerName"></td>
                                <td> <input type="text" style="border-radius:7px;height:30px;" name="location" id="location" ></td>
                                <td> <input type="text" style="border-radius:7px;height:30px;" name="workerId" id="workerId" > </td>
                                <td> <input type="number" style="border-radius:7px;height:30px;" name="contactno" id="contactno"> </td>
                                <td> 
                                    <select style="height:30px;width:150px;border-radius:7px;" name="status">
                                        <option value="1"><center> work pending</center></option>
                                        <option value="2"><center>work finished</center></option>
                                    </select>
                                </td>
                            </tr>
                        </table>
                        <br>
                        <input type="button" class="btn btn-success" value="add" onclick="addWorkerDetails()" >
                        <br><br>
                    </center>
                </div>
            </form>
            <div id="rating" hidden="true">
                <center>
                    <h1> User Ratings </h1>
                    <br/>
                    <table class="table table-hover" border="5px" style="background-color:lightblue;" >
                        <tr style="text-align:center;">
                            <th style="text-align:center;"> S.No </th>
                            <th style="text-align:center;"> User Name </th>
                            <th style="text-align:center;"> Rating </th>
                        </tr>
                        <c:forEach var="userFeedbackDtlsList" items="${userFeedbackDtlsList}">
                            <tr style="text-align:center;">
                                <td>${userFeedbackDtlsList.sno}</td>
                                <td>${userFeedbackDtlsList.userName}</td>
                                <td>${userFeedbackDtlsList.userRating}</td>
                            </tr>
                        </c:forEach> 
                    </table>
                    <br><br><br>
                </center>
            </div>
            <div id="request" hidden="true">
                <center>
                    <h1>User Requests</h1>
                    <br/>
                    <table border="5px" style="width: 70%">
                        <c:forEach var="list" items="${list}">
                            <tr>
                                <td>
                            <center>
                                <h2><b><u> ${list.userName} </u></b></h2>
                                <p style="font-size:20px;"> 
                                    Issue :   ${list.issue} <br>
                                    House no:  ${list.houseNo}<br>
                                    Pincode :  ${list.pincode}<br>
                                    Street no./name :  ${list.streetNo}<br>
                                    Message : ${list.issueDesc}<br>
                                    Date : ${list.transactionDate}&nbsp;&nbsp;${list.transactionTime}  </p> 
                                <h3> 
                                    <a href="#" onclick="Reply1()" data-toggle="tooltip" title="Click here to give reply to user">Leave a reply </a>
                                </h3>
                                <br>
                                <div id="reply1" hidden>
                                    <center>
                                        <textarea rows="5" cols="30"></textarea><br><br>
                                        <input type="button" class="btn btn-primary" value="send" onclick="Send()" > <input type="button" class="btn btn-default" value="close" onclick="msgclose1()"><br>
                                    </center>
                                </div>
                                <input type="checkbox" data-toggle="tooltip" title="Check if task is completed" style="height:18px;width:18px;" name="charantask" /> Task completed <br><br>
                                <input type="button" class="btn btn-success" ame="charansubmit" value="Save" onclick="save()" data-toggle="tooltip" title="To save changes click on save">
                            </center>
                            <br/>
                            </td>
                            </tr> 
                        </c:forEach>                        
                    </table>
                    <br><br>
                </center>
            </div>
        </div>
        <%if ("rating".equals(request.getAttribute("action"))) {%> 
        <script type="text/javascript">
            $('#getstarted').hide();
            $('#user_message').hide();
            $('#request').hide();
            $('#worker').hide();
            $('#rating').show();
            document.getElementById("ratingTabId").style.backgroundColor = "orange";
        </script>
        <%} else if ("feedback".equals(request.getAttribute("action"))) {%> 
        <script type="text/javascript">
            $('#getstarted').hide();
            $('#user_message').hide();
            $('#request').hide();
            $('#worker').hide();
            $('#user_message').show();
            document.getElementById("feedbackTabId").style.backgroundColor = "orange";
        </script>
        <%} else if ("workerDetails".equals(request.getAttribute("action"))) {%> 
        <script type="text/javascript">
            $('#getstarted').hide();
            $('#user_message').hide();
            $('#request').hide();
            $('#user_message').hide();
            $('#worker').show();
            document.getElementById("workerTabId").style.backgroundColor = "orange";
//            $('#workerTabId').addClass('active').style.color="blue";
        </script>
        <%} else if ("userRequestDetails".equals(request.getAttribute("action"))) {%> 
        <script type="text/javascript">
            $('#getstarted').hide();
            $('#user_message').hide();
            $('#request').show();
            $('#user_message').hide();
            $('#worker').hide();
            document.getElementById("userRequestTabId").style.backgroundColor = "orange";
        </script>
        <%} else {%>
        <script type="text/javascript">
            document.getElementById("homeTabId").style.backgroundColor = "orange";
        </script>        
        <%}%>
        <div class="row">
            <div class="container" style="width:100%;background:cadetblue;color:black;font-size:20px;">
                <!-- <div class="jumbotron" style="height:40%;background:#cdbfe3;"> -->
                <center>
                    <div class="col-lg-4 col-sm-4" style="border-right-style:groove;border-color:black;">
                        <div class="page-header" >
                            <b style="font-size:25px;font-weight:bold;color:darkslateblue;">
                                About company
                            </b>
                        </div>
                        <a href="E:\Project\main\terms.html" style="color:black;" >   Terms	</a> <br><br>
                        <a href="#" onclick="Rating()" style="color:black;" >  Ratings  </a><br><br>
                        <a href="#" onclick="getstarted()" style="color:black;" >   Discussions   </a><br>
                    </div>
                    <div class="col-lg-4 col-sm-4" style="border-right-style:groove;border-color:black">
                        <div class="page-header">
                            <b style="font-size:25px;font-weight:bold;color:darkslateblue;">
                                Workers ativity
                            </b>
                        </div>
                        <a href="#" onclick="Request()" style="color:black;"> Repairing  </a> <br><br>
                        <a href="#" onclick="Request()" style="color:black;">  cleaning  </a> <br><br>
                        <a href="#" onclick="Request()" style="color:black;">  Renovation  </a><br>
                    </div>
                    <div class="col-lg-4 col-sm-4" style="border-right-style:groove;border-color:black">
                        <div class="page-header">
                            <b style="font-size:25px;font-weight:bold;color:darkslateblue;">
                                Following
                            </b>
                        </div>
                        <a href="https://www.facebook.com/" style="color:black;" data-toggle="tooltip" title="find the following on facebook">
                            facebook
                            <i class="fa fa-facebook fa-lg"></i>
                        </a>
                        <br><br>
                        <a href="https://www.twitter.com/" style="color:black;" data-toggle="tooltip" title="find the following on twitter"> 
                            twitter 
                            <i class="fa fa-twitter fa-lg"></i>						
                        </a>
                        <br><br>
                        <a href="https://www.instagram.com/" style="color:black;" data-toggle="tooltip" title="Find the following on instagram">
                            instagram
                            <i class="fa fa-instagram fa-lg"></i>
                        </a>
                        <br>
                    </div>
                </center>
            </div>
        </div>
    </div>
</form>
</body>
</html>