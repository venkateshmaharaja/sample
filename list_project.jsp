











<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <title>Ocean ERP</title>
        <LINK REL="SHORTCUT ICON" HREF="images/name.ico" />
        <link href="/ocean/commercial/css/pendingprf.css" rel="stylesheet" type="text/css" media="all" />
        <link href="../demo/defaultTheme.css" rel="stylesheet" media="screen" />
        <link href="../demo/myTheme.css" rel="stylesheet" media="screen" />
        <script src="../demo/min.js"></script>
        <script src="../demo/jquery.fixedheadertable.js"></script> 
        <script src="../demo/test.js"></script>     
<!--        <script type="text/javascript">
            window.history.forward(1);
            function noBack()
            {
                window.history.forward();
            }
        </script>-->
        <script>
            //         <<<<<<<<<<<<<<    Validation Script              >>>>>>>>>>>
            function validateForm(id)
            {
                // alert(id);
//                var x = document.getElementById("m_date").value;
//                 if ( x == null || x == ""){
//                     alert("Enter Move Purchase Date !");
//                     document.getElementById("m_date").focus();
//                     return false;
//                 }
//                var x = document.getElementById("po_no").value;
//                 if ( x == null || x == ""){
//                     alert("Enter PO Number ! ");
//                     document.getElementById("po_no").focus();
//                     return false;
//                 }
            }
        </script>
        <style>
            .fancyTable{
                width: 1300px;
            }
            a{
                text-decoration: none;
            }

            .fancyTable,input {      
                border: none;
                background-color: #eef2f9;
            }

        </style>



        

        <script>
            function Test(row) {
                var x = document.getElementById("prf_no" + row).value;

                document.getElementById('ttt').action = "insert_po.jsp?prfno=" + x;
            }
        </script>
    </head>
    <body>            
        <div id="main">
            <div id="header">








<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html >
    <head><LINK REL="SHORTCUT ICON" HREF="../images/name.png" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Ocean ERP</title>                        
        <link href="/ocean/commercial/css/header.css" rel="stylesheet" type="text/css" media="all" />           
    </head>
    <body>
        <div id="mains">
            
            <div id="header_top" >      
                <!--<img src="/ocean/images/mro1.PNG"/>-->            
                <!--<img src="/ocean/images/favicon.jpg" align="left" height="65"  style="margin-left: 20px;margin-top: 14px;"/>-->           
                <img src="/ocean/images/thumbnail.png" align="left" height="70" width="1000" style="margin-left: 20px;margin-top: 14px;"/>           
                <!--<img src="/ocean/images/logo_1.jpg" align="left" height="65" style="margin-left: -10px;margin-top: 12px;"/>-->           
                <!--<img src="/ocean/images/ava.jpg" align="right" style="margin-right: 14px;margin-top: 10px;"/>-->           

            </div> 
            <div id="header_bottom">

                <div id="menu" class="container">

                    <ul>        
                        <ul class="menuH decor1">
                            <li><a href="logout.jsp">Logout</a></li>    
                            <li><a href="/ocean/commercial/home.jsp" >Home</a></li> 
                           
                            <li><a href="#" >Project Details</a>
                                <ul>

                                        <li><a href="#" accesskey="3" title="">Project</a>
                                        <ul>
                                            <li><a href="/ocean/commercial/create_client.jsp" accesskey="3" title="">Add Client</a></li>                                    
                                            <li><a href="/ocean/commercial/create_project.jsp" accesskey="3" title="">Create</a></li>  
                                            <li><a href="/ocean/commercial/ammend_files.jsp" accesskey="3" title="">Attach Files</a></li>  
                                            <li><a href="/ocean/commercial/list_project.jsp" accesskey="3" title="">View Project</a></li>  
                                            <li><a href="/ocean/commercial/map_boq_select.jsp" accesskey="3" title="">BOQ Mapping</a></li>  
                                                
                                        </ul>
                                    </li>
                                </ul></li>                
                            <font style="color:#f4f4f6; margin-left: 140px;font-size: 14px;">Welcome</font>&nbsp;&nbsp;<font style="color:#f4f4f6;font-size: 14px;">Ocean</font>
                        </ul>                
                    </ul> 
                           

                </div> 

            </div>
            
        </div>
    </body>
