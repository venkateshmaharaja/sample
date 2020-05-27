







<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <LINK REL="SHORTCUT ICON" HREF="images/name.ico"/>
        <link rel="stylesheet" href="css/vender_register.css">
        <title>Ocean ERP</title>         
        <!-- Validation Javascript Start  -->
<!--         <script language="JavaScript" type="text/javascript">
            javascript:window.history.forward(1);
        </script>-->
        <script>
            function validateForm()
            {
                var x = document.getElementById("v_name").value;
                if (x == null || x == "") {
                    alert("Vender Name Empty!");
                    document.getElementById("v_name").focus();
                    return false;
                }
                var x = document.getElementById("v_address").value;
                if (x == null || x == "") {
                    alert("Vender Address Empty!");
                    document.getElementById("v_address").focus();
                    return false;
                }
                var x = document.getElementById("city_name").value;
                if (x == null || x == "") {
                    alert("City Name Empty!");
                    document.getElementById("city_name").focus();
                    return false;
                }
                var x = document.getElementById("state").value;
                if (x == null || x == "") {
                    alert("Region State Name Empty!");
                    document.getElementById("state").focus();
                    return false;
                }
                var x = document.getElementById("country_name").value;
                if (x == null || x == "") {
                    alert("Counrty Name Empty!");
                    document.getElementById("country_name").focus();
                    return false;
                }
                var x = document.getElementById("pincode").value;
                if (x == null || x == "") {
                    alert("Pincode Empty!");
                    document.getElementById("pincode").focus();
                    return false;
                }
//                var x = document.getElementById("pincode").value;
//                if(!x.match(/^\d+/))
//                {
//                    alert("only number allowed in pincode!");
//                    document.getElementById("pincode").focus();
//                    return false;
//                }
                var x = document.getElementById("office_mobile").value;
                if (x == null || x == "") {
                    alert("Office Mobile(or)Telephone Empty!");
                    document.getElementById("office_mobile").focus();
                    return false;
                }
                var x = document.getElementById("email").value;
                if (x == null || x == "") {
                    alert("E-mail Empty!");
                    document.getElementById("email").focus();
                    return false;
                }
                var x = document.getElementById("email").value;
                var atpos = x.indexOf("@");
                var dotpos = x.lastIndexOf(".");
                if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
                    alert("Not a valid e-mail address");
                    return false;
                }
                var x = document.getElementById("ac_no").value;
                if (x == null || x == "") {
                    alert("Account Number Empty!");
                    document.getElementById("ac_no").focus();
                    return false;
                }
                var x = document.getElementById("ac_name").value;
                if (x == null || x == "") {
                    alert("Account Name Empty!");
                    document.getElementById("ac_name").focus();
                    return false;
                }
                var x = document.getElementById("pan_no").value;
                if (x == null || x == "") {
                    alert("Pan Number Empty!");
                    document.getElementById("pan_no").focus();
                    return false;
                }
                var x = document.getElementById("tin_no").value;
                if (x == null || x == "") {
                    alert("Tin Number Empty!");
                    document.getElementById("tin_no").focus();
                    return false;
                }
                var x = document.getElementById("cst_no").value;
                if (x == null || x == "") {
                    alert("CST Number Empty!");
                    document.getElementById("cst_no").focus();
                    return false;
                }
                var x = document.getElementById("lst_no").value;
                if (x == null || x == "") {
                    alert("LST Number Empty!");
                    document.getElementById("lst_no").focus();
                    return false;
                }
                var x = document.getElementById("raigl").value;
                if (x == null || x == "") {
                    alert("Reconciliation Account Empty!");
                    document.getElementById("raigl").focus();
                    return false;
                }
                var x = document.getElementById("p_terms").value;
                if (x == null || x == "") {
                    alert("Payment terms Empty!");
                    document.getElementById("p_terms").focus();
                    return false;
                }
                var x = document.getElementById("p_order").value;
                if (x == null || x == "") {
                    alert("Purchase order Empty!");
                    document.getElementById("p_order").focus();
                    return false;
                }
                var x = document.getElementById("inco_terms").value;
                if (x == null || x == "") {
                    alert("Inco Terms Empty!");
                    document.getElementById("inco_terms").focus();
                    return false;
                }
                var x = document.getElementById("rv_officer").value;
                if (x == null || x == "") {
                    alert("Responsible Vendor Officer Empty!");
                    document.getElementById("rv_officer").focus();
                    return false;
                }
                var x = document.getElementById("rv_phoneno").value;
                if (x == null || x == "") {
                    alert("Responsible Vender Contact Empty!");
                    document.getElementById("rv_phoneno").focus();
                    return false;
                }




                var x = document.getElementById("e_name").value;
                if (x == null || x == "")
                {
                    alert("Employee Name Empty!");
                    document.getElementById("e_name").focus();
                    return false;
                }
                if (!/^[a-zA-Z, ]*$/g.test(document.loginform.e_name.value))
                {
                    alert("Employee Name Characters Only Allowed");
                    document.loginform.e_name.focus();
                    return false;
                }
                var x = document.getElementById("e_user").value;
                if (x == null || x == "") {
                    alert(" Username Empty!");
                    document.getElementById("e_user").focus();
                    return false;
                }
                var x = document.getElementById("e_pass").value;
                if (x == null || x == "") {
                    alert(" Password Empty!");
                    document.getElementById("e_pass").focus();
                    return false;
                }
                var x = document.getElementById("empaccess").value;
                if (x == null || x == "") {
                    alert("Access Type  Empty!");
                    document.getElementById("empaccess").focus();
                    return false;
                }
                var x = document.getElementById("empplant").value;
                if (x == null || x == "") {
                    alert("Plant  Empty!");
                    document.getElementById("empplant").focus();
                    return false;
                }
            }
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
            <center><font style="font-size: 16px;font-weight: bolder;text-decoration: underline;color: #006666;">Add Client</font></center>
            <BR>
            <!--<img src="../images/vendor.png" style="margin-left: 240px;margin-top:40px;">-->     
            <div id="content">   
                
               
                <form name="cleintform" action="../client_insert" method="post" onsubmit="return validateForm()">
                    <table id="tVender">
                        
                        <tr><td>Client Code</td><td><input type="text" name="c_code" id="c_code"  required="" style='text-transform:uppercase' maxlength="4" size="5"></td></tr>
                        <tr><td>Client Name :</td><td><input type="text" name="v_name" required id="v_name" style='text-transform:uppercase'></td></tr>
                        <tr><td>Address 1 :</td><td><textarea rows="4" name="v_address" required id="v_address" cols="30"></textarea></td></tr>
                        <tr><td>City Name :</td><td><input type="text" name="city_name" required id="city_name"></td></tr>
                        <tr><td>Region :(State, Province, County)</td><td><input type="text" name="state" id="state"></td></tr>
                        <tr><td>Country Name :</td><td><input type="text" name="country_name" required id="country_name"></td></tr>                         
                        <tr><td>City Pin Code :</td><td><input type="number" name="pincode" required id="pincode"></td></tr>                            
                        <tr><td>Office Mobile(or)Telephone</td><td><input type="number" required name="office_mobile" id="office_mobile"></td></tr>                          
                        <tr><td>E-mail :</td><td><input type="text" name="email" required id="email"></td></tr>
                        <tr><td>Bank Account Number :</td><td><input type="number"  name="ac_no" id="ac_no"></td></tr>
                        <tr><td>Bank Account Holder Name :</td><td><input type="text" name="ac_name" id="ac_name"></td></tr>
                        <tr><td>Bank Name :</td><td><input type="text" name="bank_name" id="bank_name"></td></tr>
                        <tr><td>Branch Name :</td><td><input type="text" name="branch_name" id="branch_name"></td></tr>
                        <tr><td>IFSC Code :</td><td><input type="text" name="ifsc_code" id="ifsc_code"></td></tr>                            
                        <tr><td>PAN NO :</td><td><input type="text" name="pan_no" id="pan_no"></td></tr>
                        <tr><td>CIN NO :</td><td><input type="text" name="tin_no" id="tin_no"></td></tr>
                        <tr><td>GST NO :</td><td><input type="text" name="gst_no" id="gst_no"></td></tr>
                        <tr><td>IEC NO :</td><td><input type="text" name="ie_no" id="ie_no"></td></tr>
                        <!--                            <tr><td>CST NO :</td><td><input type="text" name="cst_no" id="cst_no"></td></tr>
                                                    <tr><td>LST NO :</td><td><input type="text" name="lst_no" id="lst_no"></td></tr>                            -->
