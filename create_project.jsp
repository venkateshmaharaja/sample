








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
            <center><font style="font-size: 16px;font-weight: bolder;text-decoration: underline;color: #006666;">Add PO Details</font></center>
            <BR>
             <script>
           function ca(){
               var va=document.getElementById("c_code").value;
//               alert(ca);
if(va!=""){
            $.ajax({
                        type: "post",
                        url: "onchange/part_des.jsp?c_code=" + va + ",
                        success: function (msg) {

                            $("#client_ads").html(msg);
                            //                                             alert( $("#descriptions"+i+"").val());
                        }
                    });
                }
            }
        </script>
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
            
//      test(val);
    }
        </script>
       
            
            <!--<img src="../images/vendor.png" style="margin-left: 240px;margin-top:40px;">-->     
            <div id="content">   
                
               
                <form name="form" action="../project_creation" method="post" >
                    <table border="1" style="border-collapse: collapse;color: #000000;" width="1100px">
                        <tr>
                            <th colspan="8" style="font-size: 20px;background-color:#00688B;" align="center"><font style="color: #ffffff">Client Details</font></th>
                        </tr> 
                        <tr>
                            <th style="font-size: 12px;white-space: nowrap;">Client Name</th><td>
                                <select name="client" id="client" onchange="Division(this.value);"  required="">
                                    <option value=""></option>
                                
                            <option value="FORD">FORD motors</option>
                                    
                            <option value="GENP">GENPAT</option>
                                    
                            <option value="GOVO">Compass Group</option>
                                    
                            <option value="KONE">Kone elevators</option>
                                    
                            <option value="KPMG">KPMG Global Services Pvt. Ltd</option>
                                    </select></td>
                            <th style="font-size: 12px;white-space: nowrap;">Client Address</th>
                            <td>   <textarea name="client_ad" id="client_ad" required="" ></textarea>
                                </td>
                                
                            <th style="font-size: 12px;white-space: nowrap;">Project Id</th>
                            <td><select name="project_id" id="project_id" required="" readonly>
                                
                                </select></td>
