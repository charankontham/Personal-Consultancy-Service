<html>
    <head>
        <link rel="stylesheet" href="resources/bootstrap.min.css" media="all">
        <link rel="stylesheet" href="resources/css/mainpage.css" media="all">
        <script src="resources/boostrap.min.js" type="text/javascript">
        </script>
        <style>
            #bg {
                background: linear-gradient(to bottom ,pink,white,pink); 
            }
            #grad1 
            {
                background: linear-gradient(to bottom right, lightskyblue,white);  be last) ;
            }
        </style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
        <script src="resources/jquery-3.3.1.min.js" type="text/javascript"></script>
    </head>
    <body id="bg" >
        <form name="f1" method="post">
            <div class="row">
                <div class="col-lg-12">
                    <marquee loop="1000" behaviour="scroll" bgcolor="yellow" id="p1" > 
                        To &nbsp&nbsp provide/use our services you must have an account 
                    </marquee> e
                </div>	
            </div>
            <div class="row">
                <div class="col-lg-12" style="border:1px solid blueviolet;"> 
                    <img src="images/pcs.jpg" height="20%" width="100%" ></img>
                </div>	
            </div>
            <div class="col-lg-12" style="padding-top:10%;">
                <div class="col-lg-6" style="padding-left:10%;">
                    <div class="container">
                        <div class="jumbotron" style="border:2px double navy;height:35%;width:40%;text-align:center;" id="grad1">	
                            <h3> If u want to login as user click user account</h3><br>
                            <user> <a href="login.jsp" style="color:navy;" id="popover1" data-toggle="popover" data-html="true" data-content="<img src='user.jpg' >" data-placement="top" data-trigger="hover" title="For user login click on user login">  User login </a> </user> 
                        </div>
                    </div>
                </div>
                <div class="col-lg-6" style="padding-left:7%;">
                    <div class="container">
                        <div class="jumbotron" style="border:2px double navy;height:35%;width:40%;text-align:center;" id="grad1">		
                            <h3> If u want to login as worker click service provider</h3><br>
                            <div class="work">			
                                <a href="worker-reg.htm" style="color:navy;" data-toggle="tooltip" title="For service provider click on service provider"> Service provider </a>  	
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>