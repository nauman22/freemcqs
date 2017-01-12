<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="jquery1.Index" %>
<%@ OutputCache CacheProfile="Cache30Seconds" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Developed By Freemcqs.com">
    <meta name="author" content="Free mcqs">
    <meta name="keywords" content="Important Questions, Mcqs, Solved Mcqs, mcqs test, Past papers, online mcqs">
    <link rel="icon" href="acme-free/img/faviconFinal.ico" />


    <title>FreeMcqs For all | Online MCQS Test, Practise and result
    </title>

    <!-- Bootstrap core CSS -->
    <link href="/acme-free/css/bootstrap.min.css" rel="stylesheet">
    <link href="acme-free/css/alertify.core.css" rel="stylesheet" />
    <link href="acme-free/css/alertify.default.css" rel="stylesheet" />
    <link href="/acme-free/css/theme.css" rel="stylesheet">
    <link href="/acme-free/css/bootstrap-reset.css" rel="stylesheet">
   
    <!--external css-->
    <link href="/acme-free/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    

    <link href="jquery.mobile.custom/jquery.mobile.custom.structure.min.css" rel="stylesheet" />
    <link href="jquery.mobile.custom/jquery.mobile.custom.theme.min.css" rel="stylesheet" />


   
    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="/acme-free/css/component.css">
    <link href="/acme-free/css/style.css" rel="stylesheet">
    <link href="/acme-free/css/style-responsive.css" rel="stylesheet" />
    <link href="/DataTables_1/datatables.min.css" rel="stylesheet" />
    <link href="/DataTables_1/Select-1.1.2/css/select.dataTables.min.css" rel="stylesheet" />
    <link href="/DataTables_1/Responsive-2.0.2/css/responsive.dataTables.min.css" rel="stylesheet" />
    <link href="/acme-free/css/tooltipster.css" rel="stylesheet" />
    <%--<link href:"//cdn.datatables.net/select/1.1.2/js/dataTables.select.min.js" />--%>
    <style>
        .cancelTest {
        }

        .ddlattempted {
            background: green;
            color: white;
        }

        .ddlnotattempted {
            background: #EA082A;
            color: white;
        }

        .btnReporttoggle {
        }

        @media only screen and (max-width: 480px) {
            #testheader {
                min-height: 200px;
            }
        }

        @media only screen and (min-width: 480px) and (max-width: 768px) {
            #testheader {
                min-height: 100px;
            }
        }

        @media only screen and (min-width: 768px) and (max-width: 959px) {
            #testheader {
                min-height: 72px;
            }
        }

        @media only screen and (min-width: 959px) {
            #testheader {
                min-height: 72px;
            }
        }

        .div_doubt_option {
        }

        .div_incorrect_answer {
        }

        .div_notclear_option {
        }

        .div_incorrect_Question {
        }

        .ddl_user_correct {
        }

        .btn_FinalReport {
        }

        .ReportMcq {
        }

        .sharemcq {
        }

        .uniquemcq {
        }

        #divMyTags
{
    text-align: center;
}