</html>
</div>
            <center><font style="font-size: 16px;font-weight: bolder;text-decoration: underline;color: #006666;">Projects List</font></center>
                      
            <br>
            <div id="content">
                <div class="container_12">    		
                    <div class="grid_8 height250">
                        <!--<form action="#" method="post" name="pendingprf">-->
                        <!--<form action="#" method="post" name="pendingprf">-->
                        <table class="fancyTable" id="tBody" cellpadding="0" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>S No</th>
                                    <th width="2%">Project ID</th>                                        
                                    <th>Client Name</th>
                                    <th>Project Name</th>
                                    <th>Region</th>
                                    <th>Director</th>
                                    <th>LOI number</th>
                                    <th>Po Number</th>                                       
                                    <th>PO Date</th>
                                    <th>Project Value</th>
                                    <th>Creator Name</th>
                                    <th>Status</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>  			           			       
                                   
                            <form action="../insert_ponumber" method="post" onsubmit="return validateForm()" > 
                                <!--<form action="#" method="post" onsubmit="//return validateForm()">--> 
                                <tr>     
                                <input type="hidden" name="rowCount" value="1">
                                <td>1</td>
                                <td width="2%"><a href="view_project.jsp?project_id=PRO-GOVO-2020-009"><input type="text" name="prf_no1" id="prf_no1" value="PRO-GOVO-2020-009" readonly style="color: CRIMSON;font-weight: bold;" ></a></td>
                                <td>Mr. Ankur Sharma</td>
                                <td></td>                                          
                                <td>Telangana</td>
                                <td>Nanda Krishnan</td>                                            
                                <td>-</td>                                            
                                <td>1586946405619</td>                                            
                                <td width="4%">        
                                    
                                    <a href="#"><input type="text" value="2020-04-15" size="15" name="m_date" id="m_date1" class="txtdate" readonly style="width: 100px;"></a>

                                </td>                                            
                                <td>95455941</td>                                            
                                <td>sandhiya</td>                                            
                                <td>Pending</td>                                                                           
                                </tr>
                            </form>
                               
                            <form action="../insert_ponumber" method="post" onsubmit="return validateForm()" > 
                                <!--<form action="#" method="post" onsubmit="//return validateForm()">--> 
                                <tr>     
                                <input type="hidden" name="rowCount" value="2">
                                <td>2</td>
                                <td width="2%"><a href="view_project.jsp?project_id=PRO-g1-2020-013"><input type="text" name="prf_no2" id="prf_no2" value="PRO-g1-2020-013" readonly style="color: CRIMSON;font-weight: bold;" ></a></td>
                                <td>Mr. Ankur Sharmaa</td>
                                <td>NA</td>                                          
                                <td>TamilNadu</td>
                                <td>Nanda Krishnan</td>                                            
                                <td>-</td>                                            
                                <td>1586946405619A</td>                                            
                                <td width="4%">        
                                    
                                    <a href="#"><input type="text" value="2020-04-15" size="15" name="m_date" id="m_date2" class="txtdate" readonly style="width: 100px;"></a>

                                </td>                                            
                                <td>95455941</td>                                            
                                <td>sandhiya</td>                                            
                                <td>Pending</td>                                                                           
                                </tr>
                            </form>
                               
                            <form action="../insert_ponumber" method="post" onsubmit="return validateForm()" > 
                                <!--<form action="#" method="post" onsubmit="//return validateForm()">--> 
                                <tr>     
                                <input type="hidden" name="rowCount" value="3">
                                <td>3</td>
                                <td width="2%"><a href="view_project.jsp?project_id=PRO-0011-2020-012"><input type="text" name="prf_no3" id="prf_no3" value="PRO-0011-2020-012" readonly style="color: CRIMSON;font-weight: bold;" ></a></td>
                                <td>Murali Krishan</td>
                                <td></td>                                          
                                <td>TamilNadu</td>
                                <td>Nanda Krishnan</td>                                            
                                <td>KEIPL/2019/Test tower/L1</td>                                            
                                <td>EIPL/2019/Test tower/L1</td>                                            
                                <td width="4%">        
                                    
                                    <a href="#"><input type="text" value="2019-10-04" size="15" name="m_date" id="m_date3" class="txtdate" readonly style="width: 100px;"></a>

                                </td>                                            
                                <td>637200000</td>                                            
                                <td>commercial</td>                                            
                                <td>Pending</td>                                                                           
                                </tr>
                            </form>
                               
                            <form action="../insert_ponumber" method="post" onsubmit="return validateForm()" > 
                                <!--<form action="#" method="post" onsubmit="//return validateForm()">--> 
                                <tr>     
                                <input type="hidden" name="rowCount" value="4">
                                <td>4</td>
                                <td width="2%"><a href="view_project.jsp?project_id=PRO-TEK-2020-014"><input type="text" name="prf_no4" id="prf_no4" value="PRO-TEK-2020-014" readonly style="color: CRIMSON;font-weight: bold;" ></a></td>
                                <td>Mr. Sunil Ghanathe</td>
                                <td></td>                                          
                                <td>Telangana</td>
                                <td>Nanda Krishnan</td>                                            
                                <td>-</td>                                            
                                <td>IDC-00304/2019-20</td>                                            
                                <td width="4%">        
                                    
                                    <a href="#"><input type="text" value="2020-02-17" size="15" name="m_date" id="m_date4" class="txtdate" readonly style="width: 100px;"></a>

                                </td>                                            
                                <td>54540300</td>                                            
                                <td>sandhiya</td>                                            
                                <td>Pending</td>                                                                           
                                </tr>
                            </form>
                               
                            <form action="../insert_ponumber" method="post" onsubmit="return validateForm()" > 
                                <!--<form action="#" method="post" onsubmit="//return validateForm()">--> 
                                <tr>     
                                <input type="hidden" name="rowCount" value="5">
                                <td>5</td>
                                <td width="2%"><a href="view_project.jsp?project_id=PRO-KPMG-2020-010"><input type="text" name="prf_no5" id="prf_no5" value="PRO-KPMG-2020-010" readonly style="color: CRIMSON;font-weight: bold;" ></a></td>
                                <td>Natasha Jain</td>
                                <td></td>                                          
                                <td>TamilNadu</td>
                                <td>Nanda Krishnan</td>                                            
                                <td>-</td>                                            
                                <td>KGSPL/BLR/GTP-1D/19-20/02</td>                                            
                                <td width="4%">        
                                    
                                    <a href="#"><input type="text" value="2019-11-21" size="15" name="m_date" id="m_date5" class="txtdate" readonly style="width: 100px;"></a>

                                </td>                                            
                                <td>22914695</td>                                            
                                <td></td>                                            
                                <td>Pending</td>                                                                           
                                </tr>
                            </form>
                               
                            <form action="../insert_ponumber" method="post" onsubmit="return validateForm()" > 
                                <!--<form action="#" method="post" onsubmit="//return validateForm()">--> 
                                <tr>     
                                <input type="hidden" name="rowCount" value="6">
                                <td>6</td>
                                <td width="2%"><a href="view_project.jsp?project_id=PRO-KPMG-2020-006"><input type="text" name="prf_no6" id="prf_no6" value="PRO-KPMG-2020-006" readonly style="color: CRIMSON;font-weight: bold;" ></a></td>
                                <td>Natasha Jain</td>
                                <td></td>                                          
                                <td>Andhra</td>
                                <td>Nanda Krishnan</td>                                            
                                <td>-</td>                                            
                                <td>KGSPL/BLR/GTP-1D/19-20/02AAA</td>                                            
                                <td width="4%">        
                                    
                                    <a href="#"><input type="text" value="2019-11-21" size="15" name="m_date" id="m_date6" class="txtdate" readonly style="width: 100px;"></a>

                                </td>                                            
                                <td>22914695</td>                                            
                                <td>sandhiya</td>                                            
                                <td>Pending</td>                                                                           
                                </tr>
                            </form>
                               
                            <form action="../insert_ponumber" method="post" onsubmit="return validateForm()" > 
                                <!--<form action="#" method="post" onsubmit="//return validateForm()">--> 
                                <tr>     
                                <input type="hidden" name="rowCount" value="7">
                                <td>7</td>
                                <td width="2%"><a href="view_project.jsp?project_id=PRO-KPMG-2020-007"><input type="text" name="prf_no7" id="prf_no7" value="PRO-KPMG-2020-007" readonly style="color: CRIMSON;font-weight: bold;" ></a></td>
                                <td>Natasha Jain</td>
                                <td></td>                                          
                                <td>Telangana</td>
                                <td>Nanda Krishnan</td>                                            
                                <td>-</td>                                            
                                <td>KGSPL/BLR/GTP-1D/19-20/02B</td>                                            
                                <td width="4%">        
                                    
                                    <a href="#"><input type="text" value="2019-11-21" size="15" name="m_date" id="m_date7" class="txtdate" readonly style="width: 100px;"></a>

                                </td>                                            
                                <td>22914695</td>                                            
                                <td>sandhiya</td>                                            
                                <td>Pending</td>                                                                           
                                </tr>
                            </form>
                               
                            <form action="../insert_ponumber" method="post" onsubmit="return validateForm()" > 
                                <!--<form action="#" method="post" onsubmit="//return validateForm()">--> 
                                <tr>     
                                <input type="hidden" name="rowCount" value="8">
                                <td>8</td>
                                <td width="2%"><a href="view_project.jsp?project_id=PRO-KPMG-2020-008"><input type="text" name="prf_no8" id="prf_no8" value="PRO-KPMG-2020-008" readonly style="color: CRIMSON;font-weight: bold;" ></a></td>
                                <td>Natasha Jain</td>
                                <td></td>                                          
                                <td>Telangana</td>
                                <td>Nanda Krishnan</td>                                            
                                <td>-</td>                                            
                                <td>KGSPL/BLR/GTP-1D/19-20/02C</td>                                            
                                <td width="4%">        
                                    
                                    <a href="#"><input type="text" value="2019-11-21" size="15" name="m_date" id="m_date8" class="txtdate" readonly style="width: 100px;"></a>

                                </td>                                            
                                <td>22914695</td>                                            
                                <td>sandhiya</td>                                            
                                <td>Pending</td>                                                                           
                                </tr>
                            </form>
                               
                            <form action="../insert_ponumber" method="post" onsubmit="return validateForm()" > 
                                <!--<form action="#" method="post" onsubmit="//return validateForm()">--> 
                                <tr>     
                                <input type="hidden" name="rowCount" value="9">
                                <td>9</td>
                                <td width="2%"><a href="view_project.jsp?project_id=PRO-KPMG-2020-004"><input type="text" name="prf_no9" id="prf_no9" value="PRO-KPMG-2020-004" readonly style="color: CRIMSON;font-weight: bold;" ></a></td>
                                <td>TEST</td>
                                <td>SDAKGMASKLDMG</td>                                          
                                <td>TamilNadu</td>
                                <td>Nanda Krishnan</td>                                            
                                <td>454</td>                                            
                                <td>KSDJGKJSAJK</td>                                            
                                <td width="4%">        
                                    
                                    <a href="#"><input type="text" value="2020-11-20" size="15" name="m_date" id="m_date9" class="txtdate" readonly style="width: 100px;"></a>

                                </td>                                            
                                <td>2551211665</td>                                            
                                <td>sandhiya</td>                                            
                                <td>Pending</td>                                                                           
                                </tr>
                            </form>
                               
                            <form action="../insert_ponumber" method="post" onsubmit="return validateForm()" > 
                                <!--<form action="#" method="post" onsubmit="//return validateForm()">--> 
                                <tr>     
                                <input type="hidden" name="rowCount" value="10">
                                <td>10</td>
                                <td width="2%"><a href="view_project.jsp?project_id=PRO-011-2020-011"><input type="text" name="prf_no10" id="prf_no10" value="PRO-011-2020-011" readonly style="color: CRIMSON;font-weight: bold;" ></a></td>
                                <td>Mr.Anbuchelvan.R</td>
                                <td></td>                                          
                                <td>TamilNadu</td>
                                <td>Nanda Krishnan</td>                                            
                                <td>MWC/2020/01</td>                                            
                                <td>MWC/2020/01</td>                                            
                                <td width="4%">        
                                    
                                    <a href="#"><input type="text" value="2020-01-21" size="15" name="m_date" id="m_date10" class="txtdate" readonly style="width: 100px;"></a>

                                </td>                                            
                                <td>464386957</td>                                            
                                <td>commercial</td>                                            
                                <td>Pending</td>                                                                           
                                </tr>
                            </form>
                                                                                                        
                            </tbody>
                        </table>                             
                        <!--                                <center>
                                                            <input type="reset" value="Reset">
                                                        </center>                                                               -->
                        <!--</form>-->
                    </div>
                </div>
            </div>

        </div>          
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content"> 
                    <form id="ttt" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="prfno" id="prfno" value="">
                        <div class="modal-body" ><input type="file"  NAME="file" style="float: left;margin-top: 10px;" required><input type="submit" value="Save" class="btn btn-primary" style="float: left;width: 120px;margin-left: 20px;margin-top: 4px;">
                        </div>

                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>  



    </body>               
    <script type="text/javascript">
        function statusClosed(po_no) {
            var x = document.getElementById("m_date" + po_no).value;
            var y = document.getElementById("po_no" + po_no).value;
            if ((x == "null" || x == "") && (y == "null" || y == "")) {
                alert("Click Move to Purchase Date !");
                document.getElementById("m_date" + po_no).focus();
                return false;
            }

        }
    </script>         
    <!--  Disable Past Date picker Link Start -->
    <link href="../past_datepicker_disable/1.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript" src="../past_datepicker_disable/1.js"></script>
    <script type="text/javascript" src="../past_datepicker_disable/2.js"></script>
    <script language="javascript">
        $(document).ready(function () {
            $(".txtdate").datepicker({
                minDate: -2
            });
        });
    </script>      
    <!--  Disable Past Date picker Link End -->

</html>
