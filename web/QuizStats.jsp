<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <title>Qureka</title>

    <!-- Bootstrap core CSS -->

    <link href="css/bootstrap.min.css" rel="stylesheet">

     <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
  
    <!-- Custom styling plus plugins -->
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/green.css" rel="stylesheet">
  
    <script src="js/jquery.min.js"></script>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">

          <div class="col-md-3 left_col">
                <div class="left_col scroll-view" tabindex="5000" style="overflow: hidden; outline: none; cursor:pointer !important; width:230px;">

                 
                   
                    <!-- menu prile quick info -->
                 
                     <div class="clearfix"></div>

                 <div class="profile">
                       
                        <div class="profile_info">
                           <img src="images/logo.png" width="140"alt=""/>
                            
                        </div>
                    </div>
                   
                    <!-- /menu prile quick info -->
<div class="clearfix"></div>
                    <br>

                  <!-- sidebar menu -->
                  <div id="sidebar-menu"  class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                         
                            <ul class="nav side-menu">
                               <li><a><i class="fa fa-money"></i> Game Console <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="#">Dashboard</a>
                                        </li>
                                        <li><a href="#">Dashboard2</a>
                                        </li>
                                        <li><a href="#">Dashboard3</a>
                                        </li>
                                    </ul>
                                </li>
                             <li><a><i class="fa fa-bar-chart-o"></i> Product Stats <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                       <li><a href="User_Acqusitions.html">User Acqusitions</a></li>
                                          <li><a href="quiz_stats.html">Quiz Stats</a></li>
                                         <li><a href="Referral.html">Referral</a></li>
                                           <li><a href="winners.html">Winners</a></li>
                              <li><a href="Redemption.html">Redemption </a></li>
                                 <li><a href="User_Activity.html">User Activity</a></li>
                                  <li><a href="marketing_events.html">Marketing Events</a></li>
                                     <li><a href="block_users.html">Blocked Users</a></li>
                                     <li><a href="feedback.html">Feedback</a></li>
                                       <li><a href="users_log.html">Users Log</a></li>
                                         
                                    </ul>
                                </li>
                            
                               
                             
                          
                       
                              
                           
                                       
                            
                            </ul>
                      </div>
                  

                    </div>
                    <!-- /sidebar menu -->
              
                </div>
            </div>

            <!-- top navigation -->
          

              <div class="top_nav">

              <div class="nav_menu">
                    <nav class="" role="navigation">
                       <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        <ul class="nav navbar-nav navbar-right">
                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                  <img src="images/img.jpg" alt="">
                                   Dinesh Kumar
                                  <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                    <li><a href="javascript:;">  Profile</a>
                                    </li>
                                  
                                  
                                </ul>
                            </li>

                            

                        </ul>
                    </nav>
                </div>

            </div>

          
            <!-- /top navigation -->

            <!-- page content -->
            <div class="right_col" role="main">
          
                
                    
            <div class="row">
                        
                      <div class="col-xs-12">
                 
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Quiz Stats</h2>
                                    
                                    <div class="clearfix"></div>
                                </div>
                            
                               <div class="x_content">


                                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                            <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Mini Quiz </a>
                                            </li>
                                            <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Daily Quiz</a>
                                            </li>
                                             <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Mega Quiz (Monthly)</a>
                                            </li>
                                           
                                             
                                        </ul>
                                        <div id="myTabContent" class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                                     <div class="x_content">
                                       <div class="row" style="padding-top:20px;">
                                        <div class="col-md-5 col-sm-5 col-xs-12">
    
  <p>
                                            All:
                                            <input type="radio" class="flat" name="time" id="all" value="M" checked="" required="">
                                             09AM:
                                            <input type="radio" class="flat" name="time" id="time9" value="M">
                                             3PM:
                                            <input type="radio" class="flat" name="time" id="time3" value="F">
                                        </p>
  </div>
  
 <div class="col-md-3 col-sm-3 col-xs-12">   <div class="dateFilter clearfix">
                        <div class="form-group pull-left" style="margin-top:0px;">
                            <label for="dtp_input2" class="control-label" style="float:left; padding:5px 10px 0 0;">From :</label>
                            <div class="input-group date form_date_to" data-date="" data-date-format="MM, dd,  yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                <input class="form-control" size="16" type="text" value="" readonly>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                            <input type="hidden" id="dtp_input2" value=""><br>
                        </div>
                        
                      
                    </div></div>
                    <div class="col-md-3 col-sm-3 col-xs-12">   <div class="dateFilter clearfix">
                        
                        <div class="form-group pull-left" style="margin-top:0px;">
                            <label for="dtp_input2" class="control-label" style="float:left; padding:5px 10px 0 0;">To :</label>
                            <div class="input-group date form_date_from" data-date="" data-date-format="MM, dd,  yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                <input class="form-control" size="16" type="text" value="" readonly>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                            <input type="hidden" id="dtp_input2" value=""><br>
                        </div>
                       
                    </div></div>
                                      
                                 
                                     
                                      <div class="col-md-1 col-sm-1 col-xs-12">   <button type="button" class="btn btn-info">Submit</button></div>      
  </div>
                                     <div class="row tile_count">
                    <div class="animated flipInY col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Peak Concurrent </span>
                            <div class="count">25,000</div>
                       
                        </div>
                    </div>
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Players</span>
                            <div class="count">20,000</div>
                           
                        </div>
                    </div>
                  
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Latecomer </span>
                            <div class="count">1,567</div>
                          
                        </div>
                    </div>
                  
                </div>
                 <div class="row tile_count">
                    <div class="animated flipInY col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Winner </span>
                            <div class="count">5,500</div>
                       
                        </div>
                    </div>
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Prize Per User</span>
                            <div class="count">Rs50</div>
                           
                        </div>
                    </div>
                  
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Total Prize </span>
                            <div class="count">Rs10,000</div>
                          
                        </div>
                    </div>
                  
                </div>
                
                                     
                                     </div>
                                     
                                     
                                     <div class="x_content">
                         
                                  <!-- start project list -->
                                 <table class="table table-bordered jambo_table2">
                                        <thead>
                                            <tr>
                                                <th style="width:32%;">Event</th>
                                                <th style="width:32%;">Attempted </th>
                                                 <th>Eliminated</th>
                                              
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                
                                                <td>
                                            Question 1
                                                   
                                                </td>
                                             <td>25,000</td>
                                             <td>15,000</td>
                                            
                                              
                                               
                                            </tr>
                                              <tr>
                                                
                                                <td>
                                            Question 2
                                                   
                                                </td>
                                             <td>10,000</td>
                                             <td>7,000</td>
                                            
                                              
                                               
                                            </tr>
                                             <tr>
                                                
                                                <td>
                                            Question 3
                                                   
                                                </td>
                                             <td>3,000</td>
                                             <td>1,000</td>
                                            
                                              
                                               
                                            </tr>
                                          
                                            
                                            
                                            
                                            
                                            
                                              
                                          
                                             
                                          
                                        </tbody>
                                    </table>
                                  
                                  
                                    <!-- end project list -->
                              
                                
                                </div>
                                     
                                </div>
                                
                                
                                
                                          
                                            <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                                           
                                           <div class="x_content">
                                       <div class="row" style="padding-top:20px;">
                                      <div class="col-md-5 col-sm-5 col-xs-12">
    
  <p>
                                            All:
                                            <input type="radio" class="flat" name="time" id="all" value="M" checked="" required="">
                                             09AM:
                                            <input type="radio" class="flat" name="time" id="time9" value="M">
                                             3PM:
                                            <input type="radio" class="flat" name="time" id="time3" value="F">
                                        </p>
  </div>
  
 <div class="col-md-3 col-sm-3 col-xs-12">   <div class="dateFilter clearfix">
                        <div class="form-group pull-left" style="margin-top:0px;">
                            <label for="dtp_input2" class="control-label" style="float:left; padding:5px 10px 0 0;">From :</label>
                            <div class="input-group date form_date_to" data-date="" data-date-format="MM, dd,  yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                <input class="form-control" size="16" type="text" value="" readonly>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                            <input type="hidden" id="dtp_input2" value=""><br>
                        </div>
                        
                      
                    </div></div>
                    <div class="col-md-3 col-sm-3 col-xs-12">   <div class="dateFilter clearfix">
                        
                        <div class="form-group pull-left" style="margin-top:0px;">
                            <label for="dtp_input2" class="control-label" style="float:left; padding:5px 10px 0 0;">To :</label>
                            <div class="input-group date form_date_from" data-date="" data-date-format="MM, dd,  yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                <input class="form-control" size="16" type="text" value="" readonly>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                            <input type="hidden" id="dtp_input2" value=""><br>
                        </div>
                       
                    </div></div>
                                      
                                 
                                     
                                      <div class="col-md-1 col-sm-1 col-xs-12">   <button type="button" class="btn btn-info">Submit</button></div>      
  </div>
                                   <div class="row tile_count">
                    <div class="animated flipInY col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Peak Concurrent </span>
                            <div class="count">25,000</div>
                       
                        </div>
                    </div>
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Players</span>
                            <div class="count">20,000</div>
                           
                        </div>
                    </div>
                  
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Latecomer </span>
                            <div class="count">1,567</div>
                          
                        </div>
                    </div>
                  
                </div>
                 <div class="row tile_count">
                    <div class="animated flipInY col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Winner </span>
                            <div class="count">5,500</div>
                       
                        </div>
                    </div>
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Prize</span>
                            <div class="count">Rs50,000</div>
                           
                        </div>
                    </div>
                  
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Bonus </span>
                            <div class="count">Rs10,000</div>
                          
                        </div>
                    </div>
                  
                </div>
                   <div class="row tile_count">
                    <div class="animated flipInY col-sm-3 col-xs-3 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Prize Per Winner </span>
                            <div class="count">Rs50</div>
                       
                        </div>
                    </div>
                    <div class="animated flipInY  col-sm-3 col-xs-3 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Bonus Per Winner</span>
                            <div class="count">Rs1050</div>
                           
                        </div>
                    </div>
                  
                    <div class="animated flipInY  col-sm-3 col-xs-3 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Referral Winners </span>
                            <div class="count">Rs10</div>
                          
                        </div>
                    </div>
                       <div class="animated flipInY  col-sm-3 col-xs-3 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Referral Winners Amount </span>
                            <div class="count">Rs500</div>
                          
                        </div>
                    </div>
                  
                </div>
                                     
                                     </div>
                                     
                                     
                                     <div class="x_content">
                         
                                  <!-- start project list -->
                                 <table class="table table-bordered jambo_table2">
                                        <thead>
                                            <tr>
                                                <th style="width:25%;">Event</th>
                                                <th style="width:25%;">Attempted </th>
                                                 <th style="width:25%;">Eliminated</th>
                                                 <th style="width:25%;">Users used an extra life </th>
                                              
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                
                                                <td>Question 1</td>
                                             <td>25,000</td>
                                             <td>5,000</td>
                                            <td>1,000</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 2</td>
                                             <td>20,000</td>
                                             <td>3,000</td>
                                            <td>800</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 3</td>
                                             <td>17,000</td>
                                             <td>5,000</td>
                                            <td>600</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 4</td>
                                             <td>12,000</td>
                                             <td>2,000</td>
                                            <td>300</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 5</td>
                                             <td>10,000</td>
                                             <td>1,000</td>
                                            <td>1,000</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 6</td>
                                             <td>9,000</td>
                                             <td>1,000</td>
                                            <td>800</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 7</td>
                                             <td>8,000</td>
                                             <td>2,000</td>
                                            <td>300</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 8</td>
                                             <td>6,000</td>
                                             <td>4,000</td>
                                            <td>400</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 9</td>
                                             <td>2,000</td>
                                             <td>500</td>
                                            <td>_</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 10</td>
                                             <td>1500</td>
                                             <td>500</td>
                                            <td>_</td>
                                           
                                            </tr>
                                            
                                           
                                          
                                            
                                            
                                            
                                            
                                            
                                              
                                          
                                             
                                          
                                        </tbody>
                                    </table>
                                  
                                  
                                    <!-- end project list -->
                              
                                
                                </div>
                              
                                     
                                            </div>
                                              <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                                     <div class="x_content">
                                       <div class="row" style="padding-top:20px;">
                                      
  
 <div class="col-md-3 col-sm-3 col-xs-12">   <div class="dateFilter clearfix">
                        <div class="form-group pull-left" style="margin-top:0px;">
                            <label for="dtp_input2" class="control-label" style="float:left; padding:5px 10px 0 0;">From :</label>
                            <div class="input-group date form_date_to" data-date="" data-date-format="MM, dd,  yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                <input class="form-control" size="16" type="text" value="" readonly>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                            <input type="hidden" id="dtp_input2" value=""><br>
                        </div>
                        
                      
                    </div></div>
                    <div class="col-md-3 col-sm-3 col-xs-12">   <div class="dateFilter clearfix">
                        
                        <div class="form-group pull-left" style="margin-top:0px;">
                            <label for="dtp_input2" class="control-label" style="float:left; padding:5px 10px 0 0;">To :</label>
                            <div class="input-group date form_date_from" data-date="" data-date-format="MM, dd,  yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                <input class="form-control" size="16" type="text" value="" readonly>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                            <input type="hidden" id="dtp_input2" value=""><br>
                        </div>
                       
                    </div></div>
                                      
                                 
                                     
                                      <div class="col-md-1 col-sm-1 col-xs-12">   <button type="button" class="btn btn-info">Submit</button></div>      
  </div>
                                     <div class="row tile_count">
                    <div class="animated flipInY col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Peak Concurrent </span>
                            <div class="count">25,000</div>
                       
                        </div>
                    </div>
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Players</span>
                            <div class="count">20,000</div>
                           
                        </div>
                    </div>
                  
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Latecomer </span>
                            <div class="count">1,567</div>
                          
                        </div>
                    </div>
                  
                </div>
                 <div class="row tile_count">
                    <div class="animated flipInY col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Winner </span>
                            <div class="count">5,500</div>
                       
                        </div>
                    </div>
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Prize</span>
                            <div class="count">Rs50,000</div>
                           
                        </div>
                    </div>
                  
                    <div class="animated flipInY  col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Bonus </span>
                            <div class="count">Rs10,000</div>
                          
                        </div>
                    </div>
                  
                </div>
                   <div class="row tile_count">
                    <div class="animated flipInY col-sm-3 col-xs-3 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Prize Per Winner </span>
                            <div class="count">Rs50</div>
                       
                        </div>
                    </div>
                    <div class="animated flipInY  col-sm-3 col-xs-3 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Bonus Per Winner</span>
                            <div class="count">Rs1050</div>
                           
                        </div>
                    </div>
                  
                    <div class="animated flipInY  col-sm-3 col-xs-3 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Referral Winners </span>
                            <div class="count">Rs10</div>
                          
                        </div>
                    </div>
                       <div class="animated flipInY  col-sm-3 col-xs-3 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top">Referral Winners Amount </span>
                            <div class="count">Rs500</div>
                          
                        </div>
                    </div>
                  
                </div>
                                     
                                     </div>
                                     
                                     
                                     <div class="x_content">
                         
                                  <!-- start project list -->
                                 <table class="table table-bordered jambo_table2">
                                        <thead>
                                            <tr>
                                                <th style="width:25%;">Event</th>
                                                <th style="width:25%;">Attempted </th>
                                                 <th style="width:25%;">Eliminated</th>
                                                 <th style="width:25%;">Users used an extra life </th>
                                              
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                
                                                <td>Question 1</td>
                                             <td>25,000</td>
                                             <td>5,000</td>
                                            <td>1,000</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 2</td>
                                             <td>20,000</td>
                                             <td>3,000</td>
                                            <td>800</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 3</td>
                                             <td>17,000</td>
                                             <td>5,000</td>
                                            <td>600</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 4</td>
                                             <td>12,000</td>
                                             <td>2,000</td>
                                            <td>300</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 5</td>
                                             <td>10,000</td>
                                             <td>1,000</td>
                                            <td>1,000</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 6</td>
                                             <td>9,000</td>
                                             <td>1,000</td>
                                            <td>800</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 7</td>
                                             <td>8,000</td>
                                             <td>2,000</td>
                                            <td>300</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 8</td>
                                             <td>6,000</td>
                                             <td>4,000</td>
                                            <td>400</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 9</td>
                                             <td>2,000</td>
                                             <td>500</td>
                                            <td>_</td>
                                           
                                            </tr>
                                              <tr>
                                                
                                                <td>Question 10</td>
                                             <td>1500</td>
                                             <td>500</td>
                                            <td>_</td>
                                           
                                            </tr>
                                            
                                           
                                          
                                            
                                            
                                            
                                            
                                            
                                              
                                          
                                             
                                          
                                        </tbody>
                                    </table>
                                  
                                  
                                    <!-- end project list -->
                              
                                
                                </div>
                                </div>
                                            
                                        </div>
                                    </div>

                                </div>
                                 
                            </div>
              </div>
                       
                           
                        </div>
                        
                        
                        
                        
          

                      

                     
                    </div>
                
             
                    
                </div>
                <!-- /page content -->
            </div>

        </div>

        <div id="custom_notifications" class="custom-notifications dsp_none">
            <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
            </ul>
            <div class="clearfix"></div>
            <div id="notif-group" class="tabbed_notifications"></div>
        </div>
         <!-- amount range -->
