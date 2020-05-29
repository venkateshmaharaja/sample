









<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <LINK REL="SHORTCUT ICON" HREF="images/name.ico"/>
        <link rel="stylesheet" href="css/asset_format.css">
        <title>Ocean ERP</title>         
        <!-- Validation Javascript Start  -->
<!--         <script language="JavaScript" type="text/javascript">
            javascript:window.history.forward(1);
        </script>-->
        <script>
           
        </script>
        <!-- Validation Javascript End  -->
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
            <center><font style="font-size: 16px;font-weight: bolder;text-decoration: underline;color: #006666;">Add Document For Project Kone</font></center>
            <BR>
            <script type="text/javascript">
           function Division(val) {

                var xRequest2;
                if (window.XMLHttpRequest) {
                    xRequest2 = new XMLHttpRequest();
                } else {
                    xRequest2 = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xRequest2.onreadystatechange = function () {
                    if ((xRequest2.readyState == 4) && (xRequest2.status == 200)) {
                        document.getElementById("project_id").innerHTML = xRequest2.responseText;
                    }
                }
                xRequest2.open("get", "fetchdata_client.jsp?client=" + val, "true");
                xRequest2.send();
            }
        </script>
            
            <!--<img src="../images/vendor.png" style="margin-left: 240px;margin-top:40px;">-->     
            <div id="content">   
                
                
                <FORM ENCTYPE="multipart/form-data" ACTION="uploadandstore.jsp?project_id=PRO-KPMG-2020-007&type=pen" METHOD=POST>

           
        <table border="1"  align="center"style="border-collapse: collapse;width:400px;">

<!--<tr>
<center><td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>-->
<tr><td colspan="2" align="center"> </td></tr>
<tr><td ><b>Choose Penalty Clause Document To Upload:</b></td>
    <td><INPUT NAME="file" TYPE="file" required=""><input type="submit" value="Upload File"></td>
</tr>


                        
                
        </table>
</FORM>
                <br>
                <br>
 <FORM ENCTYPE="multipart/form-data" ACTION="uploadandstore.jsp?project_id=PRO-KPMG-2020-007&type=po" METHOD=POST>

           
        <table border="1"  align="center"style="border-collapse: collapse;;width:400px;">

<!--<tr>
<center><td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>-->
<tr><td colspan="2" align="center"> </td></tr>
<tr><td  style="width:80%;"><b>Choose PO Document To Upload:</b></td>
    <td><INPUT NAME="file" TYPE="file" required=""><input type="submit" value="Upload File"></td>
</tr>

                        
                
        </table>
</FORM>
 
 <br>
 <br>
 <FORM ENCTYPE="multipart/form-data" ACTION="uploadandstore.jsp?project_id=PRO-KPMG-2020-007&type=con" METHOD=POST>

           
        <table border="1"  align="center"style="border-collapse: collapse;;width:400px;">

<!--<tr>
<center><td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>-->
<tr><td colspan="2" align="center"> </td></tr>
<tr><td  style="width:80%;"><b>Choose Conditions Of Contract File To Upload:</b></td>
    <td><INPUT NAME="file" TYPE="file" required=""><input type="submit" value="Upload File"></td>
</tr>

                        
                
        </table>
</FORM>
                <br>
                <br>
 <FORM ENCTYPE="multipart/form-data" ACTION="uploadandstore.jsp?project_id=PRO-KPMG-2020-007&type=ten" METHOD=POST>

           
        <table border="1"  align="center"style="border-collapse: collapse;;width:400px;">

<!--<tr>
<center><td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>-->
<tr><td colspan="2" align="center"> </td></tr>
<tr><td  style="width:80%;"><b>Choose Tender Drawings To Upload:</b></td>
    <td><INPUT NAME="file" TYPE="file" required=""><input type="submit" value="Upload File"></td>
</tr>

                        
                
        </table>
</FORM>         
 
 
                      <br>
                <br>
 <FORM ENCTYPE="multipart/form-data" ACTION="uploadandstore.jsp?project_id=PRO-KPMG-2020-007&type=org_boq" METHOD=POST>

           
        <table border="1"  align="center"style="border-collapse: collapse;;width:400px;">

<!--<tr>
<center><td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>-->
<tr><td  style="width:80%;"><b>Choose Original BOQ To Upload:</b></td>
    <td><INPUT NAME="file" TYPE="file" required="" ><input type="submit" value="Upload File"></td>
</tr>


                        
                
        </table>
</FORM> 
                
                
                      <br>
                <br>
 <FORM ENCTYPE="multipart/form-data" ACTION="uploadandstore.jsp?project_id=PRO-KPMG-2020-007&type=boq" METHOD=POST>

           
        <table border="1"  align="center"style="border-collapse: collapse;;width:400px;">

<!--<tr>
<center><td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>-->
<tr><td colspan="2" align="center"> </td></tr>
<tr><td  style="width:80%;"><b>Choose BOQ Data To Upload:</b></td>
    <td><INPUT NAME="file" TYPE="file" required="" ><input type="submit" value="Upload File"></td>
</tr>
                        
                
        </table>
</FORM> 
                
                                <br>
                <br>
 <FORM ENCTYPE="multipart/form-data" ACTION="uploadandstore.jsp?project_id=PRO-KPMG-2020-007&type=mom" METHOD=POST>

           
        <table border="1"  align="center"style="border-collapse: collapse;;width:400px;">

<!--<tr>
<center><td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>-->
<tr><td colspan="2" align="center"> </td></tr>
<tr><td  style="width:80%;"><b>Choose MOM Document To Upload:</b></td>
    <td><INPUT NAME="file" TYPE="file" required=""><input type="submit" value="Upload File"></td>
</tr>

                        
                
        </table>
</FORM>
 
                 <br>
                <br>
 <FORM ENCTYPE="multipart/form-data" ACTION="uploadandstore.jsp?project_id=PRO-KPMG-2020-007&type=safe" METHOD=POST>

           
        <table border="1"  align="center"style="border-collapse: collapse;;width:400px;">

<!--<tr>
<center><td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>-->
<tr><td colspan="2" align="center"> </td></tr>
<tr><td  style="width:80%;"><b>Choose Safety Document To Upload:</b></td>
    <td><INPUT NAME="file" TYPE="file" required=""><input type="submit" value="Upload File"></td>
</tr>

                        
                
        </table>
</FORM>
                
                 <br>
            </div>
        </div>



    </body>
</html>