<!--                        <tr><td>Type Of Client :</td>
                            <td>
                                <select name="type_vendor" id="type_vendor" required="">
                                    <option></option>
                                    <option value="Service">Service</option>
                                    <option value="Supply">Supply</option>
                                    <option value="SP">Supply and Service</option>
                                </select>
                            </td>
                        </tr>-->

<tr><td>Payment terms :</td><td><input type="text" name="p_terms" id="p_terms" required=""></td></tr>
<tr><td>Billing terms :</td><td><input type="text" name="b_terms" id="b_terms" required=""></td></tr>
                        <tr><td>Purchase order currency :</td><td><select name="p_order" id="p_order" ><option></option><option value="INR">INR</option><option value="USD">USD</option><option value="EUR">EUR</option><option value="JPY">JPY</option><option value="GBP">GBP</option></select> </td></tr>
                        <tr><td>Inco Terms :</td><td><input type="text" name="inco_terms" id="inco_terms"></td></tr>
                        <tr><td>Responsible Client Officer :</td><td><input type="text" name="rc_officer" id="rc_officer"></td></tr>                            
                        <tr><td>Responsible Client Contact Number :</td><td><input type="number" name="rc_phoneno" id="rc_phoneno"></td></tr>                            
                        <tr><td>Ocean Representative Name :</td><td><input type="text" name="ocean_res" id="ocean_res"></td></tr>                            
                        <tr><td>Ocean Representative Contact Number :</td><td><input type="text" name="orc" id="orc"></td></tr>                            
                    </table> 
                    <center>
                        <!--<input type="reset" value="Reset" class="button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
                        <input type="submit" value="Create Client" class="button">

                    </center>
                </form>        
                <br>
            </div>
        </div>



    </body>
</html>