<script>
   function modifyOffset() {
    var el, newPoint, newPlace, offset, siblings, k;
    width    = this.offsetWidth;
    newPoint = (this.value - this.getAttribute("min")) / (this.getAttribute("max") - this.getAttribute("min"));
    offset   = -1;
    if (newPoint < 0) { newPlace = 0;  }
    else if (newPoint > 1) { newPlace = width; }
    else { newPlace = width * newPoint + offset; offset -= newPoint;}
    siblings = this.parentNode.childNodes;
    for (var i = 0; i < siblings.length; i++) {
        sibling = siblings[i];
        if (sibling.id == this.id) { k = true; }
        if ((k == true) && (sibling.nodeName == "OUTPUT")) {
            outputTag = sibling;
        }
    }
    outputTag.style.left       = newPlace + "px";
    outputTag.style.marginLeft = offset + "%";
    outputTag.innerHTML        = this.value;
}

function modifyInputs() {
    
    var inputs = document.getElementsByTagName("input");
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].getAttribute("type") == "range") {
            inputs[i].onchange = modifyOffset;

            // the following taken from http://stackoverflow.com/questions/2856513/trigger-onchange-event-manually
            if ("fireEvent" in inputs[i]) {
                inputs[i].fireEvent("onchange");
            } else {
                var evt = document.createEvent("HTMLEvents");
                evt.initEvent("change", false, true);
                inputs[i].dispatchEvent(evt);
            }
        }
    }
}