<th style="font-size: 12px;white-space: nowrap;">Project Location</th>
                            <td><textarea name="project_location" id="project_location" required="" ></textarea></td>
                        </tr>
                        <tr><th style="font-size: 12px;white-space: nowrap;">Contact Name(Primary)</th>
                            <td><input type="text" name="client_name" value="" id="client_name" required=""></td>
                            <th style="font-size: 12px;white-space: nowrap;">Contact Number</th>
                            <td><input type="text" name="client_contact" value="" id="client_contact" required=""></td>
                            <th style="font-size: 12px;white-space: nowrap;">Contact Name(Secondary)</th>
                            <td><input type="text" name="sclient_name" value="" id="sclient_name" ></td>
                            <th style="font-size: 12px;white-space: nowrap;">Contact Number</th>
                            <td><input type="text" name="sclient_contact" value="" id="client_contact" required=""></td>
                        </tr>
                        <tr><th style="font-size: 12px;white-space: nowrap;">Architect Name</th>
                            <td><input type="text" name="architect_name" value="" id="client_name" required=""></td>
                            <th style="font-size: 12px;white-space: nowrap;">Contact Number</th>
                            <td><input type="text" name="architect_contact" value="" id="client_contact" required=""></td>
                            <th style="font-size: 12px;white-space: nowrap;">PMC Name</th>
                            <td><input type="text" name="pmc_name" value="" id="sclient_name" ></td>
                            <th style="font-size: 12px;white-space: nowrap;">Contact Number</th>
                            <td><input type="text" name="pmc_contact" value="" id="client_contact" required=""></td>
                        </tr>
                            
                            
                        <tr>
                            <th colspan="8" style="font-size: 20px;background-color:#00688B;" align="center"><font style="color: #ffffff">Project Details</font></th>
                        </tr>         
                                
                         <tr>
                             <th style="font-size: 12px;white-space: nowrap;">Project Name</th>
                             <td colspan="2"><input type="text" name="project_name" value="" size="30" id="project" required=""></td>
                            <th colspan="2" style="font-size: 12px;white-space: nowrap;">Project Details If Any</th>
                            <td colspan="3"> <textarea name="pro_details" cols="50" value="" id="pro_details" ></textarea></td>
                        </tr>
                        
                        
                        <tr>
                            <th style="font-size: 12px;white-space: nowrap;">Project Region</th><td><select name="region" id="region">
                                    <option value="TamilNadu">Tamilnadu</option>
                                    <option value="Kerala">Kerala</option>
                                    <option value="Andhra">Andhra</option>
                                    <option value="Telangana">Telangana</option>
                                </select></td>
                        
                            <th style="font-size: 12px;white-space: nowrap;">Director</th>
                            <td><select name="director" id="director" required="">
                                
                                <option value="Nanda Krishnan">Nanda Krishnan</option>
                                
                                </select>
                            </td>
                            <th style="font-size: 12px;white-space: nowrap;">SEZ Zone</th><td><select name="sez_zone" id="sez_zone">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select></td>

                              <th style="font-size: 12px;white-space: nowrap;">Scope Of Work</th><td><select name="scope_work" id="scope_work">
                                    <option value="Turnkey Works">Turnkey Works</option>
                        <option value="General Contract">General Contract</option>
                        <option value="Civil & Interior">Civil & Interior</option>
                        <option value="Electrical">Electrical</option>
                        <option value="Modular Furniture">Modular Furniture</option>
                        
                                     </select></td>
  
                        </tr>      
                        <tr><th style="font-size: 12px;white-space: nowrap;">LOI Number</th>
                            <td><input type="text" name="loi" value="" id="loi" required=""></td>
                            <th style="font-size: 12px;white-space: nowrap;">PO Number</th>
                            <td><input type="text" name="po_number" value="" id="po_number" required=""></td>
                            <th style="font-size: 12px;white-space: nowrap;">PO Date</th>
                            <td><input type="date" name="po_date" value="" id="po_date" required="" ></td>
                            <th style="font-size: 12px;white-space: nowrap;">PO Value</th>
                            <td><input type="number" name="po_value" value="" id="po_value" required=""></td>
                        </tr>
                        <tr><th style="font-size: 12px;white-space: nowrap;">Project Amount Type</th>
                               <td><select name="pmt" value="" id="pmt" required="">
                                       <option value="With Tax">With Tax</option> 
                                       <option value="With Out Tax">With Out Tax</option> 
                                </select></td>
                            <th style="font-size: 12px;white-space: nowrap;">Project Value</th>
                            <td><input type="text" name="value" value="" id="value" required=""></td>
                            <th style="font-size: 12px;white-space: nowrap;">Work timings</th>
                            <td><input type="text" name="work_time" value="" id="work_time"  ></td>
                            <th style="font-size: 12px;white-space: nowrap;">Project Duration</th>
                                    <td><select name="project_duration"  id="project_duration" required="">
                                            <option value="3 months">3 months</option>
                                            <option value="6 months">6 months</option>
                                            <option value="9 months">9 months</option>
                                            <option value="1 year">1 year</option>
                                            <option value="2 years">2 years</option>
                                </select></td>
                        </tr>    
          <tr>
           <th colspan="8" style="font-size: 20px;background-color:#00688B;" align="center"><font style="color: #ffffff">EMD Details</font></th>
           </tr>                  
           <tr>
                                  
                <tr><th style="font-size: 12px;white-space: nowrap;">EMD Amount*</th><td><input type="number" name="emd_amount" id=""   maxlength="20" ></td>
                    <th style="font-size: 12px;white-space: nowrap;">Debit Account Type </th><td> <select name="actype" readonly=""> 
                        <option value=""></option>
                        <option value="bank">Bank Account</option>
                   
                         </select></td>
                         <th style="font-size: 12px;white-space: nowrap;">Notes  </th><td><textarea id="text" name="notes"  rows="4" ></textarea></td>
                
           <th style="font-size: 12px;white-space: nowrap;">EMD Refund Date *</th><td> <input type="date" name="refund_date"  id="" class=""></td></tr>

<tr><th style="font-size: 12px;white-space: nowrap;">EMD BG</th><td><input type="number" name="emd_amount" id=""   maxlength="20" ></td>
                    <th style="font-size: 12px;white-space: nowrap;">Bank Name </th><td> <select name="actype" readonly=""> 
                        <option value=""></option>
                        <option value="bank">Indian Bank</option>
                   
                         </select></td>
                         <th style="font-size: 12px;white-space: nowrap;">Cheque Details</th><td><textarea id="text" name="notes"  rows="4" ></textarea></td>
                
           <th style="font-size: 12px;white-space: nowrap;">Reference</th><td> <input type="text" name="ref"  id="" class=""></td></tr>  
          <tr>
           <th colspan="8" style="font-size: 20px;background-color:#00688B;" align="center"><font style="color: #ffffff">Fiscal Details</font></th>
           </tr>                  
