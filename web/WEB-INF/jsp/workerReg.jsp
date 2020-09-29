<html>
    <head>
        <link rel="stylesheet" href="resources/bootstrap.min.css" media="all">
        <link rel="stylesheet" href="resources/p.css" media="all">
        <script src="boostrap.min.js" language="text/javascript">
        </script>
        <style>
            #grad4{ background: linear-gradient(to bottom right,pink,red,pink);}
            #grad{background: linear-gradient(skyblue, white);}
        </style>
        <script>
            function sub()
            {
                alert("details submitted");
            }
        </script>
    </head>
    <body id="grad">
        <form name="registration" method="post" action="user-registration" commandName="userCommand">
            <div class="row">
                <div class="col-md-12">
                    <marquee loop="100" behaviour="scroll" bgcolor="yellow" id="p1" > 
                        To use our services you must login to your account 
                    </marquee> 
                </div>
            </div>	
            <div class="row">
                <div class="col-lg-12"> 
                    <img src="images/pcs.jpg" style="border:2px solid black;height:140px;width:1530px"></img>
                </div>			
            </div>
            <div class="row">            
                <div class="col-lg-12">
                    <div class="form-group">
                        <br>
                        <div style="font-size:20px;text-align:center;font-weight:bold;text-shadow:1px 1px 1px white;font-family:oldenglish;color:red;">
                            ${statusMsg}
                        </div>
                        <div style="font-size:40px;text-align:center;font-weight:bold;text-shadow:1px 1px 1px white;font-family:oldenglish;color:darkslateblue;">
                            Registration
                        </div>
                        <br><br>
                        <center>
                            <input type="textbox" name="firstname" class="form-horizontal " required="true" style="width:450;height:38px;border-bottom:10px red;border-radius:15px;" placeholder="  First Name"><br><br>
                            <input type="textbox" name="lastname" class="form-horizontal " style="width:450;height:38px;border-bottom:10px red;border-radius:15px;" placeholder="  Last Name"><br><br>
                            <input type="textbox" name="username" class="form-horizontal " required="true" style="width:450;height:38px;border-bottom:10px red;border-radius:15px;" placeholder="  User name"><br><br>
                            <input type="textbox"  name="contactno" class="form-horizontal " pattern="[0-9]{10}" maxlength="10" required="true"  style="width:450;height:38px;border-bottom:10px red;border-radius:15px;" placeholder="  Mobile number"><br><br>
                            <input type="textbox"  name="email" class="form-horizontal" required="true"  style="width:450;height:38px;border-bottom:10px red;border-radius:15px;" placeholder="  Email address"><br><br>
                            <input type="password" name="password" pattern=".{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" class="form-horizontal" required="true"  style="width:450;height:38px;border-bottom:10px red;border-radius:15px;" placeholder="  Password"><br><br>
                            <input type="password"  name="confirmPassword" pattern=".{8,}" class="form-horizontal" required="true"  style="width:450;height:38px;border-bottom:10px red;border-radius:15px;" placeholder="  Confirm Password "><br><br>
                            <label class="control-label" style="font-size:18;font-family:garamond;font-weight:bold;"> <b style="color:darkslateblue;"> Gender </b> </label>&nbsp&nbsp&nbsp&nbsp
                            <select  style="width:140;height:38px;border-radius:15px;padding-left:2%;" required="true"  name="gender">
                                <option value="" >---Select---</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>&nbsp&nbsp&nbsp&nbsp&nbsp
                            <label class="control-label" style="font-size:18;font-family:garamond;font-weight:bold;"> <b style="color:darkslateblue;"> Area </b> </label>&nbsp&nbsp&nbsp&nbsp
                            <select style="width:140;height:38px;border-radius:15px;padding-left:2%;" required="true"  name="location" >
                                <option value="" >---Select---</option>
                                <option value="Hyderabad">Hyderabad</option>
                                <option value="Warangal">Warangal</option>
                                <option value="Adilabad">Adilabad</option>
                                <option value="Medak">Medak</option>
                                <option value="Karimnagar">Karimnagar</option>
                                <option value="Mahaboobnagar">Mahaboobnagar</option>
                                <option value="Nizambad">Nizambad</option>
                                <option value="Yadadri">Yadadri</option>
                                <option value="Nalgonda">Nalgonda</option>
                                <option value="Warangal">Warangal</option>
                            </select><br><br>
                            <input type="textbox" class="form-horizontal" required="true" name="captcha" style="width:450;height:38px;border-bottom:10px red;border-radius:15px;text-align:center;" placeholder="Captcha"><br><br>
                            <b style="color:darkslateblue;"> X8y4GNV </b> <br>
                            <input type="checkbox" name="p11" style="height:20px;width:20px;" required="true">&nbsp&nbsp
                            <b style="color:darkslateblue;">
                                By clicking Create Account, you agree to our <a href="terms.html" style="color:skyblue;" >Terms</a> and confirm 
                                that you have read our Data Policy, You may recieve SMS message notification from PCS and 
                                can opt out at any time. 
                            </b>
                            <br><br>
                            <input  type="submit" class=" btn btn-default" id="but2"  value="Create Account" name="b2" >
                        </center>
                        <hr>
                        <br>
                        <div class="col-lg-12 col-sm-12" style="text-align:center;color:white;font-weight:bold;" id="sub1">
                            Public Consultancy Services © 2018
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
