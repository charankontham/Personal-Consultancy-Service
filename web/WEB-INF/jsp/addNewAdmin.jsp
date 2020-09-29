<html>
    <head>
        <link rel="stylesheet" href="bootstrap.min.css" media="all">
        <link rel="stylesheet" href="adminreg.css" media="all">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" media="all">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="bootstrap.min.js" ></script>
        <style>
            #grad3
            {background: linear-gradient(to bottom,lightpink,lightyellow );  last) }
            #grad1
            { background: linear-gradient(to bottom right,white ,lightblue,white,lightblue,lightcyan,lightblue, white,lightblue,white);  last) }
            txt{font-size:50px;font-family:engravers mt;text-shadow:1px 2px 2px white;color:midnightblue;}
            small{font-size:20px;text-shadow:2px 2px 2px silver;}
            p1{color:black;text-shadow:1px 1px 1px white;font-size:20px;}
            #gets{border-radius:10px;height:50px;width:150px; font-size:20px;text-shadow:1px 1px 1px black; border-width:3px;}

        </style>

        <script >
            function regis()
            {
                window.location = "www.google.com";
                alert("hai");
            }
        </script>
    </head>
    <body id="grad3">
        <div class="row">
            <div class="col-lg-12" style="border:1px solid black;margin-top:-1.3%;" >
                <center>
                    <img src="images/pcs.jpg" alt="img not found" height="20%" width="100%" ></img>
                </center>
            </div>
        </div>
    <center><br><br><br>
        <div class="col-lg-12" >
            <txt> Admin registration</txt>
        </div><br><br><br>
        <div class="col-lg-12">
            <section  style="margin-left:28%;padding-top:2%;">
                <div id="grad1" style="float:left;padding:5%;border-top-right-radius: 30%;border-bottom-left-radius: 30%;
                     padding-left:5%;border: 1px groove green;width: 60%;border-left: 0.5em solid green;
                     border-right: 0.5em solid green;height:550px;">
                    <center><br><br>
                        <form name="adminRegistration" action="add-admin" method="post">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <b style="font-size:17px;">Admin Name : </b>
                                    </div>
                                    <div class="col-lg-8">						
                                        <input type="text" class="form-control" placeholder="enter Admin name" style="width:350px;" name="username">
                                    </div>
                                </div>
                                <br><br>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <b style="font-size:17px;">Admin Mail-id : </b> 
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" placeholder="enter Admin mail-id" style="width:350px;" name="email">
                                    </div>
                                </div>
                                <br><br>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <b style="font-size:17px;">Admin Contact : </b>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" placeholder="enter Admin contact" style="width:350px;" name="contactno">
                                    </div>
                                </div>		
                                <br><br>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <b style="font-size:17px;">Admin password : </b>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="password" class="form-control" placeholder="enter password" style="width:350px;" name="password">
                                    </div>
                                </div>
                                <br><br>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <b style="font-size:17px;">Confirm password : </b>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="password" class="form-control" placeholder="enter again to confirm password" style="width:350px;" >
                                    </div>
                                </div>
                                <br><br>
                                <div class="col-lg-12">
                                    <center>
                                        <input type="submit" value="Register"  style="" class="btn btn-primary">
                                    </center>
                                    <br><br>
                                </div>
                            </div>
                        </form>
                    </center>
                </div>
            </section>
        </div>
        <div class="col-lg-12">
            <br><br><br>
        </div>
    </center>
</body>
</html>