.closeall {
    opacity:1.0;
    font-size: 35px;
    float: right;
  
    cursor: pointer;
   
}
body{
    overflow-x:hidden;
}
input[type="checkbox"]{outline: solid #2d08a0 !important}
    </style>



   <%-- <script src="/acme-free/js/html2canvas.js"></script>
    <script src="/acme-free/js/Canvas2Image.js"></script>
    <script src="/acme-free/js/JsCode.js"></script>--%>
</head>

<body>

    <div class="container">

   

    <!--header start-->
    <header class="head-section" id="mainheader">
        <div class="navbar navbar-default navbar-static-top container">
            <div class="navbar-header">
                <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse"
                    type="button">
                    <span class="icon-bar"></span><span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="default.aspx">Free<span>Mcqs</span></a>
            </div>


            <div class="add">
            </div>


            <div class="navbar-collapse collapse in" style="height: auto;">
                <ul class="nav navbar-nav">
                    <li>
                         <a class="btn btn-login"  href="General_Pages/SignUpAdmin.aspx">Sign Up</a>
                
                  </li>
                    </ul>
                
                
                </div>
           



            <%-- </div>--%>
            <button id="share_button" style="display: none;"></button>

            <%-- <a href="#" class="" data-toggle="tooltip" data-html="true" data-placement="right" title="<img src='acme-free/img/skill.jpg'/>" />How</a>
                <a href="#" data-toggle="tooltip" title="Hooray!">Hover over me</a>
                <a href="#" data-toggle="tooltip" data-placement="top" title="Hooray!">Hover</a>--%>
        </div>

    </header>
    <!--header end-->
    <header class="head-section" id="testheader" style="display: none;">

        <div class="navbar navbar-default navbar-fixed-top navbar-static-top  container" id="fixedheader" style="background-color:#ffffff; min-height: 72px;">
            <div class="navbar-header">
                
                <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse"
                    type="button">
                    <span data-target=".navbar-collapse"  class="icon-bar"></span><span class="icon-bar"></span>
                    <span data-target=".navbar-collapse" class="icon-bar"></span>
                </button>
                   <a data-target=".navbar-collapse" class="navbar-brand" href="default.aspx">Free<span>Mcqs</span></a>
                  <label  data-target=".navbar-collapse" data-toggle="collapse" style="">Question Status:</label>
                <select data-target=".navbar-collapse" data-toggle="collapse" id="ddlallquiz" class=" dropdown dropdown-submenu">
                    <option value="0">Select</option>
                    <option class="ddlattempted" value="1">1</option>
                    <option class="ddlnotattempted" value="2">2</option>
                </select>
                 <div class="navbar-collapse collapse in" style="height: auto;">
             
                <label data-target=".navbar-collapse" id="lblTestNamed" style="display:none;"></label>
                <label data-target=".navbar-collapse" data-toggle="collapse" style="">Total Questions:</label>
                <label data-target=".navbar-collapse" data-toggle="collapse" id="totq"></label>
                <label data-target=".navbar-collapse" data-toggle="collapse" id="totr_text" style="">Remaining: </label>
                <label data-target=".navbar-collapse" data-toggle="collapse" id="totr"></label>
              

                <button data-toggle="collapse" id="btndefaulthome" class="btn btn-danger">Cancel</button>
            </div>
                </div>
        </div>
    </header>
   
    <div class="row">
     

        <div class="col-sm-9" id="divhometbl" style="display:none;">
           <div class="row">
               <div class="col-xs-1"></div>
               <div class="col-xs-5">
                     <a class="closeall btn btn-danger" style="float:left !important"> Back</a>
               </div>
               <div class="col-xs-6">
                     <a> <img width="25px" height="25px" class="closeall" src="acme-free/img/cross.png" /></a>
               </div>
           </div>
         
            <div class="container" id="allmcqscount" style="display: none;">
               
                <div class="row mar-b-50">
                    <div class="col-md-12">
                        <div align="center">
                            <%-- <canvas id="myCanvas" width="900" height="400"></canvas>--%>
                            <img src="" id="newimg_fb">
                        </div>
                        <div class="text-center feature-head wow fadeInDown">
                            <div class="DTS_Loading" id="divloading"></div>
                            <label id="totalmcqs" style="font-family: monospace; font-size: 12px; font-weight: normal;"></label>
                            <hr />
                            <%-- <a href="Online-MCAT-ECAT-NEET-UKAT-MEDICAL-Engineering-Free-Mcq-Mcqs-Test-Practise-download/TestId=1262">Practise</a>--%>
                            <div id="testimg">
                            </div>
                            <div id="img-out"></div>
                        </div>
                    </div>
                </div>
            </div>
            <h1 id="div1loading"></h1>

            <div class="property gray-bg" style="margin-top: -167px;">
                <div class="container" id="maintable">
                
                    <div class="row">
                        <div class="col-lg-12 col-sm-12  wow fadeInLeft">
                            <table id="example" class="display" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>Sr. No.</th>
                                        <th>Subject Name</th>
                                        <th>Test Name</th>
                                        <th>TestId</th>
                                        <th>SubId</th>
                                        <th>Made By</th>
                                        <th>Total Mcqs</th>
                                        <th>Make Practice</th>
                                        <th>Take Test</th>
                                        <th>Add Mcqs</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>

                            </table>

                        </div>





                    </div>
                </div>
            </div>
        </div>
        <div style="background-color: lightblue; height: auto;" class="col-sm-3">
        </div>



        <div class="feature-box" id="catbox">
            <div class="container">
            <div class="row">

            
            <div id="vu_catbox" class="col-md-4 col-sm-4 text-center wow fadeInUp animated" data-wow-animation-name="fadeInUp" style="border: inherit; visibility: visible; animation-name: fadeInUp;">
                <div class="feature-box-heading">
                    <em>
                        <img src="All_Images/logo.png" alt="" width="130" height="78">
                    </em>
                    <h4>
                        <b>Virtual University</b>
                    </h4>
                    <label><span class="glyphicon glyphicon-flag " aria-hidden="true"></span>This Category has overall <span id="divvucattotaltests" class="badge bg-blue" aria-hidden="true" >Please Wait...</span> <span style="color:red;">Tests</span> and <span id="divvucattotalmcqs" class="badge bg-green" aria-hidden="true"></span> <span style="color:darkblue;">MCQS</span>.</label>
                </div>
                <div>
                    <div id="divvucat" class="list-group" style="font-size: 12px; text-align: left;">
                    </div>


                </div>

            </div>
            <div id="med_catbox" class="col-md-4 col-sm-4 text-center wow fadeInUp animated" data-wow-animation-name="fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                <div class="feature-box-heading">
                    <em>
                        <img src="All_Images/0.jpg" alt="" width="130" height="78">
                    </em>
                    <h4>
                        <b>Medical</b>
                    </h4>
                        <label><span class="glyphicon glyphicon-flag " aria-hidden="true"></span>This Category has overall <span id="divmedcattotaltests" class="badge bg-blue" aria-hidden="true" >Please Wait...</span> <span style="color:red;">Tests</span> and <span id="divmedcattotalmcqs" class="badge bg-green" aria-hidden="true"></span> <span style="color:darkblue;">MCQS</span>.</label>
                </div>
                <div id="divmedcat" class="list-group" style="font-size: 12px; text-align: left;">
                    
                </div>
            </div>
            <div id="engg_catbox" class="col-md-4 col-sm-4 text-center wow fadeInUp animated" data-wow-animation-name="fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                <div class="feature-box-heading">
                    <em>
                        <img src="All_Images/engine.jpg" alt="" width="130" height="78">
                    </em>
                    <h4>
                        <b>Engineering</b>
                    </h4>
                    <label><span class="glyphicon glyphicon-flag " aria-hidden="true"></span>This Category has overall <span id="divenggcattotaltests" class="badge bg-blue" aria-hidden="true" >Please Wait...</span> <span style="color:red;">Tests</span> and <span id="divenggcattotalmcqs" class="badge bg-green" aria-hidden="true"></span> <span style="color:darkblue;">MCQS</span>.</label>
                </div>
                <div id="divengcat" class="list-group" style="font-size: 12px; text-align: left;">
                  
                </div>
            </div>
                </div>
            <div class="row">

           
            <div id="compet_catbox" class="col-md-4 col-sm-4 text-center wow fadeInUp animated" data-wow-animation-name="fadeInUp" style="border: inherit; visibility: visible; animation-name: fadeInUp;">
                <div class="feature-box-heading">
                    <em>
                        
                        <img src="All_Images/comp.jpg" alt="" width="130" height="78">
                    </em>
                    <h4>
                        <b>Competitive Test</b>
                    </h4>
                    <label><span class="glyphicon glyphicon-flag " aria-hidden="true"></span>This Category has overall <span id="divcompcattotaltests" class="badge bg-blue" aria-hidden="true" >Please Wait...</span> <span style="color:red;">Tests</span> and <span id="divcompcattotalmcqs" class="badge bg-green" aria-hidden="true"></span> <span style="color:darkblue;">MCQS</span>.</label>
                </div>
                <div>
                    <div id="divcomptcat" class="list-group" style="font-size: 12px; text-align: left;">
                    </div>


                </div>

            </div>
            <div id="adm_catbox" class="col-md-4 col-sm-4 text-center wow fadeInUp animated" data-wow-animation-name="fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                <div class="feature-box-heading">
                    <em>
                       
                        <img src="All_Images/Adm2.jpg" alt="" width="130" height="78">
                    </em>
                    <h4>
                        <b>Admission Test</b>
                    </h4>
                    <label><span class="glyphicon glyphicon-flag " aria-hidden="true"></span>This Category has overall <span id="divadmcattotaltests" class="badge bg-blue" aria-hidden="true" >Please Wait...</span> <span style="color:red;">Tests</span> and <span id="divadmcattotalmcqs" class="badge bg-green" aria-hidden="true"></span> <span style="color:darkblue;">MCQS</span>.</label>
                </div>
                <div id="divAdmtest" class="list-group" style="font-size: 12px; text-align: left;">
                   
                </div>
            </div>
            <div id="job_catbox" class="col-md-4 col-sm-4 text-center wow fadeInUp animated" data-wow-animation-name="fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                <div class="feature-box-heading">
                    <em>
                   
                        <img src="All_Images/Jobs.jpg" alt="" width="130" height="78">
                    </em>
                    <h4>
                        <b>Job Tests</b>
                    </h4>
                    <label><span class="glyphicon glyphicon-flag " aria-hidden="true"></span>This Category has overall <span id="divjobcattotaltests" class="badge bg-blue" aria-hidden="true" >Please Wait...</span> <span style="color:red;">Tests</span> and <span id="divjobcattotalmcqs" class="badge bg-green" aria-hidden="true"></span> <span style="color:darkblue;">MCQS</span>.</label>
                </div>
                <div id="divjobtest" class="list-group" style="font-size: 12px; text-align: left;">
                   
                </div>
            </div>

</div>
            <div class="row">
            <div id="skill_catbox" class="col-md-4 col-sm-4 text-center wow fadeInUp animated" data-wow-animation-name="fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                <div class="feature-box-heading">
                    <em>
                     
                        <img src="All_Images/skill.jpeg" alt="" width="130" height="78">
                    </em>
                    <h4>
                        <b>Skill Tests</b>
                    </h4>
                    <label><span class="glyphicon glyphicon-flag " aria-hidden="true"></span>This Category has overall <span id="divskillcattotaltests" class="badge bg-blue" aria-hidden="true" >Please Wait...</span> <span style="color:red;">Tests</span> and <span id="divmedskilltotalmcqs" class="badge bg-green" aria-hidden="true"></span> <span style="color:darkblue;">MCQS</span>.</label>
                </div>
                <div id="divskilltest" class="list-group" style="font-size: 12px; text-align: left;">
                   
                </div>
            </div>
            <div id="misc_catbox" class="col-md-4 col-sm-4 text-center wow fadeInUp animated" data-wow-animation-name="fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                <div class="feature-box-heading">
                    <em>
                       
                        <img src="All_Images/miscellaneous-002.jpg" alt="" width="130" height="78">
                    </em>
                    <h4>
                        <b>Misc Tests</b>
                    </h4>
                    <label><span class="glyphicon glyphicon-flag " aria-hidden="true"></span>This Category has overall <span id="divmisccattotaltests" class="badge bg-blue" aria-hidden="true" >Please Wait...</span> <span style="color:red;">Tests</span> and <span id="divmisccattotalmcqs" class="badge bg-green" aria-hidden="true"></span> <span style="color:darkblue;">MCQS</span>.</label>
                </div>
                <div id="divothertest" class="list-group" style="font-size: 12px; text-align: left;">
                  
                </div>
            </div>
                </div>
        </div>
        </div>
        <!--feature end-->
    </div>
    
   
        <div class="container">
            <div id="LoadMcqsAllQuestion" class="mcqsShow ">
                <div class="row" style="overflow-x:hidden;">
                   
                    <div id="tblLoadMcqsAllQuestion" class="col-sm-12" style="overflow-x:hidden; margin-left: 0%; width: 100%; margin-top: 14%; display: none;">
                    </div>


                    <button id="btnShowResultdiv" class="myresult btn btn-info btn-lg" style="margin-left: 2%; display: none;">Show Result</button>
                    <button id="btnPracticethistest" class="myresult btn btn-info btn-lg" style="display: none;">Practice this Test</button>
                    <button id="btntestthistest" class="myresult btn btn-info btn-lg" style="margin-left: 2%; display: none;">Take Test</button>

                </div>
            </div>
      
        </div>
  
    <div class="container">
        <div class="row">
            
            <div id="bgimg" style=" margin: 0 auto; display: none; margin-top: 10%;" class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
                <table border="1" class="table" style="background-image: linear-gradient(rgba(255,255,255,0.9),rgba(255,255,255,0.9)), url(/acme-free/img/pas.jpg);">
                    <thead>
                        <tr style="text-align: center;">

                            <th>
                                <label style="margin: auto; font-size: 16px;">Result Card</label>
                            </th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <p>
                                    <label id="lblcand">Your overall result is</label>
                                    <label style="color: green; text-align: center; font-size: 16px;" id="lblpercent">%</label>

                                </p>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <label style="font-weight: normal;">Score:   </label>
                                <label id="lbloboutoffull"></label>
                            </td>




                        </tr>
                        <tr>

                            <td>
                                <label id="lblresultmsg" style="color: green;">Congratulations You PASSED this Test Successfully. </label>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <label style="font-weight: normal;">Grade:   </label>
                                <label id="lblgrade"></label>
                                <br />
                                <label style="font-weight: normal;">Remarks:   </label>
                                <label id="lblcomment"></label>
                            </td>
                        </tr>
                        <tr style="text-align: center;">
                            <td>
                                <button class="btn btn-info btn-lg" id="btnTestagain">Test Again</button>
                                <button class="btn btn-success btn-lg" id="btnpractiseagain">Practice this test</button>
                                <button class="btn btn-primary btn-lg" id="btnDownloadResultCard">Download Result Card</button>

                            </td>

                        </tr>
                    </tbody>


                    <%-- <tr><td colspan="4"><h4>Your Rank in this Test is 2nd</h4></td></tr>--%>
                </table>
                <img id="congrats" name="congrats" src="/Executeable_App/congrats.gif" style="margin-left: 27%; display: none;" />

            </div>
        </div>

        <div class="container" id="divinst" style="display: none; margin-top: 9%;">
            <h3>Please read the following instructions carefully before attempting Quiz</h3>
            <p>
                • This quiz consists of only Multiple Choice Questions (MCQ’s) carrying 1 mark each.<br />
                • Read questions carefully and select the most appropriate answer for each MCQ.<br />
                • Avoid selecting two choices for one MCQ. The double options will be marked zero.<br />
                • All instructions will be considered while marking. So, be careful while attempting the quiz.
            </p>
            <br />
            <input type="button" id="canceltest" class="btn btn-danger btn-lg" value="Cancel" />
            <input type="button" id="proceedfur" class="btn btn-info btn-lg" value="Take Quiz" />
        </div>
    </div>
  
    <div class="container">
        <div class="row mar-b-50">
            <div id="divCommonSubTestNumb" style="display: none;">
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-3">
                            <label id="lblSubjectName" class="control-label" for="ddlSubject"><span>Subject</span></label>
                            <select id="ddlSubject" name="ddlSubject" class=""></select>
                        </div>

                        <div class="col-md-3">
                            <label id="lblTestName" class="control-label" for="ddlTest"><span>Test</span></label>
                            <select id="ddlTest" name="ddlTest" class=" "></select>
                        </div>

                        <div class="col-md-3">
                            <label class="control-label" for="ddlPoints"><span>Points</span></label>
                            <select id="ddlPoints" class="">
                                <option value="1">1 Point</option>
                                <option value="2">2 Points</option>
                                <option value="3">3 Points</option>
                                <option value="4">4 Points</option>
                                <option value="5">5 Points</option>
                                <option value="6">6 Points</option>
                                <option value="7">7 Points</option>
                                <option value="8">8 Points</option>
                                <option value="9">9 Points</option>
                                <option value="10">10 Points</option>
                            </select>
                            <label style="width: 100%;">
                                <input type="checkbox" id="chkreloadpage" value="1" />
                                Reload on click on Save button.
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div id="divMcqsQuestion" style="display: none">

                <div class="row">
                    <div class="col-md-12">
                        <input type="button" id="btnQuestionSimpleBox" class="btn btn-xs btn-info" value="Simple Textbox" />

                        <input type="button" id="btnQuestionckeditor" class="btn btn-xs btn-info" value="Textbox With Options" />
                        <div class="focusguard" id="focusguard-1" tabindex="1"></div>
                        <input tabindex="2" type="button" id="btnShowHidetxtQuestion" class="btn btn-xs btn-info" value="Show/Hide Question" />
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-4 col-md-offset-8">
                        <label id="lblQuestionComplete" class="available "></label>
                    </div>
                    <div class="col-md-4 text-right">
                        <label id="lblQuestionBefore" class="available"></label>
                    </div>
                </div>
                <div class="row">
                    <div id="divtxtQuestion" class="col-md-12">
                        <br />
                        <textarea tabindex="3" name="txtQuestion" id="txtQuestion" style="width: 100%" class="mousetrap"></textarea>
                    </div>

                </div>

                <hr />
                <div class="row">

                    <div class="col-md-6">
                        <input type="button" id="btnOption1SimpleBox" class="btn btn-xs btn-info" value="Simple Textbox" />
                        <input type="button" id="btnOption1ckeditor" class="btn btn-xs btn-info" value="Textbox With Options" />
                        <input type="button" id="btnShowHidetxtOption1" class="btn btn-xs btn-info" value="Show/Hide Option 1" />
                    </div>
                    <div class="col-md-6">
                        <input type="button" id="btnOption2SimpleBox" class="btn btn-xs btn-info" value="Simple Textbox" />
                        <input type="button" id="btnOption2ckeditor" class="btn btn-xs btn-info" value="Textbox With Options" />
                        <input type="button" id="btnShowHidetxtOption2" class="btn btn-xs btn-info" value="Show/Hide Option 2" />
                    </div>


                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div id="divtxtOption1">
                            <div class="form-group">
                                <label style="width: 100%; display: inline-flex;">
                                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                                        <input tabindex="4" type="checkbox" id="chkOption1" value="1" class="minimal" style="position: relative; opacity: 25;" />
                                        <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
                                    </div>
                                    This Option 1 is Correct!
                                </label>

                                <textarea tabindex="5" name="content" id="txtOption1" style="width: 100%" class="mousetrap"></textarea>
                            </div>
                        </div>

                    </div>
                    <div id="divtxtOption2" class="col-md-6">
                        <div class="form-group">
                            <label style="width: 100%; display: inline-flex;">
                                <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                                    <input tabindex="6" type="checkbox" id="chkOption2" value="1" class="minimal" style="position: relative; opacity: 25;" />
                                    <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
                                </div>
                                This Option 2 is Correct!
                            </label>

                            <textarea tabindex="7" name="content" id="txtOption2" style="width: 100%" class="mousetrap"></textarea>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-6">
                        <input type="button" id="btnOption3SimpleBox" class="btn btn-xs btn-info" value="Simple Textbox" />
                        <input type="button" id="btnOption3ckeditor" class="btn btn-xs btn-info" value="Textbox With Options" />
                        <input type="button" id="btnShowHidetxtOption3" class="btn btn-xs btn-info" value="Show/Hide Option 3" />
                    </div>
                    <div class="col-md-6">
                        <input type="button" id="btnOption4SimpleBox" class="btn btn-xs btn-info" value="Simple Textbox" />
                        <input type="button" id="btnOption4ckeditor" class="btn btn-xs btn-info" value="Textbox With Options" />
                        <input type="button" id="btnShowHidetxtOption4" class="btn btn-xs btn-info" value="Show/Hide Option 4" />
                    </div>


                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div id="divtxtOption3">
                            <div class="form-group">
                                <label style="width: 100%; display: inline-flex;">
                                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                                        <input tabindex="8" type="checkbox" id="chkOption3" value="1" class="minimal" style="position: relative; opacity: 25;" />
                                        <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
                                    </div>
                                    This Option 3 is Correct!
                                </label>
                                <textarea tabindex="9" name="content" id="txtOption3" style="width: 100%" class="mousetrap"></textarea>
                            </div>
                        </div>
                    </div>
                    <div id="divtxtOption4" class="col-md-6">
                        <div class="form-group">
                            <label style="width: 100%; display: inline-flex;">
                                <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                                    <input tabindex="10" type="checkbox" id="chkOption4" value="1" class="minimal" style="position: relative; opacity: 25;" />
                                    <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
                                </div>
                                This Option 4 is Correct!
                            </label>
                            <textarea tabindex="11" name="content" id="txtOption4" style="width: 100%" class="mousetrap"></textarea>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-6">
                        <input tabindex="13" type="button" id="btnSave" name="btnSave" class="btn btn-success btn-lg" value="Save" />

                        <input type="button" id="btncancel" class="btn btn-warning" value="Cancel" />
                        <input type="button" id="btnMoreOptions" class="btn btn-success" value="More Options" />
                        <input type="button" id="btnReference" class="btn btn-success" value="Reference" />
                        <input type="button" id="btnExplanation" class="btn btn-success" value="Explanation" />

                    </div>
                </div>
                <div id="MoreOptions">
                    <hr />
                    <div class="row">
                        <div class="col-md-6">
                            <input type="button" id="btnOption5SimpleBox" class="btn btn-xs btn-info" value="Simple Textbox" />
                            <input type="button" id="btnOption5ckeditor" class="btn btn-xs btn-info" value="Textbox With Options" />
                            <input type="button" id="btnShowHidetxtOption5" class="btn btn-xs btn-info" value="Show/Hide Option 5" />
                        </div>
                        <div class="col-md-6 ">
                            <input type="button" id="btnOption6SimpleBox" class="btn btn-xs btn-info" value="Simple Textbox" />
                            <input type="button" id="btnOption6ckeditor" class="btn btn-xs btn-info" value="Textbox With Options" />
                            <input type="button" id="btnShowHidetxtOption6" class="btn btn-xs btn-info" value="Show/Hide Option 6" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div id="divtxtOption5">
                                <div class="form-group">
                                    <label style="width: 100%; display: inline-flex;">
                                        <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                                            <input type="checkbox" id="chkOption5" value="1" class="minimal" style="position: relative; opacity: 25;" />
                                            <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
                                        </div>
                                        This Option 5 is Correct!
                                    </label>
                                    <textarea name="content" id="txtOption5" style="width: 100%" class="mousetrap"></textarea>
                                </div>
                            </div>

                        </div>
                        <div id="divtxtOption6" class="col-md-6">
                            <div class="form-group">
                                <label style="width: 100%; display: inline-flex;">
                                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                                        <input type="checkbox" id="chkOption6" value="1" class="minimal" style="position: relative; opacity: 25;" />
                                        <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
                                    </div>
                                    This Option 6 is Correct!
                                </label>
                                <textarea name="content" id="txtOption6" style="width: 100%"></textarea>
                            </div>

                        </div>
                    </div>
                    <hr />
                    <div class="row">

                        <div class="col-md-6">
                            <input type="button" id="btnOption7SimpleBox" class="btn btn-xs btn-info" value="Simple Textbox" />
                            <input type="button" id="btnOption7ckeditor" class="btn btn-xs btn-info" value="Textbox With Options" />
                            <input type="button" id="btnShowHidetxtOption7" class="btn btn-xs btn-info" value="Show/Hide Option 7" />
                        </div>
                        <div class="col-md-6 ">
                            <input type="button" id="btnOption8SimpleBox" class="btn btn-xs btn-info" value="Simple Textbox" />
                            <input type="button" id="btnOption8ckeditor" class="btn btn-xs btn-info" value="Textbox With Options" />
                            <input type="button" id="btnShowHidetxtOption8" class="btn btn-xs btn-info" value="Show/Hide Option 8" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div id="divtxtOption7">
                                <div class="form-group">
                                    <label style="width: 100%; display: inline-flex;">
                                        <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                                            <input type="checkbox" id="chkOption7" value="1" class="minimal" style="position: relative; opacity: 25;" />
                                            <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
                                        </div>
                                        This Option 7 is Correct!
                                    </label>
                                    <textarea name="content" id="txtOption7" style="width: 100%"></textarea>
                                </div>
                            </div>

                        </div>
                        <div id="divtxtOption8" class="col-md-6">
                            <div class="form-group">
                                <label style="width: 100%; display: inline-flex;">
                                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                                        <input type="checkbox" id="chkOption8" value="1" class="minimal" style="position: relative; opacity: 25;" />
                                        <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
                                    </div>
                                    This Option 8 is Correct!
                                </label>
                                <textarea name="content" id="txtOption8" style="width: 100%"></textarea>
                            </div>
                        </div>

                    </div>

                </div>


                <div class="row">
                    <div class="col-md-6">
                        <div id="reference">
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="col-md-12"><span class="h3">Reference:</span></label>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <textarea name="content" id="txtReference" style="width: 100%"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div id="Explanation">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="col-md-12"><span class="h3">Explanation:</span></label>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <textarea name="content" tabindex="12" id="txtExplanation" style="width: 100%"></textarea>
                                </div>
                                <div class="focusguard" id="focusguard-2" tabindex="14"></div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    
        <script src="acme-free/js/json2.js"></script>
    <script src="/Scripts/jquery-1.11.2.min.js"></script>
   
    <script src="/acme-free/js/bootstrap.min.js"></script>
        
        <script src="acme-free/js/jstorage.js"></script>
    <script src="/acme-free/js/alertify.min.js"></script>
    <script type="text/javascript" src="/acme-free/js/hover-dropdown.js"></script>
  
    <script src="/acme-free/js/jquery.blockUI.js"></script>

    <script src="/DataTables_1/datatables.min.js"></script>

    <script src="/DataTables_1/Select-1.1.2/js/dataTables.select.min.js"></script>

    <script src="/DataTables_1/Responsive-2.0.2/js/dataTables.responsive.js"></script>
    <script src="/ckeditor/ckeditor.js"></script>
    

    <script>

        $("#btnSavepngimg").click(function () {


            html2canvas($("#mytb"), {
                onrendered: function (canvas) {
                    theCanvas = canvas;
                    document.body.appendChild(canvas);

                    // Convert and download as image 
                    Canvas2Image.saveAsPNG(canvas);
                    $("#img-out").append(canvas);
                    // Clean up 
                    document.body.removeChild(canvas);
                }
            });
        });
        window.fbAsyncInit = function () {
            FB.init({
                appId: '1652596581731791',
                status: true, // check login status
                cookie: true, // enable cookies to allow the server to access the session
                xfbml: true,// parse XFBML,
                oauth: true


            });
        };
        (function () {
            var e = document.createElement('script');
            e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
            e.async = true;
            //$("sharemcq").appendChild(e);
            document.getElementById('share_button').appendChild(e);
        }());
        var Router = {
            routes: [],
            mode: null,
            root: '/',
            config: function (options) {
                this.mode = options && options.mode && options.mode == 'history'
                            && !!(history.pushState) ? 'history' : 'hash';
                this.root = options && options.root ? '/' + this.clearSlashes(options.root) + '/' : '/';
                return this;
            },
            getFragment: function () {
                var fragment = '';
                if (this.mode === 'history') {
                    fragment = this.clearSlashes(decodeURI(location.pathname + location.search));
                    fragment = fragment.replace(/\?(.*)$/, '');
                    fragment = this.root != '/' ? fragment.replace(this.root, '') : fragment;
                } else {
                    var match = window.location.href.match(/#(.*)$/);
                    fragment = match ? match[1] : '';
                }
                return this.clearSlashes(fragment);
            },
            clearSlashes: function (path) {
                return path.toString().replace(/\/$/, '').replace(/^\//, '');
            },
            add: function (re, handler) {
                if (typeof re == 'function') {
                    handler = re;
                    re = '';
                }
                this.routes.push({ re: re, handler: handler });
                return this;
            },
            remove: function (param) {
                for (var i = 0, r; i < this.routes.length, r = this.routes[i]; i++) {
                    if (r.handler === param || r.re.toString() === param.toString()) {
                        this.routes.splice(i, 1);
                        return this;
                    }
                }
                return this;
            },
            flush: function () {
                this.routes = [];
                this.mode = null;
                this.root = '/';
                return this;
            },
            check: function (f) {
                var fragment = f || this.getFragment();
                for (var i = 0; i < this.routes.length; i++) {
                    var match = fragment.match(this.routes[i].re);
                    if (match) {
                        match.shift();
                        this.routes[i].handler.apply({}, match);
                        return this;
                    }
                }
                return this;
            },
            listen: function () {
                var self = this;
                var current = self.getFragment();
                var fn = function () {
                    if (current !== self.getFragment()) {
                        current = self.getFragment();
                        self.check(current);
                    }
                }
                clearInterval(this.interval);
                this.interval = setInterval(fn, 50);
                return this;
            },
            navigate: function (path) {
                path = path ? path : '';
                if (this.mode === 'history') {
                    history.pushState(null, null, this.root + this.clearSlashes(path));
                } else {
                    window.location.href = window.location.href.replace(/#(.*)$/, '') + '#' + path;
                }
                return this;
            }
        }


    </script>
    <script type="text/javascript">
        String.prototype.unquoted = function () { return this.replace(/(^")|("$)/g, '') }
        String.prototype.notBackSlash = function () { return this.replace(/\\/g, '\\\\') };
        function hide_all() {

            $('#bgimg').hide();
            $('#btnShowResultdiv').hide();
            $('#LoadMcqsAllQuestion').hide();
            $('#btntestthistest').hide();
            $('#btnPracticethistest').hide();
            $('#maintable').hide(); //allmcqscount
            $('#allmcqscount').hide(); //testheader
            $('#testheader').hide(); //testheader
            $("#divinst").hide();
            $("#MoreOptions").hide();
            $("#reference").hide();
            $("#Explanation").hide();
            $("#divhometbl").hide();
            $("#catbox").hide();
            $("#divCommonSubTestNumb").hide();
            $("#divMcqsQuestion").hide();
        }
        hide_all();
        var checkbitforexpandrefckeditor = 0;
        parseInt(checkbitforexpandrefckeditor++);
        console.log(checkbitforexpandrefckeditor);
        // debugger;
        if (checkbitforexpandrefckeditor == 1) {


            CKEDITOR.replace('txtQuestion', {});
            CKEDITOR.replace('txtOption1');
            CKEDITOR.replace('txtOption2');
            CKEDITOR.replace('txtOption3');
            CKEDITOR.replace('txtOption4');
            CKEDITOR.replace('txtOption5');
            CKEDITOR.replace('txtOption6');
            CKEDITOR.replace('txtOption7');
            CKEDITOR.replace('txtOption8');
            CKEDITOR.replace('txtReference');
            CKEDITOR.replace('txtExplanation');
        }
        $('#btnExplanation').click(function () {
            //  $('#MoreOptions').hide();
            $('#Explanation').toggle();

        })
       

        $('#ddlSubject').change(function () {
            //$("#ddlSubject").empty();
            $("#ddlTest").empty();
            $("#ddlTest").append($("<option></option>").val(0).html('Select Test'));
            var subId = $("#ddlSubject").val();
            //alert(subId);
            $.ajax({

                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "default.aspx/LoadddlTestForSpecificSub",
                data: "{'SubId':'" + subId + "'}",
                timeout: 90000, dataType: "json",
                success: function (Result) {
                    $.each(Result.d, function (key, value) {
                        $("#ddlTest").append($("<option></option>").val(value.TestId).html(value.TestName));
                        $("#ddlTest").trigger("chosen:updated");

                    });
                    alertify.success("Loaded Successfully :)");
                },
                error: function (Result) {
                    alertify.error("There is an Error.Please try again later");
                }

            });
        })
        var IsEdit = 0;
        var txtbtnQuestionSimpleBoxbit = 0;
        $('#btnSave').click(function () {
            //debugger;
            // alert('Hello i am clicked');
            // Sys.Net.WebRequestManager.set_defaultTimeout(600000);
            var SubjectId = $('#ddlSubject').val();
            var TestId = $('#ddlTest').val();
            if ((SubjectId == 'undefined' || SubjectId == 0) || (TestId == 'undefined' || TestId == 0)) {
                alertify.error("Please Select Subject and Test first !");
                return true;
            }

            var SubjectId_Edit = $('#ddlShowMcqsQuestionSubject').val();
            var TestId_Edit = $('#ddlShowMcqsQuestionTest').val();
            var McqsId = $('#ddlShowMcqsQuestion').val();
            var QuestionText1 = $('#txtQuestion').val();
            var QuestionText = '"' + QuestionText1 + '"';
            if (txtbtnQuestionSimpleBoxbit == 0) {

                QuestionText = '"' + QuestionText1 + '"';

            }
            else {
                QuestionText = '"' + CKEDITOR.instances.txtQuestion.getData().notBackSlash() + '"';

            }
            if (QuestionText.length == 2) {
                QuestionText = '"' + CKEDITOR.instances.txtQuestion.getData().notBackSlash() + '"';
                console.log(QuestionText);
            }
           
            var Points = $('#ddlPoints').val();
            var ReferenceText = CKEDITOR.instances.txtReference.getData().notBackSlash();  //$('#txtReference').val();
            var ExplanationText = CKEDITOR.instances.txtExplanation.getData().notBackSlash();// $('#txtExplanation').val();
            var txtOption1 = 0;
            var txtOption2 = 0;
            var txtOption3 = 0;
            var txtOption4 = 0;
            var txtOption5 = 0;
            var txtOption6 = 0;
            var txtOption7 = 0;
            var txtOption8 = 0;


            if (txtOption1bit == 0) {
                txtOption1 = '"' + CKEDITOR.instances.txtOption1.getData().notBackSlash() + '"';
            }
            else {
                txtOption1 = $('#txtOption1').val();
            }

            // option 2
            if (txtOption2bit == 0) {
                txtOption2 = '"' + CKEDITOR.instances.txtOption2.getData().notBackSlash() + '"';
            }
            else {
                txtOption2 = $('#txtOption2').val();
            }
            // otpion 3
            if (txtOption3bit == 0) {

                txtOption3 = '"' + CKEDITOR.instances.txtOption3.getData().notBackSlash() + '"';
            }
            else {
                txtOption3 = $('#txtOption3').val();
            }
            // option4
            if (txtOption4bit == 0) {

                txtOption4 = '"' + CKEDITOR.instances.txtOption4.getData().notBackSlash() + '"';
            }
            else {
                txtOption4 = $('#txtOption4').val();
            }
            if (txtOption5bit == 0) {
                txtOption5 = '"' + CKEDITOR.instances.txtOption5.getData().notBackSlash() + '"';
            }
            else {
                txtOption5 = $('#txtOption5').val();
            }
            //
            if (txtOption6bit == 0) {
                txtOption6 = '"' + CKEDITOR.instances.txtOption6.getData().notBackSlash() + '"';
            }
            else {
                txtOption6 = $('#txtOption6').val();
            }
            //
            if (txtOption7bit == 0) {
                txtOption7 = '"' + CKEDITOR.instances.txtOption7.getData().notBackSlash() + '"';
            }
            else {
                txtOption7 = $('#txtOption7').val();
            }
            //
            if (txtOption8bit == 0) {
                txtOption8 = '"' + CKEDITOR.instances.txtOption8.getData().notBackSlash() + '"';
            }
            else {
                txtOption8 = $('#txtOption8').val();

            }


            var chkOption1 = 0;
            var chkOption2 = 0;
            var chkOption3 = 0;
            var chkOption4 = 0;
            var chkOption5 = 0;
            var chkOption6 = 0;
            var chkOption7 = 0;
            var chkOption8 = 0;
            var chkoption1bit = 0;
            var chkoption2bit = 0;
            var chkoption3bit = 0;
            var chkoption4bit = 0;
            var chkoption5bit = 0;
            var chkoption6bit = 0;
            var chkoption7bit = 0;
            var chkoption8bit = 0;

            if (chkoption1bit == 1) {
                chkOption1 = 1;
            }
            else {
                chkOption1 = 0;
            }
            //
            if (chkoption2bit == 1) {
                chkOption2 = 1;
            }
            else {
                chkOption2 = 0;
            }
            //
            if (chkoption3bit == 1) {
                chkOption3 = 1;
            }
            else {
                chkOption3 = 0;
            }
            //
            if (chkoption4bit == 1) {
                chkOption4 = 1;
            }
            else {
                chkOption4 = 0;
            }
            //
            if (chkoption5bit == 1) {
                chkOption5 = 1;
            }
            else {
                chkOption5 = 0;
            }
            //
            if (chkoption6bit == 1) {
                chkOption6 = 1;
            }
            else {
                chkOption6 = 0;
            }
            //
            if (chkoption7bit == 1) {
                chkOption7 = 1;
            }
            else {
                chkOption7 = 0;
            }
            //
            if (chkoption8bit == 1) {
                chkOption8 = 1;
            }
            else {
                chkOption8 = 0;
            }
            // debugger;
            //QuestionText.replace(/"/g, '\\"');


            txtOption1
            txtOption2
            txtOption3
            txtOption4
            txtOption5
            txtOption6
            txtOption7
            txtOption8

            var itotal = 0;

            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                complete: function () {

                },
                beforeSend: function () {
                    $('#lblQuestionComplete').html('Saving options...');
                    alertify.log("Saving options... Please wait");
                },
                timeout: 90000,
                url: "default.aspx/Mcqs_Options_Insert",
                data: "{'SubjectId':'" + SubjectId + "','TestId':'" + TestId + "','QuestionText':'" + QuestionText + "','points':'" + Points +
                    "','txtOption1':'" + txtOption1 + "','txtOption2':'" + txtOption2 + "','txtOption3':'" + txtOption3 +
                    "','txtOption4':'" + txtOption4 + "','txtOption5':'" + txtOption5 + "','txtOption6':'" + txtOption6 +
                    "','txtOption7':'" + txtOption7 + "','txtOption8':'" + txtOption8 + "','chkOption1':'" + chkOption1 +
                    "','chkOption2':'" + chkOption2 + "','chkOption3':'" + chkOption3 + "','chkOption4':'" + chkOption4 +
                    "','chkOption5':'" + chkOption5 + "','chkOption6':'" + chkOption6 + "','chkOption7':'" + chkOption7 +
                    "','chkOption8':'" + chkOption8 +
                    "','ExplanationText':'" + ExplanationText +
                    "','ReferenceTexts':'" + ReferenceText +
                    "'}",
                timeout: 90000, dataType: "json",
                success: function (data) {
                    var obj = data.d;
                    itotal = data.d;
                    $('#lblQuestionComplete').html('Question with All Options saved...    ' + itotal);
                    alertify.success("Mcqs Saved. " + itotal);
                    alertify.log("Mcqs Submitted for Permission Successfully!");
                    Scroll_top();
                    if (txtbtnQuestionSimpleBoxbit == 0) {

                        QuestionText = '"' + QuestionText1 + '"';

                    }
                    else {
                        QuestionText = '"' + CKEDITOR.instances.txtQuestion.setData('') + '"';

                    }
                    if (QuestionText.length == 2) {
                        QuestionText = '"' + CKEDITOR.instances.txtQuestion.setData('') + '"';
                    }
                    if (QuestionText.length == 2) {
                        QuestionText = '"' + QuestionText1 + '"';
                    }
                    if (txtOption1bit == 0) {
                        txtOption1 = '"' + CKEDITOR.instances.txtOption1.setData('') + '"';
                    }
                    else {
                        txtOption1 = $('#txtOption1').val();
                    }

                    // option 2
                    if (txtOption2bit == 0) {
                        txtOption2 = '"' + CKEDITOR.instances.txtOption2.setData('') + '"';
                    }
                    else {
                        txtOption2 = $('#txtOption2').val();
                    }
                    // otpion 3
                    if (txtOption3bit == 0) {

                        txtOption3 = '"' + CKEDITOR.instances.txtOption3.setData('') + '"';
                    }
                    else {
                        txtOption3 = $('#txtOption3').val();
                    }
                    // option4
                    if (txtOption4bit == 0) {

                        txtOption4 = '"' + CKEDITOR.instances.txtOption4.setData('') + '"';
                    }
                    else {
                        txtOption4 = $('#txtOption4').val();
                    }
                    if (txtOption5bit == 0) {
                        txtOption5 = '"' + CKEDITOR.instances.txtOption5.setData('') + '"';
                    }
                    else {
                        txtOption5 = $('#txtOption5').val();
                    }
                    //
                    if (txtOption6bit == 0) {
                        txtOption6 = '"' + CKEDITOR.instances.txtOption6.setData('') + '"';
                    }
                    else {
                        txtOption6 = $('#txtOption6').val();
                    }
                    //
                    if (txtOption7bit == 0) {
                        txtOption7 = '"' + CKEDITOR.instances.txtOption7.setData('') + '"';
                    }
                    else {
                        txtOption7 = $('#txtOption7').val();
                    }
                    //
                    if (txtOption8bit == 0) {
                        txtOption8 = '"' + CKEDITOR.instances.txtOption8.setData('') + '"';
                    }
                    else {
                        txtOption8 = $('#txtOption8').val();

                    }
                    CKEDITOR.instances.txtExplanation.setData('');
                    CKEDITOR.instances.txtReference.setData('');
                    $('#divMcqsQuestion :checked').removeAttr('checked');
                    chkoption1bit = 0;
                    chkoption2bit = 0;
                    chkoption3bit = 0;
                    chkoption4bit = 0;
                    chkoption5bit = 0;
                    chkoption6bit = 0;
                    chkoption7bit = 0;
                    chkoption8bit = 0;
                    $('#btnShowHidetxtQuestion').focus();
                    if ($("#chkreloadpage").is(':checked')) {
                        location.reload();
                    }

                    //var focusManager = new CKEDITOR.focusManager(txtQuestion);
                    //focusManager.focus();
                    //focusManager.focus();
                    // alert('data.d =  ' + data.d)
                    if (obj == 'false') {
                        $('#lblQuestionComplete').html('Error in Saving Question with All Options...');
                        alertify.error("Mcqs Not Saved");
                        //SaveStatus = 0;

                    }

                },
                error: function (jqXHR, exception) {
                    var msg = '';
                    if (jqXHR.status === 0) {
                        msg = 'Not connect.\n Verify Network.';
                    } else if (jqXHR.status == 404) {
                        msg = 'Requested page not found. [404]';
                    } else if (jqXHR.status == 500) {
                        msg = 'Internal Server Error [500].';
                    } else if (exception === 'parsererror') {
                        msg = 'Requested JSON parse failed.';
                    } else if (exception === 'timeout') {
                        msg = 'Time out error.';
                    } else if (exception === 'abort') {
                        msg = 'Ajax request aborted.';
                    } else {
                        msg = 'Uncaught Error.\n' + jqXHR.responseText;
                    }
                    $('#lblQuestionComplete').html(msg);
                    alertify.error(msg);
                }
            })





        })

        $('#btnMoreOptions').click(function () {

            $('#MoreOptions').toggle(1000);

        })
        $('#btnReference').click(function () {
            $('#reference').toggle();
        })
        $('#btnQuestionSimpleBox').click(function () {

            if (SaveStatus = 1) {
                CKEDITOR.instances.txtQuestion.destroy(true);
            }
            else {
                $('#txtQuestion').val('');
                txtbtnQuestionSimpleBoxbit = 1
            }


            SaveStatus = 0;
        });

        $('#btnQuestionckeditor').click(function () {


            CKEDITOR.replace('txtQuestion');
            txtbtnQuestionSimpleBoxbit = 0;


        })


        $('#btnShowHidetxtQuestion').click(function () {

            $('#divtxtQuestion').toggle();
        })
        var txtOption1bit = 0;
        var txtOption2bit = 0;
        var txtOption3bit = 0;
        var txtOption4bit = 0;
        var txtOption5bit = 0;
        var txtOption6bit = 0;
        var txtOption7bit = 0;
        var txtOption8bit = 0;


        // Option 1 extra options.


        $('#btnOption1SimpleBox').click(function () {

            CKEDITOR.instances.txtOption1.destroy(true);
            txtOption1bit = 1;
        })
        $('#btnOption1ckeditor').click(function () {
            CKEDITOR.replace('txtOption1');
            txtOption1bit = 0;

        })
        $('#btnShowHidetxtOption1').click(function () {

            $('#divtxtOption1').toggle();

        })

        // Option 2 extra options.
        $('#btnOption2SimpleBox').click(function () {
            CKEDITOR.instances.txtOption2.destroy(true);
            txtOption2bit = 1;
        })
        $('#btnOption2ckeditor').click(function () {
            CKEDITOR.replace('txtOption2');
            txtOption2bit = 0;
        })
        $('#btnShowHidetxtOption2').click(function () {

            $('#divtxtOption2').toggle();
        })

        // Option 3 extra options.
        $('#btnOption3SimpleBox').click(function () {
            CKEDITOR.instances.txtOption3.destroy(true);
            txtOption3bit = 1;
        })
        $('#btnOption3ckeditor').click(function () {
            CKEDITOR.replace('txtOption3');
            txtOption3bit = 0;
        })
        $('#btnShowHidetxtOption3').click(function () {

            $('#divtxtOption3').toggle();
        })

        // Option 4 extra options.
        $('#btnOption4SimpleBox').click(function () {
            CKEDITOR.instances.txtOption4.destroy(true);
            txtOption4bit = 1;
        })
        $('#btnOption4ckeditor').click(function () {
            CKEDITOR.replace('txtOption4');
            txtOption4bit = 0;
        })
        $('#btnShowHidetxtOption4').click(function () {

            $('#divtxtOption4').toggle();
        })
        // Option 5 extra options.
        $('#btnOption5SimpleBox').click(function () {
            CKEDITOR.instances.txtOption5.destroy(true);
            txtOption5bit = 1;
        })
        $('#btnOption5ckeditor').click(function () {
            CKEDITOR.replace('txtOption5');
            txtOption5bit = 0;
        })
        $('#btnShowHidetxtOption5').click(function () {

            $('#divtxtOption5').toggle();
        })
        // Option 6 extra options.
        $('#btnOption6SimpleBox').click(function () {
            CKEDITOR.instances.txtOption6.destroy(true);
            txtOption6bit = 1;
        })
        $('#btnOption6ckeditor').click(function () {
            CKEDITOR.replace('txtOption6');
            txtOption6bit = 0;
        })
        $('#btnShowHidetxtOption6').click(function () {

            $('#divtxtOption6').toggle();
        })
        // Option 7 extra options.
        $('#btnOption7SimpleBox').click(function () {
            CKEDITOR.instances.txtOption7.destroy(true);
            txtOption7bit = 1;
        })
        $('#btnOption7ckeditor').click(function () {
            CKEDITOR.replace('txtOption7');
            txtOption7bit = 0;
        })
        $('#btnShowHidetxtOption7').click(function () {

            $('#divtxtOption7').toggle();
        })
        // Option 8 extra options.
        $('#btnOption8SimpleBox').click(function () {
            CKEDITOR.instances.txtOption8.destroy(true);
            txtOption8bit = 1;
        })
        $('#btnOption8ckeditor').click(function () {
            CKEDITOR.replace('txtOption8');
            txtOption8bit = 0;
        })
        $('#btnShowHidetxtOption8').click(function () {

            $('#divtxtOption8').toggle();
        })


        $(document).ready(function () {
           
            //  $.ajaxSetup({ cache: true });
            Router.config({ mode: 'history' });
            var string_formatring_fb = 'Q.2  Diameter of a motor nerve fibre is ' +
                                        'A. 26 m' +
                                        'B. 28 m' +
                                        'C. 38 m' +
                                        'D. None of these ';

            $.fn.randomize = function (a) { (a ? this.find(a) : this).parent().each(function () { $(this).children(a).sort(function () { return Math.random() - 0.5 }).detach().appendTo(this) }); return this };
            $('#allmcqscount').show();
            $('#maintable').show();
            $("#catbox").show();
          
            function shuffle(a) {

                var c = a.length, t, r;
                while (0 !== c) {
                    r = Math.floor(Math.random() * c);
                    c -= 1; t = a[c]; a[c] = a[r]; a[r] = t;
                }
                return a;
            }

            function findAndReplace(find, replace) {
                find.parentNode.replaceChild(replace, find)
            }

            function goToByScroll(id) {
                // Remove "link" from the ID
                //  id = id.replace("link", "");
                // Scroll

                $('html, body').animate({
                    scrollTop: ($("#" + id).offset().top - 91)
                }, 50);


            }

            function add3Dots(string, limit) {
                var dots = "...";
                if (string.length > limit) {
                    // you can also use substr instead of substring
                    string = string.substring(0, limit) + dots;
                }

                return string;
            }

            function blockui() {
                $.blockUI({
                    css: {
                        border: 'none',
                        padding: '15px',
                        backgroundColor: '#000',
                        '-webkit-border-radius': '10px',
                        '-moz-border-radius': '10px',
                        opacity: .5,
                        color: '#fff'
                    }
                });
            }

            var CurrentTestid = 0;
            var myTable;
            // Check if "key" exists in the storage
            var value_storage = $.jStorage.get("homepage");
            value_storage = null;
            if (!value_storage || value_storage.d.length == 0) {
              //  debugger;
                // if not - load the data from the server


                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "default.aspx/LoadHomePagesAllsub",
                    data: "{}",
                    dataType: "json",
                    timeout: (2 * 1000000),
                    beforeSend: function () {
                        blockui();
                        $('#divloading').html('Please Wait while loading your requested contents...');
                        //$('#lblQuestionBefore').html("Saving...");



                    },
                    complete: function () {
                        $('#divloading').html('');
                        //$('#lblQuestionBefore').html('');
                        // $('#lblQuestionComplete').html("Saved");


                    },
                    success: function (data) {
                        value_storage = data;
                        $.jStorage.set("homepage", value_storage,300000);
                        var len = data.d.length;
                        var totallen = data.d.length;
                        var txt = "";
                        var totalmcqs = 0;
                        var cattotalmcqs = 0;
                        var cattotaltests = 0;
                        var medcattotalmcqs = 0;
                        var medcattotaltests = 0;
                        var enggcattotalmcqs = 0;
                        var enggcattotaltests = 0;
                        var competitivecattotalmcqs = 0;
                        var competitivecattotaltests = 0;
                        var admcattotalmcqs = 0;
                        var admcattotaltests = 0;
                        var jobscattotalmcqs = 0;
                        var jobscattotaltests = 0;
                        var skillcattotalmcqs = 0;
                        var skillcattotaltests = 0;
                        var othercattotalmcqs = 0;
                        var othercattotaltests = 0;


                        $("#divvucat").html("");
                        //alert(len);
                        if (len > 0) {
                            Scroll_top();
                            for (var i = 0; i < len; i++)
                            {
                                // console.log('catid ' + data.d[i].catid + '    <a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item ">' + data.d[i].SubjectName + '</a>')
                                // Vu 1 
                                if (data.d[i].catid === 1)
                                {
                                    cattotalmcqs = cattotalmcqs + parseInt(data.d[i].TotalMcqs);
                                    cattotaltests = cattotaltests + parseInt(data.d[i].TotalTest)
                                    $("#divvucattotalmcqs").html("" + cattotalmcqs + "");
                                    $("#divvucattotaltests").html("" + cattotaltests + "");
                                    if (data.d[i].TotalTest > 0) {

                                        var test = "Test";
                                        if (data.d[i].TotalTest > 1) {
                                            test = "Test's"
                                        }
                                        var subNamedoted = "";
                                        if (data.d[i].SubjectName.length > 22) {
                                            subNamedoted = add3Dots(data.d[i].SubjectName, 21);
                                        }
                                        else {
                                            subNamedoted = data.d[i].SubjectName;
                                        }
                                        //console.log(data.d[i].TotalTest)
                                        $("#divvucat").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                                    }
                                    else {
                                        $("#vu_catbox").hide();
                                    }

                                }
                                // CatId Medical = 3 and MedEngg = 11
                                if (data.d[i].catid == 3 || data.d[i].catid == 11) {
                                    medcattotalmcqs = medcattotalmcqs + parseInt(data.d[i].TotalMcqs);
                                    medcattotaltests = medcattotaltests + parseInt(data.d[i].TotalTest)
                                    $("#divmedcattotalmcqs").html("" + medcattotalmcqs + "");
                                    $("#divmedcattotaltests").html("" + medcattotaltests + "");
                                    if (data.d[i].TotalTest > 0) {

                                        var test = "Test";
                                        if (data.d[i].TotalTest > 1) {
                                            test = "Test's"
                                        }
                                        var subNamedoted = "";
                                        if (data.d[i].SubjectName.length > 36) {
                                            subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                        }
                                        else {
                                            subNamedoted = data.d[i].SubjectName;
                                        }
                                        //console.log(data.d[i].TotalTest)
                                        $("#divmedcat").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                                    }
                                    else {
                                        $("#med_catbox").hide();
                                    }
                                }
                                // CatId Engg = 4 and MedEngg =11
                                if (data.d[i].catid == 4 || data.d[i].catid == 11) {
                                    enggcattotalmcqs = enggcattotalmcqs + parseInt(data.d[i].TotalMcqs);
                                    enggcattotaltests = enggcattotaltests + parseInt(data.d[i].TotalTest)
                                    $("#divenggcattotalmcqs").html("" + enggcattotalmcqs + "");
                                    $("#divenggcattotaltests").html("" + enggcattotaltests + "");
                                    if (data.d[i].TotalTest > 0) {

                                        var test = "Test";
                                        if (data.d[i].TotalTest > 1) {
                                            test = "Test's"
                                        }
                                        var subNamedoted = "";
                                        if (data.d[i].SubjectName.length > 36) {
                                            subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                        }
                                        else {
                                            subNamedoted = data.d[i].SubjectName;
                                        }
                                        // console.log(data.d[i].TotalTest)
                                        $("#divengcat").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                                    }
                                    else {
                                        $("#engg_catbox").hide();
                                    }
                                }
                                // CatId  Competitive Test = 5 and CompetitiveAdmissionJobsSkillsothers = 13
                                if (data.d[i].catid == 5 || data.d[i].catid == 13) {
                                    competitivecattotalmcqs = competitivecattotalmcqs + parseInt(data.d[i].TotalMcqs);
                                    competitivecattotaltests = competitivecattotaltests + parseInt(data.d[i].TotalTest)
                                    $("#divcompcattotalmcqs").html("" + competitivecattotalmcqs + "");
                                    $("#divcompcattotaltests").html("" + competitivecattotaltests + "");
                                    if (data.d[i].TotalTest > 0) {

                                        var test = "Test";
                                        if (data.d[i].TotalTest > 1) {
                                            test = "Test's"
                                        }
                                        var subNamedoted = "";
                                        if (data.d[i].SubjectName.length > 36) {
                                            subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                        }
                                        else {
                                            subNamedoted = data.d[i].SubjectName;
                                        }
                                        // console.log(data.d[i].TotalTest)
                                        $("#divcomptcat").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                                    }
                                    else {
                                        $("#compet_catbox").hide();
                                    }
                                }
                                // Admission Test = 6 and CompetitiveAdmissionJobsSkillsothers = 13
                                if (data.d[i].catid == 6 || data.d[i].catid == 13) {
                                    admcattotalmcqs = admcattotalmcqs + parseInt(data.d[i].TotalMcqs);
                                    admcattotaltests = admcattotaltests + parseInt(data.d[i].TotalTest)
                                    $("#divadmcattotalmcqs").html("" + admcattotalmcqs + "");
                                    $("#divadmcattotaltests").html("" + admcattotaltests + "");
                                    if (data.d[i].TotalTest > 0) {

                                        var test = "Test";
                                        if (data.d[i].TotalTest > 1) {
                                            test = "Test's"
                                        }
                                        var subNamedoted = "";
                                        if (data.d[i].SubjectName.length > 36) {
                                            subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                        }
                                        else {
                                            subNamedoted = data.d[i].SubjectName;
                                        }
                                        //console.log(data.d[i].TotalTest)
                                        $("#divAdmtest").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                                    } else {
                                        $("#adm_catbox").hide();
                                    }
                                }
                                // Jobs Test = 7 , JobsSkillsOthers = 12 and  CompetitiveAdmissionJobsSkillsothers = 13
                                if (data.d[i].catid == 7 || data.d[i].catid == 12 || data.d[i].catid == 13) {
                                    jobscattotalmcqs = jobscattotalmcqs + parseInt(data.d[i].TotalMcqs);
                                    jobscattotaltests = jobscattotaltests + parseInt(data.d[i].TotalTest)
                                    $("#divjobcattotalmcqs").html("" + jobscattotalmcqs + "");
                                    $("#divjobcattotaltests").html("" + jobscattotaltests + "");
                                    if (data.d[i].TotalTest > 0) {

                                        var test = "Test";
                                        if (data.d[i].TotalTest > 1) {
                                            test = "Test's"
                                        }
                                        var subNamedoted = "";
                                        if (data.d[i].SubjectName.length > 36) {
                                            subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                        }
                                        else {
                                            subNamedoted = data.d[i].SubjectName;
                                        }
                                        console.log(data.d[i].TotalTest)
                                        $("#divjobtest").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                                    }
                                    else {
                                        $("#job_catbox").hide();
                                    }
                                }
                                // Skills Test = 8 , JobsSkillsOthers = 12 and  CompetitiveAdmissionJobsSkillsothers = 13
                                if (data.d[i].catid == 8 || data.d[i].catid == 12 || data.d[i].catid == 13) {
                                    skillcattotalmcqs = skillcattotalmcqs + parseInt(data.d[i].TotalMcqs);
                                    skillcattotaltests = skillcattotaltests + parseInt(data.d[i].TotalTest)
                                    $("#divmedskilltotalmcqs").html("" + skillcattotalmcqs + "");
                                    $("#divskillcattotaltests").html("" + skillcattotaltests + "");
                                    if (data.d[i].TotalTest > 0) {

                                        var test = "Test";
                                        if (data.d[i].TotalTest > 1) {
                                            test = "Test's"
                                        }
                                        var subNamedoted = "";
                                        if (data.d[i].SubjectName.length > 36) {
                                            subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                        }
                                        else {
                                            subNamedoted = data.d[i].SubjectName;
                                        }
                                        // console.log(data.d[i].TotalTest)
                                        $("#divskilltest").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                                    }
                                    else {
                                        $("#skill_catbox").hide();
                                    }
                                }
                                // Other Tests = 9 , JobsSkillsOthers = 12 and  CompetitiveAdmissionJobsSkillsothers = 13
                                if (data.d[i].catid == 9 || data.d[i].catid == 12 || data.d[i].catid == 13) {
                                    othercattotalmcqs = othercattotalmcqs + parseInt(data.d[i].TotalMcqs);
                                    othercattotaltests = othercattotaltests + parseInt(data.d[i].TotalTest)
                                    $("#divmisccattotalmcqs").html("" + othercattotalmcqs + "");
                                    $("#divmisccattotaltests").html("" + othercattotaltests + "");
                                    if (data.d[i].TotalTest > 0) {

                                        var test = "Test";
                                        if (data.d[i].TotalTest > 1) {
                                            test = "Test's"
                                        }
                                        var subNamedoted = "";
                                        if (data.d[i].SubjectName.length > 36) {
                                            subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                        }
                                        else {
                                            subNamedoted = data.d[i].SubjectName;
                                        }
                                        console.log(data.d[i].TotalTest)
                                        $("#divothertest").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                                    }
                                    else {
                                        $("#misc_catbox").hide();
                                    }
                                }
                                else  {
                                    othercattotalmcqs = othercattotalmcqs + parseInt(data.d[i].TotalMcqs);
                                    othercattotaltests = othercattotaltests + parseInt(data.d[i].TotalTest)
                                    $("#divmisccattotalmcqs").html("" + othercattotalmcqs + "");
                                    $("#divmisccattotaltests").html("" + othercattotaltests + "");
                                    if (data.d[i].TotalTest > 0) {

                                        var test = "Test";
                                        if (data.d[i].TotalTest > 1) {
                                            test = "Test's"
                                        }
                                        var subNamedoted = "";
                                        if (data.d[i].SubjectName.length > 36) {
                                            subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                        }
                                        else {
                                            subNamedoted = data.d[i].SubjectName;
                                        }
                                        console.log(data.d[i].TotalTest)
                                        $("#divothertest").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                                    }
                                }
                                //txt += '<tr><td style="font-size: 12px; font-weight: bold; text-transform: capitalize;">' + data.d[i].SubjectName +
                                //    '</td><td style="font-size: 12px; font-weight: bold; text-transform: capitalize;">' + data.d[i].TestName +
                                //    '</td><td data-hidden="1">' + data.d[i].TestId +
                                //     '</td><td data-hidden="1">' + data.d[i].SubId +
                                //    '</td><td style="font-size: 10px;">' + data.d[i].AdminName +
                                //    '</td><td><label style="font-size: 12px;">' + data.d[i].TotalMcqs +
                                //    '</label></td><td> <a href="#" class="btn btn-info Practice">Make Practice</a></td><td> <a href="#" class="btn btn-danger divUserTest">Take Test</a></td><td style="font-size: 12px;"><a href="#" class="btn btn-link AddUserMcqs">Add Question</a></td></tr>';
                                //totalmcqs = totalmcqs + data.d[i].TotalMcqs;
                            }
                            if (medcattotalmcqs == 0)
                            {
                                $("#med_catbox").hide();
                            }
                            if (enggcattotalmcqs == 0) {
                                $("#engg_catbox").hide();
                            }
                            if (competitivecattotalmcqs == 0) {
                                $("#compet_catbox").hide();
                            }
                            if (admcattotalmcqs == 0) {
                                $("#adm_catbox").hide();
                            }
                            if (jobscattotalmcqs == 0) {
                                $("#job_catbox").hide();
                            }
                            if (skillcattotalmcqs == 0) {
                                $("#skill_catbox").hide();
                            }
                           // if (othercattotalmcqs == 0) {
                                $("#misc_catbox").hide();
                            //}
                           
                            
                             
                            
                           
                             
                            
                            // $("#divvucat").html(txt);

                            //if (txt != '') {
                            //    $("#example").append('<tbody>' + txt + '</tbody>');
                            //    $("#totalmcqs").text("Total Number of Mcqs is " + totalmcqs + "  Approximately");
                            //    myTable = $("#example").DataTable(
                            //         {
                            //             paging: false,
                            //             responsive: true,
                            //             columnDefs: [
                            //            { responsivePriority: 1, targets: 0 },
                            //            { responsivePriority: 2, targets: 1 },
                            //             { responsivePriority: 4, targets: 4 },
                            //             { responsivePriority: 5, targets: 5 }
                            //             ],
                            //             "columnDefs": [
                            //                 {
                            //                     "targets": [2],
                            //                     "visible": false,
                            //                     "searchable": false
                            //                 },
                            //                 {
                            //                     "targets": [3],
                            //                     "visible": false,
                            //                     "searchable": false
                            //                 }
                            //             ],
                            //             select: {
                            //                 style: 'multi'
                            //             }
                            //         }
                            //        );

                            //}
                        }
                        setTimeout($.unblockUI, 1000);

                    },
                    error: function (result) {

                        alertify.error("Error occour in Loading Mcqs Please try again letter ! ");
                        setTimeout($.unblockUI, 1000);
                    }
                })
            }
            else {
             //   debugger;
                var data = value_storage;
                var len = data.d.length;
                var totallen = data.d.length;
                var txt = "";
                var totalmcqs = 0;
                var cattotalmcqs = 0;
                var cattotaltests = 0;
                var medcattotalmcqs = 0;
                var medcattotaltests = 0;
                var enggcattotalmcqs = 0;
                var enggcattotaltests = 0;
                var competitivecattotalmcqs = 0;
                var competitivecattotaltests = 0;
                var admcattotalmcqs = 0;
                var admcattotaltests = 0;
                var jobscattotalmcqs = 0;
                var jobscattotaltests = 0;
                var skillcattotalmcqs = 0;
                var skillcattotaltests = 0;
                var othercattotalmcqs = 0;
                var othercattotaltests = 0;


                $("#divvucat").html("");
                //alert(len);
                if (len > 0) {
                    Scroll_top();
                    for (var i = 0; i < len; i++) {
                        // console.log('catid ' + data.d[i].catid + '    <a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item ">' + data.d[i].SubjectName + '</a>')
                        // Vu 1 
                        if (data.d[i].catid === 1) {
                            cattotalmcqs = cattotalmcqs + parseInt(data.d[i].TotalMcqs);
                            cattotaltests = cattotaltests + parseInt(data.d[i].TotalTest)
                            $("#divvucattotalmcqs").html("" + cattotalmcqs + "");
                            $("#divvucattotaltests").html("" + cattotaltests + "");
                            if (data.d[i].TotalTest > 0) {

                                var test = "Test";
                                if (data.d[i].TotalTest > 1) {
                                    test = "Test's"
                                }
                                var subNamedoted = "";
                                if (data.d[i].SubjectName.length > 22) {
                                    subNamedoted = add3Dots(data.d[i].SubjectName, 21);
                                }
                                else {
                                    subNamedoted = data.d[i].SubjectName;
                                }
                                //console.log(data.d[i].TotalTest)
                                $("#divvucat").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                            }

                        }
                        // CatId Medical = 3 and MedEngg = 11
                        if (data.d[i].catid == 3 || data.d[i].catid == 11) {
                            medcattotalmcqs = medcattotalmcqs + parseInt(data.d[i].TotalMcqs);
                            medcattotaltests = medcattotaltests + parseInt(data.d[i].TotalTest)
                            $("#divmedcattotalmcqs").html("" + medcattotalmcqs + "");
                            $("#divmedcattotaltests").html("" + medcattotaltests + "");
                            if (data.d[i].TotalTest > 0) {

                                var test = "Test";
                                if (data.d[i].TotalTest > 1) {
                                    test = "Test's"
                                }
                                var subNamedoted = "";
                                if (data.d[i].SubjectName.length > 36) {
                                    subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                }
                                else {
                                    subNamedoted = data.d[i].SubjectName;
                                }
                                //console.log(data.d[i].TotalTest)
                                $("#divmedcat").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                            }
                        }
                        // CatId Engg = 4 and MedEngg =11
                        if (data.d[i].catid == 4 || data.d[i].catid == 11) {
                            enggcattotalmcqs = enggcattotalmcqs + parseInt(data.d[i].TotalMcqs);
                            enggcattotaltests = enggcattotaltests + parseInt(data.d[i].TotalTest)
                            $("#divenggcattotalmcqs").html("" + enggcattotalmcqs + "");
                            $("#divenggcattotaltests").html("" + enggcattotaltests + "");
                            if (data.d[i].TotalTest > 0) {

                                var test = "Test";
                                if (data.d[i].TotalTest > 1) {
                                    test = "Test's"
                                }
                                var subNamedoted = "";
                                if (data.d[i].SubjectName.length > 36) {
                                    subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                }
                                else {
                                    subNamedoted = data.d[i].SubjectName;
                                }
                                // console.log(data.d[i].TotalTest)
                                $("#divengcat").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                            }
                        }
                        // CatId  Competitive Test = 5 and CompetitiveAdmissionJobsSkillsothers = 13
                        if (data.d[i].catid == 5 || data.d[i].catid == 13) {
                            competitivecattotalmcqs = competitivecattotalmcqs + parseInt(data.d[i].TotalMcqs);
                            competitivecattotaltests = competitivecattotaltests + parseInt(data.d[i].TotalTest)
                            $("#divcompcattotalmcqs").html("" + competitivecattotalmcqs + "");
                            $("#divcompcattotaltests").html("" + competitivecattotaltests + "");
                            if (data.d[i].TotalTest > 0) {

                                var test = "Test";
                                if (data.d[i].TotalTest > 1) {
                                    test = "Test's"
                                }
                                var subNamedoted = "";
                                if (data.d[i].SubjectName.length > 36) {
                                    subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                }
                                else {
                                    subNamedoted = data.d[i].SubjectName;
                                }
                                // console.log(data.d[i].TotalTest)
                                $("#divcomptcat").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                            }
                        }
                        // Admission Test = 6 and CompetitiveAdmissionJobsSkillsothers = 13
                        if (data.d[i].catid == 6 || data.d[i].catid == 13) {
                            admcattotalmcqs = admcattotalmcqs + parseInt(data.d[i].TotalMcqs);
                            admcattotaltests = admcattotaltests + parseInt(data.d[i].TotalTest)
                            $("#divadmcattotalmcqs").html("" + admcattotalmcqs + "");
                            $("#divadmcattotaltests").html("" + admcattotaltests + "");
                            if (data.d[i].TotalTest > 0) {

                                var test = "Test";
                                if (data.d[i].TotalTest > 1) {
                                    test = "Test's"
                                }
                                var subNamedoted = "";
                                if (data.d[i].SubjectName.length > 36) {
                                    subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                }
                                else {
                                    subNamedoted = data.d[i].SubjectName;
                                }
                                //console.log(data.d[i].TotalTest)
                                $("#divAdmtest").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                            }
                        }
                        // Jobs Test = 7 , JobsSkillsOthers = 12 and  CompetitiveAdmissionJobsSkillsothers = 13
                        if (data.d[i].catid == 7 || data.d[i].catid == 12 || data.d[i].catid == 13) {
                            jobscattotalmcqs = jobscattotalmcqs + parseInt(data.d[i].TotalMcqs);
                            jobscattotaltests = jobscattotaltests + parseInt(data.d[i].TotalTest)
                            $("#divjobcattotalmcqs").html("" + jobscattotalmcqs + "");
                            $("#divjobcattotaltests").html("" + jobscattotaltests + "");
                            if (data.d[i].TotalTest > 0) {

                                var test = "Test";
                                if (data.d[i].TotalTest > 1) {
                                    test = "Test's"
                                }
                                var subNamedoted = "";
                                if (data.d[i].SubjectName.length > 36) {
                                    subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                }
                                else {
                                    subNamedoted = data.d[i].SubjectName;
                                }
                                console.log(data.d[i].TotalTest)
                                $("#divjobtest").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                            }
                        }
                        // Skills Test = 8 , JobsSkillsOthers = 12 and  CompetitiveAdmissionJobsSkillsothers = 13
                        if (data.d[i].catid == 8 || data.d[i].catid == 12 || data.d[i].catid == 13) {
                            skillcattotalmcqs = skillcattotalmcqs + parseInt(data.d[i].TotalMcqs);
                            skillcattotaltests = skillcattotaltests + parseInt(data.d[i].TotalTest)
                            $("#divmedskilltotalmcqs").html("" + skillcattotalmcqs + "");
                            $("#divskillcattotaltests").html("" + skillcattotaltests + "");
                            if (data.d[i].TotalTest > 0) {

                                var test = "Test";
                                if (data.d[i].TotalTest > 1) {
                                    test = "Test's"
                                }
                                var subNamedoted = "";
                                if (data.d[i].SubjectName.length > 36) {
                                    subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                }
                                else {
                                    subNamedoted = data.d[i].SubjectName;
                                }
                                // console.log(data.d[i].TotalTest)
                                $("#divskilltest").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                            }
                        }
                        // Other Tests = 9 , JobsSkillsOthers = 12 and  CompetitiveAdmissionJobsSkillsothers = 13
                        if (data.d[i].catid == 9 || data.d[i].catid == 12 || data.d[i].catid == 13) {
                            othercattotalmcqs = othercattotalmcqs + parseInt(data.d[i].TotalMcqs);
                            othercattotaltests = othercattotaltests + parseInt(data.d[i].TotalTest)
                            $("#divmisccattotalmcqs").html("" + othercattotalmcqs + "");
                            $("#divmisccattotaltests").html("" + othercattotaltests + "");
                            if (data.d[i].TotalTest > 0) {

                                var test = "Test";
                                if (data.d[i].TotalTest > 1) {
                                    test = "Test's"
                                }
                                var subNamedoted = "";
                                if (data.d[i].SubjectName.length > 36) {
                                    subNamedoted = add3Dots(data.d[i].SubjectName, 33);
                                }
                                else {
                                    subNamedoted = data.d[i].SubjectName;
                                }
                                console.log(data.d[i].TotalTest)
                                $("#divothertest").append('<a href="#" data-value="' + data.d[i].SubId + '" class="list-group-item " > <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> ' + subNamedoted + ' <span class="badge bg-blue">' + data.d[i].TotalTest + ' ' + test + ' </span></a>');
                            }
                        }
                      
                    }
                }
            }

            $(".closeall").click(function () {
                hide_all();
                $("#catbox").show();
            })

            $('#dropdown1').on('change', function () {
                var val = this.value;

                if (val == 'Physics') {
                    myTable.columns(1).search(this.value).draw();
                }
                else {
                    myTable.columns(1).search(this.value).draw();
                }

            });
            $(document).on("click", '#catbox a', function () {
                //$("#example").on("click", '.Practice ', function (event) {
                debugger;
                var subid = $(this).data("value");
                var mysubidkeystorage = subid + "subid";
                // Check if "key" exists in the storage
                var value_storage = $.jStorage.get(mysubidkeystorage.toString());
                value_storage = null;
                if (!value_storage || value_storage.d.length == 0) {
                    // if not - load the data from the server
                   
                //alert(subid);
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "default.aspx/LoadHomePages",
                    data: "{'subid':'" + subid + "'}",
                    dataType: "json",
                    timeout: (2 * 1000000),
                    beforeSend: function () {
                        blockui();
                        $('#divloading').html('Please Wait while loading your requested contents...');
                        //$('#lblQuestionBefore').html("Saving...");



                    },
                    complete: function () {
                        $('#divloading').html('');
                        //$('#lblQuestionBefore').html('');
                        // $('#lblQuestionComplete').html("Saved");


                    },
                    success: function (data) {
                        value_storage = data;
                        // and save it
                      //  $.jStorage.set(mysubidkeystorage.toString(), value_storage,3000000);
                        var len = data.d.length;
                        var totallen = data.d.length;
                        var txt = "";
                        var totalmcqs = 0;
                        //alert(len);
                        if (len > 0) {
                            for (var i = 0; i < len; i++) {

                                txt += '<tr><td></td><td style="font-size: 12px; font-weight: bold; text-transform: capitalize;">' + data.d[i].SubjectName +
                                    '</td><td style="font-size: 12px; font-weight: bold; text-transform: capitalize;">' + data.d[i].TestName +
                                    '</td><td data-hidden="1">' + data.d[i].TestId +
                                     '</td><td data-hidden="1">' + data.d[i].SubId +
                                    '</td><td style="font-size: 10px;">' + data.d[i].AdminName +
                                    '</td><td><label style="font-size: 12px;">' + data.d[i].TotalMcqs +
                                    '</label></td><td> <a href="#" class="btn btn-info Practice">Make Practice</a></td><td> <a href="#" class="btn btn-danger divUserTest">Take Test</a></td><td style="font-size: 12px;"><a href="#" class="btn btn-link AddUserMcqs">Add Question</a></td></tr>';
                                totalmcqs = totalmcqs + data.d[i].TotalMcqs;
                            }

                            if (txt != '') {
                                hide_all();
                                Scroll_top();
                                $("#divhometbl").show();
                                $('#allmcqscount').show();
                                $('#maintable').show();
                                if ($.fn.DataTable.isDataTable('#example')) {
                                    $('#example').DataTable().destroy();
                                    $('#example tbody').empty();
                                }


                                $("#example").append(txt);
                                $("#totalmcqs").text("Total Number of Mcqs is " + totalmcqs + "  Approximately");
                                myTable = $("#example").DataTable(
                                     {
                                         paging: false,
                                         responsive: true,
                                         columnDefs: [
                                        { responsivePriority: 1, targets: 0 },
                                        { responsivePriority: 2, targets: 1 },
                                         { responsivePriority: 3, targets: 7 },
                                         { responsivePriority: 4, targets: 8 },
                                         { responsivePriority: 5, targets: 6 }

                                         ],
                                         "columnDefs": [
                                              {
                                                  "targets": [1],
                                                  "visible": false,
                                                  "searchable": false
                                              },
                                             {
                                                 "targets": [3],
                                                 "visible": false,
                                                 "searchable": false
                                             },
                                             {
                                                 "targets": [4],
                                                 "visible": false,
                                                 "searchable": false
                                             }
                                         ],
                                         select: {
                                             style: 'multi'
                                         }
                                     }
                                    );
                                myTable.on('order.dt search.dt', function () {
                                    myTable.column(0, { search: 'applied', order: 'applied' }).nodes().each(function (cell, i) {
                                        cell.innerHTML = i + 1;
                                    });
                                }).draw()

                            }
                        }
                        setTimeout($.unblockUI, 1000);

                    },
                    error: function (result) {

                        alertify.error("Error occour in Loading Mcqs Please try again letter ! ");
                        setTimeout($.unblockUI, 1000);
                    }
                })
               
                }
                else
                {
                    var data = value_storage;
                    var len = data.d.length;
                    var totallen = data.d.length;
                    var txt = "";
                    var totalmcqs = 0;
                    //alert(len);
                    if (len > 0) {
                        Scroll_top();
                        for (var i = 0; i < len; i++) {

                            txt += '<tr><td></td><td style="font-size: 12px; font-weight: bold; text-transform: capitalize;">' + data.d[i].SubjectName +
                                '</td><td style="font-size: 12px; font-weight: bold; text-transform: capitalize;">' + data.d[i].TestName +
                                '</td><td data-hidden="1">' + data.d[i].TestId +
                                 '</td><td data-hidden="1">' + data.d[i].SubId +
                                '</td><td style="font-size: 10px;">' + data.d[i].AdminName +
                                '</td><td><label style="font-size: 12px;">' + data.d[i].TotalMcqs +
                                '</label></td><td> <a href="#" class="btn btn-info Practice">Make Practice</a></td><td> <a href="#" class="btn btn-danger divUserTest">Take Test</a></td><td style="font-size: 12px;"><a href="#" class="btn btn-link AddUserMcqs">Add Question</a></td></tr>';
                            totalmcqs = totalmcqs + data.d[i].TotalMcqs;
                        }

                        if (txt != '') {
                            hide_all();
                            $("#divhometbl").show();
                            $('#allmcqscount').show();
                            $('#maintable').show();
                            if ($.fn.DataTable.isDataTable('#example')) {
                                $('#example').DataTable().destroy();
                                $('#example tbody').empty();
                            }


                            $("#example").append(txt);
                            $("#totalmcqs").text("Total Number of Mcqs is " + totalmcqs + "  Approximately");
                            myTable = $("#example").DataTable(
                                 {
                                     paging: false,
                                     responsive: true,
                                     columnDefs: [
                                    { responsivePriority: 1, targets: 0 },
                                    { responsivePriority: 2, targets: 1 },
                                     { responsivePriority: 3, targets: 7 },
                                     { responsivePriority: 4, targets: 8 },
                                     { responsivePriority: 5, targets: 6 }

                                     ],
                                     "columnDefs": [
                                          {
                                              "targets": [1],
                                              "visible": false,
                                              "searchable": false
                                          },
                                         {
                                             "targets": [3],
                                             "visible": false,
                                             "searchable": false
                                         },
                                         {
                                             "targets": [4],
                                             "visible": false,
                                             "searchable": false
                                         }
                                     ],
                                     select: {
                                         style: 'multi'
                                     }
                                 }
                                );
                            myTable.on('order.dt search.dt', function () {
                                myTable.column(0, { search: 'applied', order: 'applied' }).nodes().each(function (cell, i) {
                                    cell.innerHTML = i + 1;
                                });
                            }).draw()

                        }
                    }
                }
                //$('#square').animate({ 'left': i * 360 });
            });
            $("#example").on("click", '.Practice ', function (event) {

                // alert('I am Pracitce :)');
                // var id = myTable.data(this)[0];
                var tr = $(this).closest('tr');
                var row = myTable.row(tr);
                var Id = myTable.row(row[0][0]).data()[3];
                $("#lblTestNamed").html("Test Name: " + myTable.row(row[0][0]).data()[1] + "-" + myTable.row(row[0][0]).data()[2]);
                $("#totr").html('');
                $("#totr_text").html('');


                // Scroll_top();
                hide_all();
                // alert('hello    == id is = ' + Id + ' and row = ' + row + ' tr = ' + tr);
                showPractice(Id);
                $("#mainheader").hide();
                $("#testheader").show();
                CurrentTestid = Id;
                // goToByScroll();
                // $(window).scrollTop($('#tblLoadMcqsAllQuestion').offset().top);
                //$('#btnShowResultdiv').show(200);

                //displayUserInfo(id);
            });
            //$(document).on('change', '[type=checkbox]', AddUserMcqs
            $("#example").on("click", '.divUserTest ', function (event) {

                //  debugger;
                /// alert('I am test :)');
                // var id = myTable.data(this)[0];
                var tr = $(this).closest('tr');
                var row = myTable.row(tr);
                var Id = myTable.row(row[0][0]).data()[3];
                $("#lblTestNamed").html("Test Name: " + myTable.row(row[0][0]).data()[1] + "-" + myTable.row(row[0][0]).data()[2]);
                $("#totr").html('');
                $("#totr_text").html('');
                CurrentTestid = Id;


                Scroll_top();
                hide_all();
                // showTestdiv(CurrentTestid);
                $("#divinst").show();

                // $('#btnShowResultdiv').show(200);
                // $('#btnPracticethistest').show(200);
                // alert('hello    == id is = ' + Id + ' and row = ' + row + ' tr = ' + tr);
                // showPractice(Id);
                //displayUserInfo(id);
            });
            $("#example").on("click", '.AddUserMcqs', function (event) {

                /// alert('I am test :)');
                // var id = myTable.data(this)[0];
                var tr = $(this).closest('tr');
                var row = myTable.row(tr);
                var TestName = myTable.row(row[0][0]).data()[2];
                var SubName = myTable.row(row[0][0]).data()[1];
                var TestId = myTable.row(row[0][0]).data()[3];
                var subid = myTable.row(row[0][0]).data()[4];
                // $("#totr_text").html('Remaining: ');
                // alert('sub name ' + SubName + '  subid ' + subid + '  test name ' + TestName + '   test id ' + TestId);
                Scroll_top();
                hide_all();
                $('#ddlSubject').empty().append($('<option>', { value: subid }).text(SubName));
                $('#ddlTest').empty().append($('<option>', { value: TestId }).text(TestName));
                // $("#ddlSubject").val(subid);
                $("#ddlTest").val(TestId);
                $("#divMcqsQuestion").show();
                $("#divCommonSubTestNumb").show();
                // $('#btnShowResultdiv').show(200);
                // $('#btnPracticethistest').show(200);
                // alert('hello    == id is = ' + Id + ' and row = ' + row + ' tr = ' + tr);
                // showPractice(Id);
                //displayUserInfo(id);
            });
            //$('.Practice').click(function(){
            //    alert("hsdfsfell0");
            //});
            function msieversion() {

                var ua = window.navigator.userAgent;
                var msie = ua.indexOf("MSIE ");

                if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))  // If Internet Explorer, return version number
                {
                    return (parseInt(ua.substring(msie + 5, ua.indexOf(".", msie))));
                }
                else  // If another browser, return 0
                {
                    return ('otherbrowser');
                }

                return false;
            }

            $("#ddlallquiz").change(function () {
                // debugger;
                var select_qno = $("#ddlallquiz").val();
                var tridse = 'tr_question_' + select_qno;
                //var divPosition = $(trid).offset();

                goToByScroll(tridse);
                // $(tridse).on('click', goToByScroll($(tridse).val()));
                // alert($('.content-nav').offset());

                //$(trid).scroll();
                //console.log(trid);
                // document.getElementById("#" + trid).scrollIntoView()
                //$(trid).scrollView();

                // container.scrollTop(scrollTo.offset().top - container.offset().top + container.scrollTop());

            })
            $('#btntestthistest').click(function () {

                //   debugger;
                if (CurrentTestid != undefined || CurrentTestid != 0) {
                    // Scroll_top();
                    Router.navigate();
                    showTestdiv(CurrentTestid);
                    $("#mainheader").hide();
                    $("#testheader").show();
                    // hide_all();
                    //  $('#btnShowResultdiv').show(1000);
                    // $('#LoadMcqsAllQuestion').show(1000);

                }
                else {
                    alertify.error('Please Refresh the Page');
                }
            })
            $('#btnPracticethistest').click(function () {
                //  debugger;
                if (confirm("Are you sure you want to finish the test?")) {
                    if (CurrentTestid != undefined || CurrentTestid != 0) {
                        Scroll_top();
                        showPractice(CurrentTestid);
                        $("#mainheader").hide();
                        $("#testheader").show();
                        // hide_all();
                        // $('#btnShowResultdiv').show(1000);
                        //  $('#LoadMcqsAllQuestion').show(1000);

                    }
                    else {
                        alertify.error('Please Refresh the Page');
                    }
                }
                return false;
            })


            $("#btndefaulthome").click(function () {
                if (confirm("Are you sure you want to finish the test?")) {
                    if (CurrentTestid != undefined || CurrentTestid != 0) {
                        hide_all();
                        Router.navigate();
                        $("#divhometbl").show();
                        $('#allmcqscount').show();
                        $('#maintable').show();
                        //$('#catbox').show();
                        //$('#maintable').show();
                        //$("#mainheader").show();
                        //$("#testheader").hide();

                        // hide_all();
                        // $('#btnShowResultdiv').show(1000);
                        //  $('#LoadMcqsAllQuestion').show(1000);

                    }
                    else {
                        alertify.error('Please Refresh the Page');
                    }
                }
                return false;

                //$("#logindiv").show();

            });

            $("#canceltest").click(function () {
                if (confirm("Are you sure you want to finish the test?")) {
                    if (CurrentTestid != undefined || CurrentTestid != 0) {
                        hide_all();
                        $("#divhometbl").show();
                        $('#allmcqscount').show();
                        $('#maintable').show();
                       // $('#catbox').show();
                        //$('#maintable').show();
                        //$("#mainheader").show();
                        //$("#testheader").hide();
                        // hide_all();
                        // $('#btnShowResultdiv').show(1000);
                        //  $('#LoadMcqsAllQuestion').show(1000);

                    }
                    else {
                        alertify.error('Please Refresh the Page');
                    }
                }
                return false;
                //$("#logindiv").show();

            });
            $("#btncancel").click(function () {
                if (confirm("Are you sure you want to cancel?")) {
                    if (CurrentTestid != undefined || CurrentTestid != 0) {
                        hide_all();
                        //$('#allmcqscount').show();
                        $('#catbox').show();
                      //  $("#mainheader").show();
                      //  $("#testheader").hide();
                        // hide_all();
                        // $('#btnShowResultdiv').show(1000);
                        //  $('#LoadMcqsAllQuestion').show(1000);

                    }
                    else {
                        alertify.error('Please Refresh the Page');
                    }
                }
                return false;
                //$("#logindiv").show();

            });
            $("#proceedfur").click(function () {
                hide_all();
                showTestdiv(CurrentTestid);
                //$("#divinst").show();
                //showTestdiv(Id);
                $("#mainheader").hide();
                $("#testheader").show();
                // $("#logindiv").show();

            });

            function showPractice_old(TestId) {
                // debugger;
                hide_all();
                //#divMcqsQuestion
                CurrentTestid = TestId;
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "default.aspx/LoadMcqsQuestions",
                    data: "{'TestId':'" + TestId + "','name':'" + 1 + "'}",
                    dataType: "json",
                    timeout: (2 * 10000000),
                    beforeSend: function () {


                        $('#divloading').html('Please Wait while loading your requested contents...');
                        blockui();
                        //$('#lblQuestionBefore').html("Saving...");



                    },
                    complete: function () {
                        $('#divloading').html('');
                        //$('#lblQuestionBefore').html('');
                        // $('#lblQuestionComplete').html("Saved");


                    },
                    success: function (data) {
                        var len = data.d.length;
                        var txt = "";
                        var Alloptions = new Array();
                        setTimeout($.unblockUI, 1000);
                        if (len > 0) {
                            $('#tblLoadMcqsAllQuestion').find('div').empty();
                            $("#tblLoadMcqsAllQuestion").empty();
                            txt += "<table><tbody>"
                            var Srno = 1;
                            var mcq = 1;
                            var exp = "";
                            for (var i = 0; i < len; i++) {

                                txt += '<tr ><td> <label>Q.' + parseInt(Srno++) + '</label></td><td style="background-color: #FFFFFF !important;"><b><label style="font-size: 12px; margin-left: 3px;margin-top: 9px;">' + $.trim(data.d[i].QuestionText.unquoted().replace(/\s+/g, " ")) + '</label></b></td></tr>'; //  <td>' + data.d[i].Points + '</td></tr>';
                                // alert("data.d[i].op1 = "+data.d[i].op1)
                                parseInt(mcq++);
                                exp = "";

                                if (($.trim(data.d[i].ExplanationText.unquoted().replace(/\s+/g, " ")).length > 10)) {
                                    //  alert(data.d[i].ExplanationText);
                                    exp = '<button id="explanat">How</button>';
                                    $('#explanat').click(function () {
                                        // $.growlUI('Explanation', data.d[i].ExplanationText);
                                       // alert('hello');
                                    });
                                    //var $jQueryObject = $($.parseHTML(data.d[i].ExplanationText.unquoted().unquoted().replace(/\s+/g, " ")));
                                    //title = "' + $jQueryObject.append().text() + '"
                                    //var  exp_label = '<label style="font-size: 12px; margin-left: 3px;margin-top: 9px;">' + $.trim(data.d[i].ExplanationText.unquoted().replace(/\s+/g, " ")) + '</label>';
                                    //exp = '<a class="exptxt" data-toggle="tooltip" id="tooltip" title = ' + exp_label + '>How</a>';
                                    // $(".exptxt").tooltip({ content: '"' + $jQueryObject.append().html() + '"' });
                                    //  $('#tooltip').css('cursor', 'cursor: pointer;');
                                    //$('#tooltip').prop('title', );
                                    //exp = '<a class="exptxt" href="#" class="info" data-toggle="tooltip" data-placement="top" id="tooltip1" title="' + (data.d[i].ExplanationText) + '">How</a>';
                                }
                                if (data.d[i].op1 == true) {
                                    // alert("txt = " + txt);
                                    if ($.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) != "") {

                                        if (data.d[i].Option1Correct == true) {


                                            Alloptions[1] += '<tr class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall"><label class="pop" >' + $.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) + '</label>' + exp + '</td></tr>';
                                            $("#explanat").remove();
                                            exp = "";
                                        }
                                        else {
                                            Alloptions[1] += '<tr><td><img class="optionimg " src="../acme-free/img/UXRadioButton.png" /></td><td class="clsloadmcqsall" ><label class="pop">' + $.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                        }
                                    }


                                }
                                if (data.d[i].op2 == true) {
                                    // var exp = "";
                                    //exp = "";
                                    //if (($.trim(data.d[i].ExplanationText.unquoted().replace(/\s+/g, " ")) != "")) {
                                    //    exp = '<a href="#" class="exptxt" data-toggle="tooltip" title="' + (data.d[i].ExplanationText) + '"id="tooltip'+2 + mcq + '" >How</a>';
                                    //    //$('#tooltip2').prop('title', (data.d[i].ExplanationText));

                                    //}
                                    if ($.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        if (data.d[i].Option2Correct == true) {
                                            Alloptions[2] += '<tr class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1" ><td><img  class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall"><label class="pop" >' + $.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) + '</label> ' + exp + '</td></tr>';
                                            $("#explanat").remove();
                                            exp = "";
                                        }
                                        else {
                                            Alloptions[2] += '<tr><td><img class="optionimg " src="../acme-free/img/UXRadioButton.png" /></td><td class="clsloadmcqsall" ><label class="pop">' + $.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                        }
                                    }
                                }


                                if (data.d[i].op3 == true) {
                                    // var exp = "";
                                    //exp = "";
                                    //if (($.trim(data.d[i].ExplanationText.unquoted().replace(/\s+/g, " ")) != "")) {
                                    //    exp = '<a href="#" class="exptxt" data-toggle="tooltip" title="' + (data.d[i].ExplanationText) + '" id="tooltip' +3+ mcq + '" >How</a>';
                                    //   // $('#tooltip3').prop('title', (data.d[i].ExplanationText));

                                    //}
                                    if ($.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        if (data.d[i].Option3Correct == true) {
                                            Alloptions[3] += '<tr class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><td><img  class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall"  ><label class="pop" >' + $.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) + '</label>' + exp + '</td></tr>';
                                            $("#explanat").remove();
                                            exp = "";
                                        }
                                        else {
                                            Alloptions[3] += '<tr><td><img class="optionimg " src="../acme-free/img/UXRadioButton.png" /></td><td class="clsloadmcqsall" ><label class="pop">' + $.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                        }
                                    }
                                }


                                if (data.d[i].op4 == true) {
                                    //var exp = "";
                                    //exp = "";
                                    //if (($.trim(data.d[i].ExplanationText.unquoted().replace(/\s+/g, " ")) != "")) {
                                    //    exp = '<a href="#" class="exptxt" data-toggle="tooltip" title="' + (data.d[i].ExplanationText) + '"  id="tooltip' + 4 + mcq + '" >How</a>';
                                    //   // $('#tooltip4').prop('title', (data.d[i].ExplanationText));
                                    //    //exp = '<a href="#" class="exptxt"  id="tooltip4" title="' + (data.d[i].ExplanationText) + '">How</a>';
                                    //}
                                    if ($.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        if (data.d[i].Option4Correct == true) {
                                            Alloptions[4] += '<tr class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall" ><label class="pop" >' + $.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) + '</label>' + exp + '</td></tr>';
                                            $("#explanat").remove();
                                            exp = "";
                                        }
                                        else {
                                            Alloptions[4] += '<tr><td><img class="optionimg " src="../acme-free/img/UXRadioButton.png" /></td><td class="clsloadmcqsall" ><label class="pop">' + $.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                        }
                                    }

                                }


                                if (data.d[i].op5 == true) {
                                    //  var exp = "";
                                    // exp = "";
                                    //if (($.trim(data.d[i].ExplanationText.unquoted().replace(/\s+/g, " ")) != "")) {
                                    //    exp = '<a href="#" class="exptxt" data-toggle="tooltip" title="' + (data.d[i].ExplanationText) + '" id="tooltip' + 5 + mcq + '" >How</a>';
                                    //   // $('#tooltip5').prop('title', (data.d[i].ExplanationText));
                                    //    //exp = '<a href="#" class="exptxt"   id="tooltip5" title="' + (data.d[i].ExplanationText) + '">How</a>';
                                    // }
                                    if ($.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        if (data.d[i].Option5Correct == true) {
                                            Alloptions[5] += '<tr class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall"><label class="pop">' + $.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                        }
                                        else {
                                            Alloptions[5] += '<tr><td><img class="optionimg " src="../acme-free/img/UXRadioButton.png" /></td><td class="clsloadmcqsall" ><label class="pop">' + $.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                        }
                                        exp = "";
                                    }
                                }


                                if (data.d[i].op6 == true) {
                                    if ($.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        if (data.d[i].Option6Correct == true) {
                                            Alloptions[6] += '<tr class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class=" clscorrectop clsloadmcqsall" ><label class="pop">' + $.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                        }
                                        else {
                                            Alloptions[6] += '<tr><td><img class="optionimg " src="../acme-free/img/UXRadioButton.png" /></td><td class="clsloadmcqsall"><label class="pop">' + $.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                        }
                                    }
                                }


                                if (data.d[i].op7 == true) {
                                    if ($.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        if (data.d[i].Option7Correct == true) {
                                            Alloptions[7] += '<tr class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall"  ><label class="pop">' + $.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                        }
                                        else {
                                            Alloptions[7] += '<tr><td><img class="optionimg " src="../acme-free/img/UXRadioButton.png" /></td><td class="clsloadmcqsall"><label class="pop">' + $.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                        }
                                    }
                                }


                                if (data.d[i].op8 == true) {
                                    if ($.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        if (data.d[i].Option8Correct == true) {
                                            Alloptions[8] += '<tr class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall"  ><label class="pop">' + $.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                        }
                                        else {
                                            Alloptions[8] += '<tr><td><img class="optionimg " src="../acme-free/img/UXRadioButton.png" /></td><td class="clsloadmcqsall" ><label class="pop">' + $.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) + '</label></td><td></td></tr>';
                                        }
                                    }


                                }
                                // shuffle(Alloptions);
                                // Alloptions.sort(function () { return 0.5 - Math.random() });
                                txt += Alloptions.toString();
                                //   exp = '<a href="#" class="exptxt" data-toggle="tooltip" title="' + (data.d[i].ExplanationText) + '">How</a>';
                                txt += '<tr><td></td><td ><img style="width: 20%;" src="../acme-free/img/divider2.gif" /> </td></tr>';
                                $(".exptxt").removeAttr("title");
                                $(".exptxt").val('');
                                Alloptions.length = 0;
                                //if (mcq == 50) {
                                //    break;
                                //}
                                // $("#tblLoadMcqsAllQuestion").randomize('tr td');


                            }

                            if (txt != '') {
                                $("#tblLoadMcqsAllQuestion").append(txt + '</tbody>');

                                // $("#tblLoadMcqsAllQuestion tr").shuffle();
                                $('html, body').animate({
                                    scrollTop: $('#LoadMcqsAllQuestion').offset().top
                                }, 2000);
                                // $("#tblLoadMcqsAllQuestion").DataTable();
                                //  alert(txt);
                            }
                        }

                    },
                    error: function (Result) {
                        setTimeout($.unblockUI, 1000);
                        alertify.error("a network related Error occour. Please Refresh the page! ");
                    }
                });

                //$('#divShowMcqsQuestion').show(100);
                $('#LoadMcqsAllQuestion').show(200).animate({ scrollTop: 600 });
                $('#btntestthistest').show(200);
                $("#tblLoadMcqsAllQuestion").show();
                // goToByScroll(LoadMcqsAllQuestion);
                // $('#btnSave').hide();
                //  Scroll_top();
                // Scroll_top();
            }
            var TotalScore = 0;
            function showTestdiv_old(TestId) {

                hide_all();
                //#divMcqsQuestion
                Score = 0;
                TotalScore = 0;
                CurrentTestid = TestId;
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",

                    beforeSend: function () {
                        blockui();
                        $('#divloading').html('Please Wait while loading your requested contents...');
                        //$('#lblQuestionBefore').html("Saving...");



                    },

                    complete: function () {
                        $('#divloading').html('');
                        //$('#lblQuestionBefore').html('');
                        // $('#lblQuestionComplete').html("Saved");


                    },
                    url: "default.aspx/LoadMcqsQuestions",
                    data: "{'TestId':'" + TestId + "','name':'" + 2 + "'}",
                    dataType: "json",
                    timeout: (2 * 1000000),
                    success: function (data) {
                        setTimeout($.unblockUI, 1000);
                        var len = data.d.length;
                        var txt = "";
                        TotalScore = data.d.length;
                        if (len > 0) {
                            $('#tbodytblLoadMcqsAllQuestion').find('div').empty();
                            $("#tbodytblLoadMcqsAllQuestion").empty();
                            var Srno = 1;
                            for (var i = 0; i < len; i++) {

                                txt += '<tr ><td><label>Q.' + parseInt(Srno++) + '</label></td><td style="background-color: #FFFFFF !important;"><b><label style="color:black; font-size:12px;  margin-left: 3px;margin-top: 9px;">' + $.trim(data.d[i].QuestionText.unquoted().replace(/\s+/g, " ")) + '</label></b></td></tr>'; //  <td>' + data.d[i].Points + '</td></tr>';
                                // alert("data.d[i].op1 = "+data.d[i].op1)
                                if (data.d[i].op1 == true) {
                                    // alert("txt = " + txt);
                                    //if (data.d[i].Option1Correct == true) {

                                    //    txt += '<tr><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall"colspan="2"><label class="pop">' + $.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';

                                    //}
                                    //else {
                                    if ($.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        txt += '<tr id="1' + data.d[i].McqsQuestionId + '"><td><input type="checkbox" class="largerCheckbox" value="1" id ="' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></td><td class="clsloadmcqsall" colspan="2"><label class="pop">' + $.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    }
                                    // }

                                }
                                if (data.d[i].op2 == true) {
                                    // if (data.d[i].Option2Correct == true) {
                                    //    txt += '<tr ><td><img  class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall" colspan="2"><label class="pop">' + $.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    //  }
                                    //  else {
                                    if ($.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        txt += '<tr id="2' + data.d[i].McqsQuestionId + '"><td><input type="checkbox" class="largerCheckbox" value="2" id ="' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></td><td class="clsloadmcqsall" colspan="2"><label class="pop">' + $.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    }
                                    //    }

                                }


                                if (data.d[i].op3 == true) {
                                    //if (data.d[i].Option3Correct == true) {
                                    //    txt += '<tr class=""><td><img  class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall"  colspan="2"><label class="pop">' + $.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    //}
                                    //else {
                                    if ($.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        txt += '<tr id="3' + data.d[i].McqsQuestionId + '"><td><input type="checkbox" class="largerCheckbox" value="3" id ="' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></td><td class="clsloadmcqsall"><label class="pop">' + $.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    }
                                    // }

                                }


                                if (data.d[i].op4 == true) {
                                    //if (data.d[i].Option4Correct == true) {
                                    //    txt += '<tr class=""><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall" colspan="2"><label class="pop">' + $.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    //}
                                    //else {
                                    if ($.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        txt += '<tr id="4' + data.d[i].McqsQuestionId + '"><td><input type="checkbox" class="largerCheckbox" value="4" id ="' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></td><td class="clsloadmcqsall"><label class="pop">' + $.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    }
                                    // }

                                }


                                if (data.d[i].op5 == true) {
                                    //if (data.d[i].Option5Correct == true) {
                                    //    txt += '<tr class=""><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall"colspan="2"><label class="pop">' + $.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    //}
                                    //else {
                                    if ($.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        txt += '<tr id="5' + data.d[i].McqsQuestionId + '"><td><input type="checkbox" class="largerCheckbox" value="5" id ="' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></td><td class="clsloadmcqsall"><label class="pop">' + $.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    }
                                    //}

                                }


                                if (data.d[i].op6 == true) {
                                    //if (data.d[i].Option6Correct == true) {
                                    //    txt += '<tr class=""><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class=" clscorrectop clsloadmcqsall"  colspan="2"><label class="pop">' + $.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    //}
                                    //else {
                                    if ($.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        txt += '<tr id="6' + data.d[i].McqsQuestionId + '"><td><input type="checkbox" class="largerCheckbox" value="6" id ="' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></td><td class="clsloadmcqsall"><label class="pop">' + $.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    }
                                    // }

                                }


                                if (data.d[i].op7 == true) {
                                    //if (data.d[i].Option7Correct == true) {
                                    //    txt += '<tr class=""><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall"  colspan="2"><label class="pop">' + $.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    //}
                                    //else {
                                    if ($.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        txt += '<tr id="7' + data.d[i].McqsQuestionId + '" ><td><input type="checkbox" class="largerCheckbox" value="7" id ="' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></td><td class="clsloadmcqsall"><label class="pop">' + $.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    }
                                    // }

                                }


                                if (data.d[i].op8 == true) {
                                    //if (data.d[i].Option8Correct == true) {
                                    //    txt += '<tr class=""><td><img class="checkimg" src="../acme-free/img/check3.png" /></td><td class="clscorrectop clsloadmcqsall"    colspan="2"><label class="pop">' + $.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    //}
                                    //else {
                                    if ($.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) != "") {
                                        txt += '<tr id="8' + data.d[i].McqsQuestionId + '"><td><input type="checkbox" class="largerCheckbox" value="8" id ="' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></td><td class="clsloadmcqsall" ><label class="pop">' + $.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) + '</label></td></tr>';
                                    }
                                    // }


                                }
                                var correctop;
                                if (data.d[i].Option1Correct == true) {
                                    correctop = 1;
                                }
                                else
                                    if (data.d[i].Option2Correct == true) {
                                        correctop = 2;
                                    }
                                    else
                                        if (data.d[i].Option3Correct == true) {
                                            correctop = 3;
                                        }
                                        else
                                            if (data.d[i].Option4Correct == true) {
                                                correctop = 4;
                                            }
                                            else
                                                if (data.d[i].Option5Correct == true) {
                                                    correctop = 5;
                                                }
                                                else
                                                    if (data.d[i].Option6Correct == true) {
                                                        correctop = 6;
                                                    }
                                                    else
                                                        if (data.d[i].Option7Correct == true) {
                                                            correctop = 7;
                                                        }
                                                        else
                                                            if (data.d[i].Option8Correct == true) {
                                                                correctop = 8;
                                                            }

                                txt += '<tr><td colspan="2" ><label hidden="hidden" value="' + correctop + '" id="' + data.d[i].McqsQuestionId + '"  name="' + data.d[i].McqsQuestionId + '" for="' + data.d[i].McqsQuestionId + '" >' + correctop + '</label></td></tr>';
                                txt += '<tr><td colspan="2" ><img style="width: 20%;" src="../acme-free/img/divider2.gif" /></td></tr>';




                            }

                            if (txt != '') {
                                $("#tblLoadMcqsAllQuestion").append(txt + '</tbody>');
                                $('html, body').animate({
                                    scrollTop: $('#LoadMcqsAllQuestion').offset().top
                                }, 2000);
                                // $("#tblLoadMcqsAllQuestion").DataTable();
                                //  alert(txt);
                            }
                        }

                    },
                    error: function (Result) {
                        setTimeout($.unblockUI, 1000);
                        alertify.error("Error to load Mcqs! ");
                    }
                });

                //$('#divShowMcqsQuestion').show(100);
                $('#LoadMcqsAllQuestion').show(1000);
                $('#btnPracticethistest').show(1000);
                $('#btnShowResultdiv').show(1000);
                $("#tblLoadMcqsAllQuestion").show();
                // Scroll_top();
                // $('#btnSave').hide();
                // Scroll_top();
            }

            function showPractice(TestId) {
                 //debugger;
                hide_all();
                // var browser = msieversion();
                // alert(browser);
                //#divMcqsQuestion
                CurrentTestid = TestId;
                var value_storage = $.jStorage.get(CurrentTestid.toString());
                value_storage = null;
                //if (!value_storage || value_storage.d.length == 0) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "../default.aspx/LoadMcqsQuestions",
                        data: "{'TestId':'" + TestId + "','name':'" + 1 + "'}",
                        dataType: "json",
                        timeout: (2 * 10000000),
                        beforeSend: function () {


                            $('#divloading').html('Please Wait while loading your requested contents...');
                            blockui();
                            //$('#lblQuestionBefore').html("Saving...");



                        },
                        complete: function () {
                            $('#divloading').html('');
                        },
                        success: function (data) {
                           
                            var len = data.d.length;
                            var txt = "";
                            var op1_rand = "";
                            var op2_rand = "";
                            var op3_rand = "";
                            var op4_rand = "";
                            var op5_rand = "";
                            var op6_rand = "";
                            var op7_rand = "";
                            var op8_rand = "";
                            var exp = "";
                            var exp_by = "";
                            $("#totq").text(len);
                            $("#totr").text('');
                            $("#totr_text").html('');

                            subname = data.d[0].SubjectName;
                            testname = data.d[0].TestName;
                          //  console.log("SubName : " + subname + " testname = " + testname)
                            // var txt = new Array();
                            setTimeout($.unblockUI, 1000);
                            if (len > 0) {
                                value_storage = data;
                                $.jStorage.set(CurrentTestid.toString(), value_storage, 300000);
                                $('#tblLoadMcqsAllQuestion').find('div').empty();
                                $("#tblLoadMcqsAllQuestion").empty();
                                $("#ddlallquiz").html('');
                                var Srno = 1;
                                var mcq = 1;
                                var exp = "";
                                $("#ddlallquiz").append($("<option></option>").attr("value", 0).text('Question Status'));
                                //for (var i = 0; i < len; i++) {
                                //  myops = [];
                                var random_length;// = Math.floor(Math.random() * len);
                                // for (var i = 0; i < len; i++) {
                                //myops = [];
                                var count = 0;
                                var myops = new Array();
                                while (count < len) {
                                    myops = [];
                                    var i = Math.floor(Math.random() * len);
                                    if (data.d[i] != "selected") {
                                        
                                    $("#ddlallquiz").append($("<option></option>").attr("value", Srno).text(Srno));

                                    txt += '<div id="uniq_mcq_with_options' + data.d[i].McqsQuestionId + '"><div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" style="background-color: #FFFFFF !important;" id="tr_question_' + Srno + '" > <label>Q.'
                                        + parseInt(Srno++) +
                                        '</label></div><div class="col-xs-10 col-sm-10 col-md-10 col-lg-10"><b><label style="font-size: 14px; margin-left: 3px;margin-top: -1px;">'
                                        + $.trim(data.d[i].QuestionText.unquoted().replace(/\s+/g, " ").replace(/\n/g, " ")) +
                                        '</label></b></div></div>'; //  <td>' + data.d[i].Points + '</td></tr>';

                                    // alert("data.d[i].op1 = "+data.d[i].op1)
                                    parseInt(mcq++);
                                    exp = "";

                                    if (data.d[i].op1 == true) {
                                        // alert("txt = " + txt);
                                        var op1_txt = "";
                                        if ($.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) != "") {

                                            if (data.d[i].Option1Correct == true) {

                                                op1_txt = '<div  class="row  uniquemcq"><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div  class="col-xs-10  clsloadmcqsall"><label class="pop" id="lbl_p_op1_' +
                                                    data.d[i].McqsQuestionId + '" >' +
                                                    $.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) + '</label>' + exp + '</div></div>';
                                                $("#explanat").remove();
                                                exp = "";
                                            }
                                            else {
                                                op1_txt = '<div  class=" row uniquemcq"><div class= "col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop"  id="lbl_p_op1_' + data.d[i].McqsQuestionId + '" >' + $.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                        }

                                        //txt += op1_txt;
                                        op1_rand = op1_txt;
                                        myops[0] = op1_txt;


                                    }
                                    if (data.d[i].op2 == true) {
                                        var op2_txt = "";
                                        if ($.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            if (data.d[i].Option2Correct == true) {
                                                op2_txt= '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img  class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall"><label class="pop" id="lbl_p_op2_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) + '</label> ' + exp + '</div></div>';
                                                $("#explanat").remove();
                                                exp = "";
                                            }
                                            else {
                                                op2_txt= '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op2_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                        }
                                        op2_rand = op2_txt;
                                      //  txt += op2_txt;
                                        myops[1] = op2_txt;

                                    }


                                    if (data.d[i].op3 == true) {
                                        var op3_txt = "";
                                        if ($.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            if (data.d[i].Option3Correct == true) {
                                                op3_txt = '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img  class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall"  ><label class="pop" id="lbl_p_op3_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) + '</label>' + exp + '</div></div>';
                                                $("#explanat").remove();
                                                exp = "";
                                            }
                                            else {
                                                op3_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op3_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                        }
                                       // txt += op3_txt;
                                        op3_rand = op3_txt;
                                        myops[2] = op3_txt;
                                    }


                                    if (data.d[i].op4 == true) {
                                        var op4_txt = "";
                                        if ($.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            if (data.d[i].Option4Correct == true) {
                                                op4_txt = '<div class="row " ><div class=" correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op4_' + data.d[i].McqsQuestionId + '" >' + $.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) + '</label>' + exp + '</div></div>';
                                                $("#explanat").remove();
                                                exp = "";
                                            }
                                            else {
                                                op4_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op4_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                        }
                                        op4_rand = op4_txt;
                                      //  txt += op4_txt;
                                        myops[3] = op4_txt;

                                    }


                                    if (data.d[i].op5 == true) {
                                        var op5_txt = "";
                                        if ($.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            if (data.d[i].Option5Correct == true) {
                                                op5_txt = '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall"><label class="pop" id="lbl_p_op5_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                            else {
                                                op5_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op5_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                            exp = "";
                                        }
                                       // txt += op5_txt;
                                        myops[4] = op5_txt;
                                        op5_rand = op5_txt;
                                    }


                                    if (data.d[i].op6 == true) {
                                        var op6_txt = "";
                                        if ($.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            if (data.d[i].Option6Correct == true) {
                                                op6_txt = '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall" ><label class="pop" id="lbl_p_op6_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                            else {
                                                op6_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op6_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                        }
                                        //txt += op6_txt;
                                        op6_rand = op6_txt;
                                        myops[5] = op6_txt;
                                    }


                                    if (data.d[i].op7 == true) {
                                        var op7_txt = "";
                                        if ($.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            if (data.d[i].Option7Correct == true) {
                                                op7_txt = '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall"  ><label class="pop" id="lbl_p_op7_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                            else {
                                                op7_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op7_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                        }
                                       // txt += op7_txt;
                                        op7_rand = op7_txt;
                                        myops[6] = op7_txt;
                                    }


                                    if (data.d[i].op8 == true) {
                                        var op8_txt = "";
                                        if ($.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            if (data.d[i].Option8Correct == true) {
                                                op8_txt = '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall"  ><label class="pop" id="lbl_p_op8_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                            else {
                                                op8_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op8_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                            }
                                        }
                                      //  txt += op8_txt;
                                        op8_rand = op8_txt;
                                        myops[7] = op8_txt;


                                    }
                                    //---------------------- randomization-----------------------------

                                   // var myops_i = 0
                                   // //variable used to contain controlled random number 
                                   // var random_length;
                                   //// var spacing = "<br>"
                                   // //while all of array elements haven't been cycled thru
                                   // while (myops_i < myops.length) {
                                   //     //generate random num between 0 and arraylength-1
                                   //     random_length = Math.floor(Math.random() * myops.length)
                                   //     //if element hasn't been marked as "selected"
                                   //     if (myops[random_length] != "selected")
                                   //     {
                                   //        // document.write(myops[random_length] + " ");
                                   //         txt += myops[random_length];
                                   //         //mark element as selected
                                   //         myops[random_length] = "selected"
                                   //         i++
                                   //     }
                                   // }



                                    //-------------------------------
                                     exp = "";
                                     exp_by = "";
                                    if ($.trim(data.d[i].ExplanationText.unquoted().replace(/\s+/g, " ")) != "") {
                                       
                                        if (data.d[i].isExplained == 1) {
                                             exp_by = '<hr/><span>Checked and Explained By: </span><br><img  src="../../../../All_Images/staff_images/'+data.d[i].exp_check_staff_pic+'" width="45" height="45" /> '+data.d[i].exp_check_staff_name+' <br/> '+data.d[i].exp_check_staff_qual+' <br/> Accuracy: '+data.d[i].exp_check_staff_acc+'% <hr>';
                                        }
                                        else {
                                            exp_by = "";
                                        }
                                        
                                        exp = '<a href="#/" class="btn btn-info" data-html="true" data-placement="bottom" data-toggle="tooltip" title="' + $.trim(data.d[i].ExplanationText.unquoted().replace(/\"/g, "'").replace(/\s+/g, " ").replace(/\n/g, " "))+exp_by.replace(/\"/g,"'")+'">Explanation</a>';
                                    }
                                    else {
                                        exp = '';
                                    }
                                   // shuffle(myops);
                                      //  console.log(shuffle(myops))
                                     myops.sort(function () { return 0.5 - Math.random() });
                                        //txt += txt.toString();
                                        for (var j = 0; j < myops.length; j++)
                                        {
                                            txt += myops[j];
                                        }
                                    
                                    //   exp = '<a href="#" class="exptxt" data-toggle="tooltip" title="' + (data.d[i].ExplanationText) + '">How</a>';
                                        txt += '</div><div class ="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"></div><div class="col-xs-10" > <input type="button" class="btn btn-default btn-sm btnReporttoggle" id="' + data.d[i].McqsQuestionId + '" name="My Name is nauman" value="Report"  /> ' + exp + ' <button class="btn  btn-social btn-facebook  sharemcq" id="999' + data.d[i].McqsQuestionId + '" name="999tr_question_' + Srno + '" style="display:none; background-color:#30487b; color:#fff; ">Post on Facebook</i></button><div id="btnReporttoggle_' + data.d[i].McqsQuestionId + '"></div><img style="width: 20%;" src="/acme-free/img/divider2.gif" /> </div></div>';

                                   // txt += '<a href="#" class="exptxt" data-toggle="tooltip" title="' + (data.d[i].ExplanationText) + '">How</a>';
                                  //  txt += '</div><div class ="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"></div><div class="col-xs-10" ><img style="width: 20%;" src="/acme-free/img/divider2.gif" />  <input type="button" class="btn btn-default btn-sm btnReporttoggle" id="' + data.d[i].McqsQuestionId + '" name="My Name is nauman" value="Report"  /> <a href="#" class="btn btn-info" data-html="true" data-placement="right" data-toggle="tooltip" title="' + (data.d[i].ExplanationText) + '">How</a> <button class="btn  btn-social btn-facebook  sharemcq" id="999' + data.d[i].McqsQuestionId + '" name="999tr_question_' + Srno + '" style="display:none; background-color:#30487b; color:#fff; ">Post on Facebook</i></button><div id="btnReporttoggle_' + data.d[i].McqsQuestionId + '"></div></div></div>';

                                  //  $(".exptxt").removeAttr("title");
                                   // $(".exptxt").val('');
                                    txt.length = 0;
                                    data.d[i] = "selected";
                                    count++;
                                    
                                    }
                                    //if (mcq == 50) {
                                    //    break;
                                    //}
                                    // $("#tblLoadMcqsAllQuestion").randomize('tr td');


                                }

                                if (txt != '') {
                                    $("#tbodytblLoadMcqsAllQuestion").empty();
                                    $("#tblLoadMcqsAllQuestion").append(txt);
                                    $("#tblLoadMcqsAllQuestion").show();
                                    $('#btntestthistest').show();
                                    $('#LoadMcqsAllQuestion').show();
                                    Scroll_top();
                                    // configuration
                                    Router.config({ mode: 'history' });

                                    // returning the user to the initial state
                                    Router.navigate();

                                    testname = testname.replace(/ /g, '-')
                                    testname = testname.trim();
                                    testname = encodeURIComponent(testname);

                                    subname = subname.replace(/ /g, '-')
                                    subname = subname.trim();
                                    subname = encodeURIComponent(subname);
                                    // forwarding
                                    Router.navigate('Practice/Online-MCAT-ECAT-NEET-UKAT-MEDICAL-Engineering-Free-Mcq-Mcqs-Test-Practise-download/' + subname + '/' + testname + '/TestId=' + CurrentTestid);
                                   
                                }
                            }

                        },
                        error: function (Result) {
                            setTimeout($.unblockUI, 1000);
                            alertify.error("a network related Error occour. Please Refresh the page! ");
                        }
                    });
                }
            //    else {
            //        var data = value_storage;
            //        var len = data.d.length;
            //        var txt = "";
            //        $("#totq").text(len);
            //        $("#totr").text('');
            //        $("#totr_text").html('');

            //        console.log("data.d == "+data.d)
            //        subname = data.d[0].SubjectName;
            //        testname = data.d[0].TestName;
            //        console.log("SubName : " + subname + " testname = " + testname)
            //        // var txt = new Array();
            //        setTimeout($.unblockUI, 1000);
            //        if (len > 0) {
            //            value_storage = data;
            //            $.jStorage.set(CurrentTestid.toString(), value_storage, 300000);
            //            $('#tblLoadMcqsAllQuestion').find('div').empty();
            //            $("#tblLoadMcqsAllQuestion").empty();
            //            $("#ddlallquiz").html('');
            //            var Srno = 1;
            //            var mcq = 1;
            //            var exp = "";
            //            $("#ddlallquiz").append($("<option></option>").attr("value", 0).text('Question Status'));
            //            var random_length;// = Math.floor(Math.random() * len);
            //           // for (var i = 0; i < len; i++) {
            //            //myops = [];
            //            var count = 0;
            //            var myops = new Array();
            //            while (count < len) {
            //                myops = [];
            //                var i = Math.floor(Math.random() * len);
            //                if (data.d[i] != "selected") {

            //                    $("#ddlallquiz").append($("<option></option>").attr("value", Srno).text(Srno));

            //                    txt += '<div id="uniq_mcq_with_options' + data.d[i].McqsQuestionId + '"><div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" style="background-color: #FFFFFF !important;" id="tr_question_' + Srno + '" > <label>Q.'
            //                        + parseInt(Srno++) +
            //                        '</label></div><div class="col-xs-10 col-sm-10 col-md-10 col-lg-10"><b><label style="font-size: 14px; margin-left: 3px;margin-top: -1px;">'
            //                        + $.trim(data.d[i].QuestionText.unquoted().replace(/\s+/g, " ").replace(/\n/g, " ")) +
            //                        '</label></b></div></div>'; //  <td>' + data.d[i].Points + '</td></tr>';

            //                    // alert("data.d[i].op1 = "+data.d[i].op1)
            //                    parseInt(mcq++);
            //                    exp = "";

            //                    if (data.d[i].op1 == true) {
            //                        // alert("txt = " + txt);
            //                        var op1_txt = "";
            //                        if ($.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) != "") {

            //                            if (data.d[i].Option1Correct == true) {

            //                                op1_txt = '<div  class="row  uniquemcq"><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div  class="col-xs-10  clsloadmcqsall"><label class="pop" id="lbl_p_op1_' +
            //                                    data.d[i].McqsQuestionId + '" >' +
            //                                    $.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) + '</label>' + exp + '</div></div>';
            //                                $("#explanat").remove();
            //                                exp = "";
            //                            }
            //                            else {
            //                                op1_txt = '<div  class=" row uniquemcq"><div class= "col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop"  id="lbl_p_op1_' + data.d[i].McqsQuestionId + '" >' + $.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                        }

            //                        //txt += op1_txt;
            //                        op1_rand = op1_txt;
            //                        myops[0] = op1_txt;


            //                    }
            //                    if (data.d[i].op2 == true) {
            //                        var op2_txt = "";
            //                        if ($.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) != "") {
            //                            if (data.d[i].Option2Correct == true) {
            //                                op2_txt = '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img  class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall"><label class="pop" id="lbl_p_op2_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) + '</label> ' + exp + '</div></div>';
            //                                $("#explanat").remove();
            //                                exp = "";
            //                            }
            //                            else {
            //                                op2_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op2_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                        }
            //                        op2_rand = op2_txt;
            //                        //  txt += op2_txt;
            //                        myops[1] = op2_txt;

            //                    }


            //                    if (data.d[i].op3 == true) {
            //                        var op3_txt = "";
            //                        if ($.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) != "") {
            //                            if (data.d[i].Option3Correct == true) {
            //                                op3_txt = '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img  class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall"  ><label class="pop" id="lbl_p_op3_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) + '</label>' + exp + '</div></div>';
            //                                $("#explanat").remove();
            //                                exp = "";
            //                            }
            //                            else {
            //                                op3_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op3_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                        }
            //                        // txt += op3_txt;
            //                        op3_rand = op3_txt;
            //                        myops[2] = op3_txt;
            //                    }


            //                    if (data.d[i].op4 == true) {
            //                        var op4_txt = "";
            //                        if ($.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) != "") {
            //                            if (data.d[i].Option4Correct == true) {
            //                                op4_txt = '<div class="row " ><div class=" correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op4_' + data.d[i].McqsQuestionId + '" >' + $.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) + '</label>' + exp + '</div></div>';
            //                                $("#explanat").remove();
            //                                exp = "";
            //                            }
            //                            else {
            //                                op4_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op4_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                        }
            //                        op4_rand = op4_txt;
            //                        //  txt += op4_txt;
            //                        myops[3] = op4_txt;

            //                    }


            //                    if (data.d[i].op5 == true) {
            //                        var op5_txt = "";
            //                        if ($.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) != "") {
            //                            if (data.d[i].Option5Correct == true) {
            //                                op5_txt = '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall"><label class="pop" id="lbl_p_op5_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                            else {
            //                                op5_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op5_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                            exp = "";
            //                        }
            //                        // txt += op5_txt;
            //                        myops[4] = op5_txt;
            //                        op5_rand = op5_txt;
            //                    }


            //                    if (data.d[i].op6 == true) {
            //                        var op6_txt = "";
            //                        if ($.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) != "") {
            //                            if (data.d[i].Option6Correct == true) {
            //                                op6_txt = '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall" ><label class="pop" id="lbl_p_op6_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                            else {
            //                                op6_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op6_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                        }
            //                        //txt += op6_txt;
            //                        op6_rand = op6_txt;
            //                        myops[5] = op6_txt;
            //                    }


            //                    if (data.d[i].op7 == true) {
            //                        var op7_txt = "";
            //                        if ($.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) != "") {
            //                            if (data.d[i].Option7Correct == true) {
            //                                op7_txt = '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall"  ><label class="pop" id="lbl_p_op7_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                            else {
            //                                op7_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op7_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                        }
            //                        // txt += op7_txt;
            //                        op7_rand = op7_txt;
            //                        myops[6] = op7_txt;
            //                    }


            //                    if (data.d[i].op8 == true) {
            //                        var op8_txt = "";
            //                        if ($.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) != "") {
            //                            if (data.d[i].Option8Correct == true) {
            //                                op8_txt = '<div class="row " ><div class="correctcls col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="checkimg" src="/acme-free/img/check3.png" /></div><div class="col-xs-10  clsloadmcqsall"  ><label class="pop" id="lbl_p_op8_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                            else {
            //                                op8_txt = '<div class="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"><img class="optionimg" src="/acme-free/img/UXRadioButton.png" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op8_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
            //                            }
            //                        }
            //                        //  txt += op8_txt;
            //                        op8_rand = op8_txt;
            //                        myops[7] = op8_txt;


            //                    }
            //                    //---------------------- randomization-----------------------------

            //                    // var myops_i = 0
            //                    // //variable used to contain controlled random number 
            //                    // var random_length;
            //                    //// var spacing = "<br>"
            //                    // //while all of array elements haven't been cycled thru
            //                    // while (myops_i < myops.length) {
            //                    //     //generate random num between 0 and arraylength-1
            //                    //     random_length = Math.floor(Math.random() * myops.length)
            //                    //     //if element hasn't been marked as "selected"
            //                    //     if (myops[random_length] != "selected")
            //                    //     {
            //                    //        // document.write(myops[random_length] + " ");
            //                    //         txt += myops[random_length];
            //                    //         //mark element as selected
            //                    //         myops[random_length] = "selected"
            //                    //         i++
            //                    //     }
            //                    // }



            //                    //-------------------------------
            //                    var exp = "";
            //                    if ($.trim(data.d[i].ExplanationText.unquoted().replace(/\s+/g, " ")) != "") {
            //                        exp = '<a href="#/" class="btn btn-info" data-html="true" data-placement="bottom" data-toggle="tooltip" title="' + (data.d[i].ExplanationText.unquoted().replace(/\s+/g, " ").replace(/\n/g, " ")) + '">Explanation</a>';
            //                    }
            //                    else {
            //                        exp = '';
            //                    }
            //                    // shuffle(myops);
            //                    //  console.log(shuffle(myops))
            //                    myops.sort(function () { return 0.5 - Math.random() });
            //                    //txt += txt.toString();
            //                    for (var j = 0; j < myops.length; j++) {
            //                        txt += myops[j];
            //                    }

            //                    //   exp = '<a href="#" class="exptxt" data-toggle="tooltip" title="' + (data.d[i].ExplanationText) + '">How</a>';
            //                    txt += '</div><div class ="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"></div><div class="col-xs-10" ><input type="button" class="btn btn-default btn-sm btnReporttoggle" id="' + data.d[i].McqsQuestionId + '" name="My Name is nauman" value="Report"  /> ' + exp + ' <button class="btn  btn-social btn-facebook  sharemcq" id="999' + data.d[i].McqsQuestionId + '" name="999tr_question_' + Srno + '" style="display:none; background-color:#30487b; color:#fff; ">Post on Facebook</i></button><div id="btnReporttoggle_' + data.d[i].McqsQuestionId + '"></div><img style="width: 20%;" src="/acme-free/img/divider2.gif" />  </div></div>';

            //                    // txt += '<a href="#" class="exptxt" data-toggle="tooltip" title="' + (data.d[i].ExplanationText) + '">How</a>';
            //                    //  txt += '</div><div class ="row"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1"></div><div class="col-xs-10" ><img style="width: 20%;" src="/acme-free/img/divider2.gif" />  <input type="button" class="btn btn-default btn-sm btnReporttoggle" id="' + data.d[i].McqsQuestionId + '" name="My Name is nauman" value="Report"  /> <a href="#" class="btn btn-info" data-html="true" data-placement="right" data-toggle="tooltip" title="' + (data.d[i].ExplanationText) + '">How</a> <button class="btn  btn-social btn-facebook  sharemcq" id="999' + data.d[i].McqsQuestionId + '" name="999tr_question_' + Srno + '" style="display:none; background-color:#30487b; color:#fff; ">Post on Facebook</i></button><div id="btnReporttoggle_' + data.d[i].McqsQuestionId + '"></div></div></div>';

            //                    //  $(".exptxt").removeAttr("title");
            //                    // $(".exptxt").val('');
            //                    txt.length = 0;
            //                    data.d[i] = "selected";
            //                    count++;

            //                }
            //                //if (mcq == 50) {
            //                //    break;
            //                //}
            //                // $("#tblLoadMcqsAllQuestion").randomize('tr td');


            //            }

            //            if (txt != '') {
            //                $("#tbodytblLoadMcqsAllQuestion").empty();
            //                $("#tblLoadMcqsAllQuestion").append(txt);
            //                $("#tblLoadMcqsAllQuestion").show();
            //                $('#btntestthistest').show();
            //                $('#LoadMcqsAllQuestion').show();
            //                Scroll_top();
            //                // configuration
            //                Router.config({ mode: 'history' });

            //                // returning the user to the initial state
            //                Router.navigate();

            //                testname = testname.replace(/ /g, '-')
            //                testname = testname.trim();
            //                testname = encodeURIComponent(testname);

            //                subname = subname.replace(/ /g, '-')
            //                subname = subname.trim();
            //                subname = encodeURIComponent(subname);
            //                // forwarding
            //                Router.navigate('Practice/Online-MCAT-ECAT-NEET-UKAT-MEDICAL-Engineering-Free-Mcq-Mcqs-Test-Practise-download/' + subname + '/' + testname + '/TestId=' + CurrentTestid);

            //            }
            //        }
            //    }

               

            //    //$('#divShowMcqsQuestion').show(100);
            //    //  $('#LoadMcqsAllQuestion').show();

            //}
            var alltestQuestionsArray = new Array();
           
            function showTestdiv(TestId) {

               // debugger;
                hide_all();

                Score = 0;
                TotalScore = 0;
                CurrentTestid = TestId;
                var value_storage = $.jStorage.get(CurrentTestid.toString());
                value_storage = null;
               /// if (!value_storage || value_storage.d.length == 0) {
                    // alert(TestId)
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",

                        beforeSend: function () {
                            blockui();
                            $('#divloading').html('Please Wait while loading your requested contents...');
                        },

                        complete: function () {
                            $('#divloading').html('');
                        },
                        url: "../default.aspx/LoadMcqsQuestions",
                        data: "{'TestId':'" + TestId + "','name':'" + 2 + "'}",
                        dataType: "json",
                        timeout: (2 * 1000000),
                        success: function (data) {

                            setTimeout($.unblockUI, 1000);
                            var len = data.d.length;
                            var txt = "";
                            $("#totq").text(len);
                            $("#totr").html(len);
                            $("#totr_text").html('Remaining: ');
                            TotalScore = data.d.length;
                            alltestQuestionsArray = data.d;
                            console.log['alltestQuestionsArray = ' + alltestQuestionsArray];
                            //alert(alltestQuestionsArray);
                            var alltemquestions = '';
                            //for (var i in alltestQuestionsArray) {
                            //    for (var j in alltestQuestionsArray[i])
                            //    {

                            //       // alltemquestions += alltestQuestionsArray[i][j].userselected;
                            //    }


                            //}
                            // console.log(alltemquestions);
                            if (len > 0) {
                                value_storage = data;
                                $.jStorage.set(CurrentTestid.toString(), value_storage, 300000);
                                $('#tblLoadMcqsAllQuestion').find('div').empty();

                                var Srno = 1;
                                $("#ddlallquiz").html('');
                                //$("#selectId option").remove();
                                $("#ddlallquiz").append($("<option></option>").attr("value", 0).text('Question Status'));
                                for (var i = 0; i < len; i++) {

                                    $("#ddlallquiz").append($("<option></option>").attr("value", Srno).text(Srno));

                                    txt += '<div id="uniq_mcq_with_options' + data.d[i].McqsQuestionId + '"><div class="row" id="tr_question_' + Srno + '" ><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="question' + data.d[i].McqsQuestionId + '"><input type="text" style="display:none;" id="' + data.d[i].McqsQuestionId + 'q" name="' + data.d[i].McqsQuestionId + 'q" value=' + Srno + ' ><label>Q.' + parseInt(Srno++) + '</label></div><div class="col-xs-10 col-sm-10 col-md-10 col-lg-10" style="background-color: #FFFFFF !important;"><b><label style="color:black; font-size:12px;  margin-left: 3px;margin-top: -1px;">' + $.trim(data.d[i].QuestionText.unquoted().replace(/\s+/g, " ")) + '</label></b></div></div>'; //  <td>' + data.d[i].Points + '</td></tr>';

                                    if (data.d[i].op1 == true) {
                                        //<label class="pop" id="lbl_p_op1_' +data.d[i].McqsQuestionId + '" >
                                        if ($.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            txt += '<div class="row" id="M1' + data.d[i].McqsQuestionId + '"><div class=" col-xs-2 col-sm-1 col-md-1 col-lg-1" id="1correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="1" id ="1' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op1_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                        }

                                    }
                                    if (data.d[i].op2 == true) {
                                        if ($.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            txt += '<div class="row" id="M2' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="2correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="2" id ="2' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall" colspan="2"><label class="pop" id="lbl_p_op2_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                        }

                                    }


                                    if (data.d[i].op3 == true) {

                                        if ($.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            txt += '<div class="row" id="M3' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="3correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="3" id ="3' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op3_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                        }

                                    }


                                    if (data.d[i].op4 == true) {
                                        if ($.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            txt += '<div class="row" id="M4' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="4correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="4" id ="4' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op4_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                        }

                                    }


                                    if (data.d[i].op5 == true) {

                                        if ($.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            txt += '<div class="row"  id="M5' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="5correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="5" id ="5' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op5_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                        }


                                    }


                                    if (data.d[i].op6 == true) {

                                        if ($.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            txt += '<div class="row"  id="M6' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="6correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="6" id ="6' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op6_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                        }

                                    }


                                    if (data.d[i].op7 == true) {

                                        if ($.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            txt += '<div class="row"  id="M7' + data.d[i].McqsQuestionId + '" ><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="7correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="7" id ="7' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op7_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                        }
                                    }


                                    if (data.d[i].op8 == true) {

                                        if ($.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) != "") {
                                            txt += '<div class="row"  id="M8' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="8correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="8" id ="8' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op8_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                                        }
                                    }
                                    var correctop;
                                    if (data.d[i].Option1Correct == true) {
                                        correctop = 1;
                                    }
                                    else
                                        if (data.d[i].Option2Correct == true) {
                                            correctop = 2;
                                        }
                                        else
                                            if (data.d[i].Option3Correct == true) {
                                                correctop = 3;
                                            }
                                            else
                                                if (data.d[i].Option4Correct == true) {
                                                    correctop = 4;
                                                }
                                                else
                                                    if (data.d[i].Option5Correct == true) {
                                                        correctop = 5;
                                                    }
                                                    else
                                                        if (data.d[i].Option6Correct == true) {
                                                            correctop = 6;
                                                        }
                                                        else
                                                            if (data.d[i].Option7Correct == true) {
                                                                correctop = 7;
                                                            }
                                                            else
                                                                if (data.d[i].Option8Correct == true) {
                                                                    correctop = 8;
                                                                }

                                    txt += '<div class="row" <div class="col-sm-1"><label hidden="hidden" value="' + correctop + '" id="correctop' + data.d[i].McqsQuestionId + '"  name="' + data.d[i].McqsQuestionId + '" for="' + data.d[i].McqsQuestionId + '" >' + correctop + '</label></div></div>';
                                    txt += '<div class="row" ><div class="col-sm-1"></div><di class="col-xs-10 col-sm-10 col-md-10 col-lg-10"><img style="width: 20%;" src="/acme-free/img/divider2.gif" /><input type="button" class="btn btn-default btn-sm btnReporttoggle" id="' + data.d[i].McqsQuestionId + '" name="My Name is nauman" value="Report"  /> <div id="btnReporttoggle_' + data.d[i].McqsQuestionId + '"></div></div></div></div></div>';
                                    //txt += '</div><div class ="row"><div class="col-sm-1"></div><div class="col-xs-10 col-sm-10 col-md-10 col-lg-10" ><img style="width: 20%;" src="/acme-free/img/divider2.gif" />  <input type="button" class="btn btn-default btn-sm btnReporttoggle" id="' + data.d[i].McqsQuestionId + '" name="My Name is nauman" value="Report"  /> <button class="btn  btn-social btn-facebook  sharemcq" id="999' + data.d[i].McqsQuestionId + '" name="999tr_question_' + Srno + '" style="background-color:#30487b; color:#fff; ">Post on Facebook</i></button><div id="btnReporttoggle_' + data.d[i].McqsQuestionId + '"></div></div></div>';
                                }

                                if (txt != '') {
                                    $("#tblLoadMcqsAllQuestion").empty();
                                    // $("#tblLoadMcqsAllQuestion").remove();
                                    $("#tblLoadMcqsAllQuestion").append(txt);
                                    $("#tblLoadMcqsAllQuestion").show();
                                    $('#LoadMcqsAllQuestion').show();
                                    $('#btnPracticethistest').show();
                                    $('#btnShowResultdiv').show();
                                    $('#statusbar').show();
                                    Scroll_top();
                                    $("#mainheader").hide();
                                    $("#testheader").show();
                                    //$('html, body').animate({
                                    //    scrollTop: $('#LoadMcqsAllQuestion').offset().top
                                    //}, 2000);

                                }
                            }

                        },
                        error: function (Result) {
                            setTimeout($.unblockUI, 1000);
                            alertify.error("Error to load Mcqs! ");
                        }
                    });
               // }
                //else {
                //    var data = value_storage;
                //    setTimeout($.unblockUI, 1000);
                //    var len = data.d.length;
                //    var txt = "";
                //    $("#totq").text(len);
                //    $("#totr").html(len);
                //    $("#totr_text").html('Remaining: ');
                //    TotalScore = data.d.length;
                //    alltestQuestionsArray = data.d;
                //    console.log['alltestQuestionsArray = ' + alltestQuestionsArray];
                //    //alert(alltestQuestionsArray);
                //    var alltemquestions = '';
                   
                //    if (len > 0) {
                //        // value_storage = data;
                //        // $.jStorage.set(CurrentTestid.toString(), value_storage, 300000);
                //        $('#tblLoadMcqsAllQuestion').find('div').empty();

                //        var Srno = 1;
                //        $("#ddlallquiz").html('');
                //        //$("#selectId option").remove();
                //        $("#ddlallquiz").append($("<option></option>").attr("value", 0).text('Question Status'));
                //        for (var i = 0; i < len; i++) {

                //            $("#ddlallquiz").append($("<option></option>").attr("value", Srno).text(Srno));

                //            txt += '<div id="uniq_mcq_with_options' + data.d[i].McqsQuestionId + '"><div class="row" id="tr_question_' + Srno + '" ><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="question' + data.d[i].McqsQuestionId + '"><input type="text" style="display:none;" id="' + data.d[i].McqsQuestionId + 'q" name="' + data.d[i].McqsQuestionId + 'q" value=' + Srno + ' ><label>Q.' + parseInt(Srno++) + '</label></div><div class="col-xs-10 col-sm-10 col-md-10 col-lg-10" style="background-color: #FFFFFF !important;"><b><label style="color:black; font-size:12px;  margin-left: 3px;margin-top: -1px;">' + $.trim(data.d[i].QuestionText.unquoted().replace(/\s+/g, " ")) + '</label></b></div></div>'; //  <td>' + data.d[i].Points + '</td></tr>';

                //            if (data.d[i].op1 == true) {
                //                //<label class="pop" id="lbl_p_op1_' +data.d[i].McqsQuestionId + '" >
                //                if ($.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) != "") {
                //                    txt += '<div class="row" id="M1' + data.d[i].McqsQuestionId + '"><div class=" col-xs-2 col-sm-1 col-md-1 col-lg-1" id="1correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="1" id ="1' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op1_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option1Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                //                }

                //            }
                //            if (data.d[i].op2 == true) {
                //                if ($.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) != "") {
                //                    txt += '<div class="row" id="M2' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="2correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="2" id ="2' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall" colspan="2"><label class="pop" id="lbl_p_op2_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option2Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                //                }

                //            }


                //            if (data.d[i].op3 == true) {

                //                if ($.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) != "") {
                //                    txt += '<div class="row" id="M3' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="3correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="3" id ="3' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op3_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option3Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                //                }

                //            }


                //            if (data.d[i].op4 == true) {
                //                if ($.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) != "") {
                //                    txt += '<div class="row" id="M4' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="4correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="4" id ="4' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op4_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option4Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                //                }

                //            }


                //            if (data.d[i].op5 == true) {

                //                if ($.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) != "") {
                //                    txt += '<div class="row"  id="M5' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="5correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="5" id ="5' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op5_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option5Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                //                }


                //            }


                //            if (data.d[i].op6 == true) {

                //                if ($.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) != "") {
                //                    txt += '<div class="row"  id="M6' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="6correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="6" id ="6' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op6_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option6Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                //                }

                //            }


                //            if (data.d[i].op7 == true) {

                //                if ($.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) != "") {
                //                    txt += '<div class="row"  id="M7' + data.d[i].McqsQuestionId + '" ><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="7correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="7" id ="7' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall"><label class="pop" id="lbl_p_op7_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option7Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                //                }
                //            }


                //            if (data.d[i].op8 == true) {

                //                if ($.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) != "") {
                //                    txt += '<div class="row"  id="M8' + data.d[i].McqsQuestionId + '"><div class="col-xs-2 col-sm-1 col-md-1 col-lg-1" id="8correctcls' + data.d[i].McqsQuestionId + '"><input type="checkbox" class="largerCheckbox" value="8" id ="8' + data.d[i].McqsQuestionId + '" name="' + data.d[i].McqsQuestionId + '" /></div><div class="col-xs-10 clsloadmcqsall" ><label class="pop" id="lbl_p_op8_' + data.d[i].McqsQuestionId + '">' + $.trim(data.d[i].Option8Text.unquoted().replace(/\s+/g, " ")) + '</label></div></div>';
                //                }
                //            }
                //            var correctop;
                //            if (data.d[i].Option1Correct == true) {
                //                correctop = 1;
                //            }
                //            else
                //                if (data.d[i].Option2Correct == true) {
                //                    correctop = 2;
                //                }
                //                else
                //                    if (data.d[i].Option3Correct == true) {
                //                        correctop = 3;
                //                    }
                //                    else
                //                        if (data.d[i].Option4Correct == true) {
                //                            correctop = 4;
                //                        }
                //                        else
                //                            if (data.d[i].Option5Correct == true) {
                //                                correctop = 5;
                //                            }
                //                            else
                //                                if (data.d[i].Option6Correct == true) {
                //                                    correctop = 6;
                //                                }
                //                                else
                //                                    if (data.d[i].Option7Correct == true) {
                //                                        correctop = 7;
                //                                    }
                //                                    else
                //                                        if (data.d[i].Option8Correct == true) {
                //                                            correctop = 8;
                //                                        }

                //            txt += '<div class="row" <div class="col-sm-1"><label hidden="hidden" value="' + correctop + '" id="correctop' + data.d[i].McqsQuestionId + '"  name="' + data.d[i].McqsQuestionId + '" for="' + data.d[i].McqsQuestionId + '" >' + correctop + '</label></div></div>';
                //            txt += '<div class="row" ><div class="col-sm-1"></div><di class="col-xs-10 col-sm-10 col-md-10 col-lg-10"><img style="width: 20%;" src="/acme-free/img/divider2.gif" /><input type="button" class="btn btn-default btn-sm btnReporttoggle" id="' + data.d[i].McqsQuestionId + '" name="My Name is nauman" value="Report"  /> <div id="btnReporttoggle_' + data.d[i].McqsQuestionId + '"></div></div></div></div></div>';
                //            //txt += '</div><div class ="row"><div class="col-sm-1"></div><div class="col-xs-10 col-sm-10 col-md-10 col-lg-10" ><img style="width: 20%;" src="/acme-free/img/divider2.gif" />  <input type="button" class="btn btn-default btn-sm btnReporttoggle" id="' + data.d[i].McqsQuestionId + '" name="My Name is nauman" value="Report"  /> <button class="btn  btn-social btn-facebook  sharemcq" id="999' + data.d[i].McqsQuestionId + '" name="999tr_question_' + Srno + '" style="background-color:#30487b; color:#fff; ">Post on Facebook</i></button><div id="btnReporttoggle_' + data.d[i].McqsQuestionId + '"></div></div></div>';
                //        }

                //        if (txt != '') {
                //            $("#tblLoadMcqsAllQuestion").empty();
                //            // $("#tblLoadMcqsAllQuestion").remove();
                //            $("#tblLoadMcqsAllQuestion").append(txt);
                //            $("#tblLoadMcqsAllQuestion").show();
                //            $('#LoadMcqsAllQuestion').show();
                //            $('#btnPracticethistest').show();
                //            $('#btnShowResultdiv').show();
                //            $('#statusbar').show();
                //            Scroll_top();
                //            $("#mainheader").hide();
                //            $("#testheader").show();
                //            //$('html, body').animate({
                //            //    scrollTop: $('#LoadMcqsAllQuestion').offset().top
                //            //}, 2000);

                //        }
                //    }
                //}


            }
            var showhideReport = 0;
            $(document).on('click', '.btnReporttoggle', function (e) {

                //lbl_p_op1_
                debugger;
                var chkboxname = this.id;

                if (document.getElementById('rdbreport1_' + chkboxname)) {
                    //alert('yep');
                    $('#btnReporttoggle_' + chkboxname).append(string).toggle();
                } else {
                  

                    var string = " <div id='ReportMcq" + chkboxname + "' class='ReportMcq' > " +
                        "<div class='row' id='Report_all_options' > " +
                "<div class='col-md-12'> " +
                    "<input type='radio'  name='" + chkboxname + "' value='1' id='rdbreport1_" + chkboxname + "' class='radio ui-radio radio-inline' /><label for='rdbreport1_" + chkboxname + "'>The Answer is Incorrect.</label><br /> " +
                    "<input type='radio'  name='" + chkboxname + "' value='2' id='rdbreport2_" + chkboxname + "'/><label for='rdbreport2_" + chkboxname + "'>The Question is Incomplete.</label><br /> " +
                    "<input type='radio'  name='" + chkboxname + "' value='3' id='rdbreport3_" + chkboxname + "'/><label for='rdbreport3_" + chkboxname + "'>The Option is not clear.</label><br />" +
                    "<input type='radio'  name='" + chkboxname + "' value='4' id='rdbreport4_" + chkboxname + "'/><label for='rdbreport4_" + chkboxname + "'>I only doubt in it.</label><br />" +
            "</div>" +
            "</div>" +
            "<div class='row div_incorrect_answer'  id='div_incorrect_answer_rdbreport1_" + chkboxname + "' style='display:none;'>" +
            "      <div class='col-md-12'>" +
            "    <label>The Correct Option Should be</label><br />" +
            "    <select id='ddl_user_correct_" + chkboxname + "' class='ddl_user_correct'>" +
            "        <option value='1'>Blue Whale 1</option>" +
            "        <option value='2'>Blue Whale 2</option>" +
            "        <option value='3'>Blue Whale 3</option>" +
            "        <option value='4'>Blue Whale 4</option>" +
            "    </select><br />" +
            "<label>Want to inform you later ? Email address: </label><input type='text' id='user_corr_email' placeholder='Email' /><br />" +
            "    <button class='btn btn-info btn-lg btn_FinalReport' id='btn_FinalReport1' name='" + chkboxname + "'  >Send Report</button>" +
             "         </div>" +
            "</div>" +
            "                   <div class='row div_incorrect_Question' id='div_incorrect_Question_rdbreport2_" + chkboxname + "' style='display:none;'>" +
            "      <div class='col-md-12'>" +
            "    <label>The Correct Question Should be</label><br />" +
            "    <input type='text' id='txt_user_corr_q_" + chkboxname + "' placeholder='Type Correct Question ' /> <br />" +
            "<label>Want to inform you later ? Email address: </label><input type='text' id='user_corr_email' placeholder='Email' /><br />" +
            "    <button class='btn btn-info btn-lg btn_FinalReport' id='btn_FinalReport2' name='" + chkboxname + "'>Send Report</button>" +
            "          </div>" +
            "</div>" +
            "                  <div class='row div_notclear_option' id='div_notclear_option_rdbreport3_" + chkboxname + "' style='display:none;'>" +
            "      <div class='col-md-12'>" +
            "    <label>The Correct Option Should be</label><br />" +
            "    <select id='ddl_user_not_clear_option_" + chkboxname + "' class='ddl_user_correct'>" +
             "       <option value='1'>Blue Whale 1</option>" +
             "       <option value='2'>Blue Whale 2</option>" +
             "       <option value='3'>Blue Whale 3</option>" +
            "        <option value='4'>Blue Whale 4</option>" +
            "    </select><br />" +
            "          <input type='text' id='txt_user_not_clear_option_" + chkboxname + "' /> <br />" +
            "    <button class='btn btn-info btn-lg btn_FinalReport' id='btn_FinalReport3' name='" + chkboxname + "' >Send Report</button>" +
            "          </div>" +
            "</div>" +
            "<div class='row div_doubt_option' id='div_doubt_option_rdbreport4_" + chkboxname + "' style='display:none;'>" +
            "    <div class='col-md-12'>" +
            "        <label>Want to inform you later ? your mail address here</label><input type='text' id='user_corr_email' placeholder='Email' /><br />" +
            "        <input type='button' class='btn btn-info btn-lg btn_FinalReport' id='btn_FinalReport4' value='Send Report' name='" + chkboxname + "' />" +
            "    </div>" +
            "</div>" +
        "</div>";
                    //var value = $(this).$value;
                    //var favorite = [];
                    //  alert('name ' + chkboxname + ' and value ');

                    //if (showhideReport == 0) {
                    $('#btnReporttoggle_' + chkboxname).html(string);
                   
                }

            });
            //sharemcq
            $(document).on('click', '.sharemcq', function () {


                //alert(this.id);
                // $('')
                var McqsId = this.id;

                var questiontr = this.name;
                questiontr = questiontr.substr(3);
                var btnId = this.id;
                McqsId = McqsId.substr(3);
                //console.log(McqsId);
                //alert('uniq_mcq_with_options' + McqsId)
                //DrawPic('uniq_mcq_with_options' + McqsId);
                var divId = 'uniq_mcq_with_options' + McqsId;
                //alert(divId);
                //var Pic = document.getElementById("myCanvas").toDataURL("image/png");


                //  sendFile(Pic);
                //Pic = Pic.replace(/^data:image\/(png|jpg);base64,/, "")
                var testName_e = $("#lblTestNamed").text();
                var TotalQuestions = $("#totq").text();
                UploadPic(divId, testName_e, TotalQuestions, btnId);
                // alert(testName);

                return false;


                // Sending the image data to Server
                $.ajax({
                    type: 'POST',
                    url: 'default.aspx/UploadPic',
                    data: '{ "imageData" : "' + Pic + '" ,"TestName" : "' + testName_e + '"}',
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    success: function (msg) {
                        var pic_name = msg.d;
                       
                    }

                });
               
            });
            
            $(document).on('click', '#btn_FinalReport1', function () {

                //alert(this.name);
                // $('')
                oldurl = window.location.pathname;
                Router.navigate();


                var McqsId = this.name;
                var selected_radio = $('input[type="radio"]:checked').val();
                var selected_correct_option_text = ($('#ddl_user_correct_' + this.name + ' :selected').text());
                var selected_correct_option_value = ($('#ddl_user_correct_' + this.name + ' :selected').val());
                var User_Email = ($("#user_corr_email").val());
                var ReporterName = "";
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "default.aspx/InsertReport",
                    data: "{'ReporterName':'" + ReporterName + "','ReporterEmail':'" + User_Email + "','Report_McqsId':'" + McqsId +
                            "','Report_OptionText':'" + selected_correct_option_text + "','Report_Type':'" + selected_radio +
                            "'}",
                    timeout: (2 * 100000), dataType: "json",
                    success: function (data) {
                        Router.navigate(oldurl);
                        //alert(data.d)
                        if (data.d == "true") {
                            alertify.success('Reported Saved successfully');
                            $("#" + McqsId).css('color', 'red');
                            $("#" + McqsId).css('color', 'red');
                            $("#" + McqsId).val("Thank You to giving us Your Time. We will see it ASAP.!");
                            $("#" + McqsId).attr('disabled', 'true');
                            $('#btnReporttoggle_' + McqsId).hide();

                        }
                        else {
                            alertify.error('Not Rported Saved successfully. Please try again.');
                            Router.navigate(oldurl);
                        }

                        //hide_all();
                        //$('#divCommonSubTestNumb').show(1000);
                        //$('#divMcqsQuestion').show(1000);
                        //$('#btnSave').show();
                        //$('#divCommonSubTestNumb').show(1000);
                        //Scroll_top();


                    },
                    error: function (jqXHR, exception) {
                        var msg = '';
                        if (jqXHR.status === 0) {
                            msg = 'Not connect.\n Please Verify you Network.';
                        } else if (jqXHR.status == 404) {
                            msg = 'Requested page not found. [404]';
                        } else if (jqXHR.status == 500) {
                            msg = 'Internal Server . Please Retry again with different values.Error [500].';
                        } else if (exception === 'parsererror') {
                            msg = 'Requested JSON parse failed.';
                        } else if (exception === 'timeout') {
                            msg = 'Time out error.';
                        } else if (exception === 'abort') {
                            msg = 'Ajax request aborted.';
                        } else {
                            msg = 'Uncaught Error.\n' + jqXHR.responseText;
                        }
                        $('#lblQuestionComplete').html(msg);
                        alertify.error(msg);
                    },
                })
                // alert(User_Email);

                //$(this).hide();

                //alert('called ' + selected);
            });
            $(document).on('click', '#btn_FinalReport2', function () {

                //  alert(this.name);
                // $('')
                var McqsId = this.name;
                var selected_radio = $('input[type="radio"]:checked').val();
                var selected_correct_option_text = ($('#ddl_user_correct_' + this.name + ' :selected').text());
                var selected_correct_option_value = ($('#ddl_user_correct_' + this.name + ' :selected').val());

                $("#" + McqsId).css('color', 'red');
                $("#" + McqsId).css('color', 'red');
                $("#" + McqsId).val("Reported Successfully!");
                $("#" + McqsId).attr('disabled', 'true');
                $('#btnReporttoggle_' + McqsId).hide();
                //$(this).hide();

                //alert('called ' + selected);
            });
            $(document).on('click', '#btn_FinalReport3', function () {

                //alert(this.name);
                // $('')
                var McqsId = this.name;
                var selected_radio = $('input[type="radio"]:checked').val();
                var selected_correct_option_text = ($('#ddl_user_correct_' + this.name + ' :selected').text());
                var selected_correct_option_value = ($('#ddl_user_correct_' + this.name + ' :selected').val());

                $("#" + McqsId).css('color', 'red');
                $("#" + McqsId).css('color', 'red');
                $("#" + McqsId).val("Reported Successfully!");
                $("#" + McqsId).attr('disabled', 'true');
                $('#btnReporttoggle_' + McqsId).hide();
                //$(this).hide();

                //alert('called ' + selected);
            });
            $(document).on('click', '#btn_FinalReport4', function () {

                //alert(this.name);
                // $('')
                var McqsId = this.name;
                var selected_radio = $('input[type="radio"]:checked').val();
                var selected_correct_option_text = ($('#ddl_user_correct_' + this.name + ' :selected').text());
                var selected_correct_option_value = ($('#ddl_user_correct_' + this.name + ' :selected').val());

                $("#" + McqsId).css('color', 'red');
                $("#" + McqsId).css('color', 'red');
                $("#" + McqsId).val("Reported Successfully!");
                $("#" + McqsId).attr('disabled', 'true');
                $('#btnReporttoggle_' + McqsId).hide();
                //$(this).hide();

                //alert('called ' + selected);
            });
            $(document).on('change', '[type=radio]', function (e) {
                e.preventDefault();
                //  alert(this.id);
                var chkboxname = this.id;
                var name = this.name;
                debugger;
                var op1 = $("#lbl_p_op1_" + name).text();
                var op2 = $("#lbl_p_op2_" + name).text();
                var op3 = $("#lbl_p_op3_" + name).text();
                var op4 = $("#lbl_p_op4_" + name).text();
                var op5 = $("#lbl_p_op5_" + name).text();
                var op6 = $("#lbl_p_op6_" + name).text();
                var op7 = $("#lbl_p_op7_" + name).text();
                var op8 = $("#lbl_p_op8_" + name).text();
                // alert($("#lbl_p_op1_" + name).name());


                $('.ddl_user_correct').empty().append($("<option></option>")
                           .attr("value", 0)
                           .text('Select Option'));
                if (op1.length > 2) {
                    $('.ddl_user_correct').append($("<option></option>")
                           .attr("value", 1)
                           .text(op1));
                }

                if (op2.length > 2) {
                    $('.ddl_user_correct').append($("<option></option>")
                          .attr("value", 2)
                          .text(op2));
                }

                if (op3.length > 2) {
                    $('.ddl_user_correct').append($("<option></option>")
       .attr("value", 3)
       .text(op3));
                }

                if (op4.length > 2) {
                    $('.ddl_user_correct').append($("<option></option>")
       .attr("value", 4)
       .text(op4));
                }

                if (op5.length > 2) {
                    $('.ddl_user_correct').append($("<option></option>")
       .attr("value", 5)
       .text(op5));
                }

                if (op6.length > 2) {
                    $('.ddl_user_correct').append($("<option></option>")
       .attr("value", 6)
       .text(op6));
                }

                if (op7.length > 2) {
                    $('.ddl_user_correct').append($("<option></option>")
       .attr("value", 7)
       .text(op7));
                }

                if (op8.length > 2) {
                    $('.ddl_user_correct').append($("<option></option>")
      .attr("value", 8)
      .text(op8));
                }
                //_"+chkboxname+"'
                if (this.value == '1') {
                    //  alert(this.id);         .div_doubt_option{}
                    //.div_incorrect_answer{}
                    //.div_notclear_option {}
                    //.div_incorrect_Question{}
                    //  debugger;
                    //$('.div_notclear_option').show();
                    //$('#mySelect')
                    //id = "lbl_p_op1_' + data.d[i].McqsQuestionId + '"


                    $('#div_incorrect_answer_' + chkboxname).show();
                    $('.div_incorrect_Question').hide();
                    $('.div_notclear_option').hide();
                    $('.div_doubt_option').hide();
                    // alert('Allot Thai Gayo Bhai_'+chkboxname);
                }
                else if (this.value == '2') {
                    //  alert(this.id);
                    //debugger;
                    // $('#div_incorrect_Question_'+chkboxname).show();
                    //$('.div_notclear_option').hide();
                    $('.div_incorrect_answer').hide();
                    //$('#div_incorrect_Question_' + chkboxname).show();
                    $('#div_incorrect_Question_' + chkboxname).show();
                    $('.div_notclear_option').hide();
                    $('.div_doubt_option').hide();
                    // alert('Transfer Thai Gayo_'+chkboxname);
                }
                else if (this.value == '3') {
                    //  alert(this.id);
                    //  debugger;
                    $('#div_notclear_option_' + chkboxname).show();
                    $('.div_incorrect_answer').hide();
                    //$('#div_incorrect_Question_' + chkboxname).show();
                    $('.div_incorrect_Question').hide();

                    $('.div_doubt_option').hide();
                    // alert('Transfer Thai Gayo_'+chkboxname);
                }
                else if (this.value == '4') {
                    //  alert(this.id);
                    //  debugger;
                    //$('#div_doubt_option_'+chkboxname).show();
                    $('.div_incorrect_answer').hide();
                    //$('#div_incorrect_Question_' + chkboxname).show();
                    $('.div_incorrect_Question').hide();
                    $('.div_notclear_option').hide();
                    $('#div_doubt_option_' + chkboxname).show();
                    //  alert('Transfer Thai Gayo');
                }
            });

            $('#btnShowResultdiv').click(function () {
                if (confirm("Are you sure you want to finish the test?")) {

                    hide_all();
                    $('#bgimg').show();
                    $("#mainheader").hide();
                    $("#testheader").show();
                    $('html, body').animate({
                        scrollTop: $('#bgimg').offset().top
                    }, 20);
                }
                return false;


            })
            var Score = 0;

            $('#btnTestagain').click(function () {

                if (CurrentTestid != undefined || CurrentTestid != 0) {
                    // Scroll_top();
                    showTestdiv(CurrentTestid);
                    $("#mainheader").hide();
                    $("#testheader").show();
                    // hide_all();
                    // $('#btnShowResultdiv').show(1000);
                    //  $('#LoadMcqsAllQuestion').show(1000);

                }
                else {
                    alert('Please Refresh the Page');
                }
            })
            $('#btnpractiseagain').click(function () {
                if (CurrentTestid != undefined || CurrentTestid != 0) {
                    //Scroll_top();
                    showPractice(CurrentTestid);
                    $("#mainheader").hide();
                    $("#testheader").show();
                    // hide_all();
                    // $('#LoadMcqsAllQuestion').show(1000);
                }
                else {
                    alert('Please Refresh the Page');
                }
            })
            
            $('#btnDownloadResultCard').click(function () {
                if (CurrentTestid != undefined || CurrentTestid != 0) {
                    debugger;
                    console.log('my array = ' + alltestQuestionsArray);
                    Router.navigate();
                    var data = new Array();
                    for (i = 0; i < alltestQuestionsArray.length; i++)
                    {
                        data[i] = alltestQuestionsArray[i];
                    }
                   // alert(data[0]);
                  //  alert(JSON.stringify(alltestQuestionsArray));
                   // data[0] = alltestQuestionsArray[0];
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "default.aspx/downloadResultCard",
                        data: "{'data':" + JSON.stringify(alltestQuestionsArray) + "}",
                        timeout: (2 * 100000), dataType: "json",
                        success: function (data) {
                            window.location = "SecurePages/ResultCard.aspx";
                            Router.navigate(oldurl);
                            //alert(data.d)
                            if (data.d == "true") {
                                alertify.success('Reported Saved successfully');
                                $("#" + McqsId).css('color', 'red');
                                $("#" + McqsId).css('color', 'red');
                                $("#" + McqsId).val("Thank You to giving us Your Time. We will see it ASAP.!");
                                $("#" + McqsId).attr('disabled', 'true');
                                $('#btnReporttoggle_' + McqsId).hide();

                            }
                            else {
                                alertify.error('Not Rported Saved successfully. Please try again.');
                                Router.navigate(oldurl);
                            }

                            //hide_all();
                            //$('#divCommonSubTestNumb').show(1000);
                            //$('#divMcqsQuestion').show(1000);
                            //$('#btnSave').show();
                            //$('#divCommonSubTestNumb').show(1000);
                            //Scroll_top();


                        },
                        error: function (jqXHR, exception) {
                            var msg = '';
                            if (jqXHR.status === 0) {
                                msg = 'Not connect.\n Please Verify you Network.';
                            } else if (jqXHR.status == 404) {
                                msg = 'Requested page not found. [404]';
                            } else if (jqXHR.status == 500) {
                                msg = 'Internal Server . Please Retry again with different values.Error [500].';
                            } else if (exception === 'parsererror') {
                                msg = 'Requested JSON parse failed.';
                            } else if (exception === 'timeout') {
                                msg = 'Time out error.';
                            } else if (exception === 'abort') {
                                msg = 'Ajax request aborted.';
                            } else {
                                msg = 'Uncaught Error.\n' + jqXHR.responseText;
                            }
                            $('#lblQuestionComplete').html(msg);
                            alertify.error(msg);
                        },
                    })
                                  

                    //Scroll_top();
                   // showPractice(CurrentTestid);
                   // $("#mainheader").hide();
                  //  $("#testheader").show();
                    // hide_all();
                    // $('#LoadMcqsAllQuestion').show(1000);
                }
                else {
                    alert('Please Refresh the Page');
                }
            })
            var TotalUserAttemptedQuestions_Array = new Array();
            $(document).on('change', '[type=checkbox]', function (e) {
                
                var $chkboxname = this.name;
                var $value = $(this).val();
                var favorite = [];


                // console.log('checkboxname' + $chkboxname + ' value ' + $value);
                $.each($("input[type=checkbox]:checked"), function () {
                    if (this.name == $chkboxname) {
                        favorite.push($(this).val());
                    }

                });
                // debugger;
                var trid = ($value + "correctcls" + this.name); //"M"+$value+this.id//$(this).parent().closest('div').attr('id'); //("correctcls" + this.id); //$(this).closest('div').attr('id');

                var iname = $chkboxname + "q";
                // var labelid = document.getElementById(iname);// $("input[for='" + $("#" + iname).attr('id') + "']");//$("#" + $chkboxname+'q').val();;
                var $texts = $("#" + iname).val();

                // $("#ddlallquiz").val($texts).addClass("ddlattempted");
                //$('#ddlallquiz option').each(function () {
                //   // var theText = $(this).html();
                //    $(this).addClass($texts);
                //});
                //  $("#ddlallquiz").find("option[4]").addClass("ddlattempted");
                $('option[value="' + $texts + '"]').addClass('ddlattempted');
                // $("#ddlallquiz").val('3').addClass('ddlattempted');
                // $("#ddlallquiz option[value=$texts]").addClass("ddlattempted");
                //$('#ddlallquiz :option["' + $texts +'"]').addClass("ddlattempted");

                //   $("#" + $chkboxname + "q").find("label").attr("id", "value");
                //var labelss = $("#50203q").val();
               //  debugger;
                var response = ("#correctop" + $chkboxname);
                var correctOption = $(response).text();
                if (favorite == $(response).text()) {
                    var ob;
                    for (i = 0; i < alltestQuestionsArray.length; i++)
                    {
                        if (this.name == alltestQuestionsArray[i].McqsQuestionId)
                        {
                            ob = i;
                            break;
                        }
                        //if(ob != -1)
                        //{
                        //    break;
                        //}

                    }
                    alltestQuestionsArray[ob].userselectedoption = $value;
                    alltestQuestionsArray[ob].Isusercorrect = 1; //IsuserAttempt
                    alltestQuestionsArray[ob].IsuserAttempt = 1; //IsuserAttempt
                    // var ob = jQuery.inArray(this.name,alltestQuestionsArray[0]);

                   // var string = [0,ob, 'userselected', $(response).text(), 'isusercorrect', 1];
                   // alltestQuestionsArray[ob].push(string);
                   // alltestQuestionsArray[0][ob]['isusercorrect'] = 1;
                    //for (i = 0; i < alltestQuestionsArray[0].length; i++)
                    //{
                    //    console.log('alltestQuestionsArray[0]  = ' + alltestQuestionsArray[0][i]);
                    //}
                    $("#" + trid).addClass('correctcls');
                    for (i = 1; i < 9; i++) {
                        $("#" + i + (this.name)).attr("disabled", "disabled");
                    }
                    Score++;


                }
                else {
                    var ob;
                    for (i = 0; i < alltestQuestionsArray.length; i++) {
                        if (this.name == alltestQuestionsArray[i].McqsQuestionId) {
                            ob = i;
                            break;
                        }

                    }
                    alltestQuestionsArray[ob].userselectedoption = $value;
                    alltestQuestionsArray[ob].Isusercorrect = 0;
                    alltestQuestionsArray[ob].IsuserAttempt = 1;
                    // var ob = jQuery.inArray(this.name, alltestQuestionsArray[0]);
                    //var string = [0,ob, 'userselected', $(response).text(), 'isusercorrect', 0];
                    //alltestQuestionsArray[ob].push(string);
                    //for (i = 0; i < alltestQuestionsArray[0].length; i++) {
                    //    console.log('alltestQuestionsArray[0]  = ' + alltestQuestionsArray[0][i]);
                    //}
                    $("#" + trid).addClass('inCorrectSelected');
                    $("#" + correctOption + "correctcls" + this.name).addClass('inCorrectcls');
                    //($response).addClass('inCorrectcls');
                    for (i = 1; i < 9; i++) {
                        $("#" + i + (this.name)).attr("disabled", "disabled");
                    }
                }
                var remainingq = parseInt($("#totr").text());
                // alert(remainingq);
                $("#totr").html(remainingq - 1);
            });
            $('.myresult_old').click(function () {

                var percentage = 0;
                var status = '';
                var grade = '';
                var comments = "";
                if (Score == 0 || TotalScore == 0) {
                    percentage = 0;
                    status = "Please Practice before attempting to this test.  ";

                }
                else {
                    percentage = (Score / TotalScore) * 100
                    if (percentage > 90) {
                        status = "Congratulations You PASSED this Test Successfully. ";
                        grade = 'A+';
                        comments = "Outstanding of Marks--Exceptional";


                    }
                    else
                        if (percentage > 80) {
                            status = "Congratulations You PASSED this Test Successfully. ";
                            grade = 'A';
                            comments = "Excellent.";


                        }
                        else
                            if (percentage > 70) {
                                status = "Congratulations You PASSED this Test Successfully. ";
                                grade = 'B';
                                comments = "Very Good.";


                            }
                            else
                                if (percentage > 60) {
                                    status = "Congratulations You PASSED this Test Successfully. ";
                                    grade = 'C';
                                    comments = "Good";


                                }
                                else
                                    if (percentage > 50) {
                                        status = "Congratulations You PASSED this Test Successfully. ";
                                        grade = 'D';
                                        comments = "Fair";


                                    }
                                    else
                                        if (percentage > 40) {
                                            status = "Congratulations You PASSED this Test Successfully. ";
                                            grade = 'E';
                                            comments = "Satisfactory";

                                        }

                                        else
                                            if (percentage < 40) {
                                                status = "Better Luck Next Time ";
                                                grade = 'F';
                                                comments = "Poor";


                                            }
                }
                var candName = "Your overall progress is";//$('#candidatName').text();
                //if (candName.length < 2)
                //{
                //    candName = "Candidate";
                //}+
                if (percentage > 40) {
                    $('#lblresultmsg').css({ 'color': 'green' });
                }
                else {
                    $('#lblresultmsg').css({ 'color': 'red' });
                }
                $('#lbloboutoffull').text(Score + '/' + TotalScore)
                $('#lblpercent').text(percentage.toFixed(0) + '%');
                $('#lblresultmsg').text(status);
                $('#lblgrade').text(grade);
                $('#lblcomment').text(comments);
                $('#lblcand').text(candName);





            })
            $('.myresult').click(function () {

                var percentage = 0;
                var status = '';
                var grade = '';
                var comments = "";
                if (Score == 0 || TotalScore == 0) {
                    percentage = 0;
                    status = "Please Practice before attempting to this test.  ";
                    //$("#congrats").show();
                }
                else {
                    percentage = (Score / TotalScore) * 100
                    if (percentage > 90) {
                        status = "Congratulations You PASSED this Test Successfully. ";
                        grade = 'A+';
                        comments = "Outstanding of Marks";

                    }
                    else
                        if (percentage > 80) {
                            status = "Congratulations You PASSED this Test Successfully. ";
                            grade = 'A';
                            comments = "Excellent.";

                        }
                        else
                            if (percentage > 70) {
                                status = "Congratulations You PASSED this Test Successfully. ";
                                grade = 'B';
                                comments = "Very Good.";


                            }
                            else
                                if (percentage > 60) {
                                    status = "Congratulations You PASSED this Test Successfully. ";
                                    grade = 'C';
                                    comments = "Good";



                                }
                                else
                                    if (percentage > 50) {
                                        status = "Congratulations You PASSED this Test Successfully. ";
                                        grade = 'D';
                                        comments = "Fair";
                                        $("#congrats").show();

                                    }
                                    else
                                        if (percentage > 40) {
                                            status = "Congratulations You PASSED this Test Successfully. ";
                                            grade = 'E';
                                            comments = "Satisfactory";

                                        }

                                        else
                                            if (percentage < 40) {
                                                status = "Better Luck Next Time ";
                                                grade = 'F';
                                                comments = "Poor";


                                            }
                    if (percentage > 50) {
                        $("#congrats").show();

                    }
                    else {
                        $("#congrats").hide();

                    }

                }

                var candName = "Your overall progress is";//$('#candidatName').text();
                //if (candName.length < 2)
                //{
                //    candName = "Candidate";
                //}+
                if (percentage > 40) {
                    $('#lblresultmsg').css({ 'color': 'green' });
                }
                else {
                    $('#lblresultmsg').css({ 'color': 'red' });
                }
                $('#lbloboutoffull').text(Score + '/' + TotalScore)
                $('#lblpercent').text(percentage.toFixed(0) + '%');
                $('#lblresultmsg').text(status);
                $('#lblgrade').text(grade);
                $('#lblcomment').text(comments);
                $('#lblcand').text(candName);
            })


            var toggletest = 0;
            $('.divUserPractice').click(function () {
                hide_all();
                if (toggletest == 0) {
                    $('#UsersTestArea').show(1000);
                    Scroll_top();
                    toggletest = 1;
                }
                else {
                    $('#UsersTestArea').hide();
                    $('#UsersTestArea').show(1000);
                    Scroll_top();
                    toggletest = 1;
                }





            })

            $('#tooltip1').tooltip();
            $('#tooltip2').tooltip();
            $('#tooltip3').tooltip();
            $('#tooltip4').tooltip();
            $('#tooltip5').tooltip();
            $('body').tooltip({
                selector: '[data-toggle=tooltip]'
            });
        });
        function Scroll_top() {
            $("html, body").animate({ scrollTop: -50 }, 'slow');

        }
        function sendFile(file) {

            var formData = new FormData();
            formData.append('file', $('#f_UploadImage')[0].files[0]);
            $.ajax({
                type: 'post',
                url: 'fileUploader.ashx',
                data: formData,
                success: function (status) {
                    if (status != 'error') {
                        var my_path = "MediaUploader/" + status;
                        $("#myUploadedImg").attr("src", my_path);
                    }
                },
                processData: false,
                contentType: false,
                error: function () {
                    alert("Whoops something went wrong!");
                }
            });
        }
    </script>

    <style>
        p:first-letter {
            text-transform: capitalize;
        }

        .Practice {
        }

        .AddUserMcqs {
        }

        .checkimg {
            width: 23px;
            /*margin-left: 14px;
            width: 32px;*/
        }

        .optionimg {
            width: 23px;
            /*width: 28px;
            margin-left: 14px;*/
        }

        .questionimg {
            width: 23px;
            /*width: 36px;
            margin-left: 8px;*/
        }

        .listimg {
            width: 18px;
            /*width: 20px;
            margin-left: 14px;*/
        }

        .pop {
            /*margin-top: 14px;*/
            font-weight: normal;
            font-size: 12px;
            text-align: left;
            margin-left: 7px;
            text-transform: capitalize;
        }

        .optiontext {
            /*font-size: 19px;*/
            text-align: left;
            margin-left: 7px;
            text-transform: capitalize;
        }

        .exptxt {
            color: white;
            font-size: 10px;
            margin-left: 5%;
            cursor: pointer;
        }

        input.largerCheckbox {
            width: 40px;
            height: 40px;
            margin-left: 7px;
        }

        .correctcls {
            background-color: yellowgreen;
        }

        .inCorrectcls {
            background-color: #F7E424;
        }

        .inCorrectSelected {
            background-color: #EA082A;
        }
    </style>

    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-80235577-1', 'auto');
        ga('send', 'pageview');

    </script>

 </div>

</body>
</html>