<tr>
<th style="font-size: 12px;white-space: nowrap;">Payment Terms</th><td><textarea name="payment_terms" required=""></textarea></td>
<th style="font-size: 12px;white-space: nowrap;">Advance  </th>  
<td><select name="advance">
        <option value=""></option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
</select></td>
<th style="font-size: 12px;white-space: nowrap;">Advance Amount </th>  
<td><input type="text" name="ad_amount" id="ad_amount" /></td>
<th style="font-size: 12px;white-space: nowrap;">Advance Percentage </th>  
<td><input type="text" name="ad_per" id="ad_per" /></td>

</tr>

<tr>
<th style="font-size: 12px;white-space: nowrap;">Advance B/G</th><td><select name="ad_bg" required="">
        <option value="Yes">Yes</option>
        <option value="No">No</option>
        <!--<option value="Stage Wise">Stage Wise</option>-->
</select></td>
<th style="font-size: 12px;white-space: nowrap;">Running Bill Payments  </th>  
<td><select name="running_bill">
        <option value=""></option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
</select></td>
<th style="font-size: 12px;white-space: nowrap;">Retention Amount </th>  
<td><input type="text" name="rt_amount" id="rt_amount" /></td>
<th style="font-size: 12px;white-space: nowrap;">Retention Percentage </th>  
<td><input type="text" name="rt_per" id="rt_per" /></td>

</tr>
<tr>
<th style="font-size: 12px;white-space: nowrap;">Retention B/G</th><td><select name="ret_bg" required="">
        <option value="Yes">Yes</option>
        <option value="No">No</option>
        <!--<option value="Stage Wise">Stage Wise</option>-->
</select></td>
<th style="font-size: 12px;white-space: nowrap;">DLP Period From</th>  
<td><input type="date" name="dlp_from" id="dlp_from"></td>
<th style="font-size: 12px;white-space: nowrap;">DLP Period Till </th>  
<td><input type="date" name="dlp_till" id="dlp_till" /></td>
<th style="font-size: 12px;white-space: nowrap;">Remarks If any </th>  
<td><textarea name="rt_rem" id="rt_rem" ></textarea></td>

</tr>
<tr>
<th style="font-size: 12px;white-space: nowrap;">Performance B/G</th><td><select name="per_bg" required="">
        <option value=""></option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
        <!--<option value="Stage Wise">Stage Wise</option>-->
</select></td>
<th style="font-size: 12px;white-space: nowrap;">Penalty Clause</th><td><select name="pen_cls" required="">
        <option value=""></option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
        <!--<option value="Stage Wise">Stage Wise</option>-->
</select></td>
<th style="font-size: 12px;white-space: nowrap;">Safety Documents</th>  
<td>
<select name="safety" id="safety" >
       <option value=""></option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
</select>
</td>
<th style="font-size: 12px;white-space: nowrap;">Mock Up Requirement</th>  
<td>
<select name="mock" id="mock" >
       <option value=""></option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
</select>
</td>
</tr>
 <tr>
 <th colspan="8" style="font-size: 20px;background-color:#00688B;" align="center"><font style="color: #ffffff">Other Details</font></th>
                        </tr> 

<tr >
<th style="font-size: 12px;white-space: nowrap;">WCP </th><td><select name="wcp" required="">
        <option value=""></option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
        <!--<option value="Stage Wise">Stage Wise</option>-->
</select></td>
<th style="font-size: 12px;white-space: nowrap;">Car Policy</th><td><select name="car_pol" required="">
        <option value=""></option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
        <!--<option value="Stage Wise">Stage Wise</option>-->
</select></td>
<th style="font-size: 12px;white-space: nowrap;">Water supply</th>  
<td>
<select name="water" id="water" >
       <option value=""></option>
        <option value="Client">Client</option>
        <option value="Ocean">Ocean</option>
</select>
</td>
<th style="font-size: 12px;white-space: nowrap;">Electrical supply</th>  
<td><select name="elec" id="elec" >
       <option value=""></option>
        <option value="Client">Client</option>
        <option value="Ocean">Ocean</option>
</select></td>

</tr>

                              
                    </table> 
                    <center>
                        <!--<input type="reset" value="Reset" class="button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
                        <input type="submit" value="Save & Next" class="button">

                    </center>
                </form>        
                <br>
            </div>
        </div>



    </body>
</html>