modifyInputs();
    </script>
    
      <!-- amount range end -->
        <script src="js/bootstrap.min.js"></script>
   
        <!-- chart js -->
     
        <!-- bootstrap progress js -->
         
        <script src="js/jquery.nicescroll.min.js"></script>
        
        <!-- icheck -->
        <script src="js/icheck.min.js"></script>
        
    <script src="js/custom.js"></script>
    <!-- form wizard -->
 
    <script type="text/javascript" src="js/jquery.smartWizard.js"></script>
   <!-- Datatables -->
        <script src="js/jquery.dataTables.js"></script>
        <script src="js/dataTables.tableTools.js"></script>
        <script>
            $(document).ready(function () {
                $('input.tableflat').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                });
            });

            var asInitVals = new Array();
            $(document).ready(function () {
                var oTable = $('#example').dataTable({
                    "oLanguage": {
                        "sSearch": "Search all columns:"
                    },
                    "aoColumnDefs": [
                        {
                            'bSortable': false,
                            'aTargets': [0]
                        } //disables sorting for column one
            ],
                    'iDisplayLength': 12,
                    "sPaginationType": "full_numbers",
                    "dom": 'T<"clear">lfrtip',
                    "tableTools": {
                        "sSwfPath": "<?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?>"
                    }
                });
                $("tfoot input").keyup(function () {
                    /* Filter on the column based on the index of this element's parent <th> */
                    oTable.fnFilter(this.value, $("tfoot th").index($(this).parent()));
                });
                $("tfoot input").each(function (i) {
                    asInitVals[i] = this.value;
                });
                $("tfoot input").focus(function () {
                    if (this.className == "search_init") {
                        this.className = "";
                        this.value = "";
                    }
                });
                $("tfoot input").blur(function (i) {
                    if (this.value == "") {
                        this.className = "search_init";
                        this.value = asInitVals[$("tfoot input").index(this)];
                    }
                });
            });
        </script>
     <script type="text/javascript">
        $(document).ready(function () {
            // Smart Wizard 	
            $('#wizard').smartWizard();

            function onFinishCallback() {
                $('#wizard').smartWizard('showMessage', 'Finish Clicked');
                //alert('Finish Clicked');
            }
        });

        $(document).ready(function () {
            // Smart Wizard	
            $('#wizard_verticle').smartWizard({
                transitionEffect: 'slide'
            });

        });
		
	
    </script>
   
 <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Date', 'Sent', 'Open', 'Click'],
          ['28/12/2017', 1000, 400, 200],
          ['29/12/2017', 1170, 460, 250],
          ['30/12/2017', 660, 1120, 300],
		    ['31/12/2017', 660, 1120, 300],
          ['01/01/2018', 1030, 540, 350]
        ]);

        var options = {
          chart: {
         
           
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
  
 <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['Desktop', 1],
          ['Mobile', 2]
        ]);

        // Set chart options
        var options = {'title':'Open',
                       'width':350,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['Desktop', 3],
        
          ['Mobile', 1]
       
        ]);

        // Set chart options
        var options = {'title':'Click',
                       'width':350,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div2'));
        chart.draw(data, options);
      }
    </script>
    
    <script src="js/bootstrap-datetimepicker.min.js"></script>
   <script type="text/javascript">
        $('.form_date_to, .form_date_from').datetimepicker({
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2,
            forceParse: 0
        });
    </script>
   
</body>

</html>