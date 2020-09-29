<html>
    <head>
        <link rel="stylesheet" href="bootstrap.min.css" media="all">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" media="all">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="bootstrap.min.js" ></script>
        <style>
            #grad3
            {background: linear-gradient(to bottom,lightpink,lightyellow )last }
            #grad1
            { background: linear-gradient(to bottom right,lightpink ,lightblue,white,lightblue,lightcyan,lightblue, white,lightblue,lightpink) last }
        </style>
    </head>
    <body id="grad1">
        <div class="row">
            <div class="col-lg-12" style="border:1px solid black;margin-top:-1.3%;" >
                <center>
                    <img src="images/pcs.jpg" alt="img not found" height="20%" width="100%" ></img>
                </center>
            </div>
        </div>
    <center><br><br><br>
        <div class="col-lg-12" >
            <b style="font-size:30px;color:black">User Details</b>
        </div>
        <section  style="margin-left:26%;padding-top:4%;">
            <div id="grad3" style="float:left;padding:5%;border-top-right-radius: 30%;border-bottom-left-radius: 30%;
                 padding-left:4%;border: 1px groove green;width: 60%;border-left: 0.5em solid green;
                 border-right: 0.5em solid green;height:550px;">
                <center><br><br>
                    <form name="f1" method="post" action="saveUserEditDetails">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-4">
                                    <b style="font-size:20px;">New Username : </b>
                                </div>
                                <div class="col-lg-8">						
                                    <input type="hidden" value="${userDetails.userId}" name="userId">
                                    <input type="text" class="form-control" placeholder="enter new username" style="width:350px;" value="${userDetails.userName}" name="userName">
                                </div>
                            </div>
                            <br><br>
                            <div class="row">
                                <div class="col-lg-4">
                                    <b style="font-size:20px;">New Email Id : </b> 
                                </div>
                                <div class="col-lg-8">
                                    <input type="text" class="form-control" placeholder="enter new email id" style="width:350px;" value="${userDetails.email}" name="email">
                                </div>
                            </div>
                            <br><br>
                            <div class="row">
                                <div class="col-lg-4">
                                    <b style="font-size:20px;">New Phone no. : </b>
                                </div>
                                <div class="col-lg-8">
                                    <input type="text" class="form-control" placeholder="enter the new phone number" style="width:350px;" value="${userDetails.contactNo}" name="contactNo">
                                </div>
                            </div>		
                            <br><br>
                            <div class="row">
                                <div class="col-lg-4">
                                    <b style="font-size:20px;">New password : </b>
                                </div>
                                <div class="col-lg-8">
                                    <input type="password" class="form-control" placeholder="enter new password" style="width:350px;"  name="password">
                                </div>
                            </div>
                            <br><br>
                            <div class="row">
                                <div class="col-lg-4">
                                    <b style="font-size:20px;">Confirm password : </b>
                                </div>
                                <div class="col-lg-8">
                                    <input type="password" class="form-control" placeholder="enter again to confirm password" style="width:350px;" >
                                </div>
                            </div>
                            <br><br>
                            <div class="col-lg-12">
                                <center>
                                    <input type="submit" value="Submit" onclick="" style="" class="btn btn-default">
                                </center>
                                <br><br>
                            </div>
                        </div>
                    </form>
                </center>
            </div>
        </section>
    </center>
</body>
</html>


