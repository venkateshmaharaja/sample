<%-- 
    Document   : makeprf
    Created on : 14 Jul, 2016, 3:41:52 PM
    Author     : Pc294
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="stores.Database_Connection"%>
<%
    Database_Connection obj = new Database_Connection();
    Connection con = obj.getConnection();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>OCEAN-ERP</title>
        <!-- Favicons -->
        <link href="image/ocean_logo.png" rel="icon">
        <!--<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">-->

        <!-- Google Fonts -->
        <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">   -->
        <link href="../assets/vendor/googleapis/Open+Sans.css" rel="stylesheet">
        <!-- Vendor CSS Files -->
        <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="../assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="../assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="../assets/vendor/venobox/venobox.css" rel="stylesheet">
        <link href="../assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="../assets/css/style.css" rel="stylesheet">  
        <title>Ocean ERP</title>
        <script type="text/javascript">
            window.history.forward(1);
            function noBack()
            {
                window.history.forward();
            }
        </script>
        <style>
            .approve_proj{
                margin-top: 6%;
            }
            label{
                /*font-weight: 600;*/
            }
            .modal_head{
                background-color: #004085;
                color: whitesmoke;
            }
            form{
                /*background-color: #004085;*/
            }
            .modeal_foot{
                background-color: #004085;
                color: whitesmoke;
            }
            /*            .table{
                            color: whitesmoke;
                        }
                        .form-control{
                            color: #024185;
                            font-weight: 550;
                        }
                        label{
                            font-weight: 500;
                            background-color: whitesmoke;
                            text-transform: uppercase;
            
                        }*/

        </style>    
        <script>
            //         <<<<<<<<<<<<<<    Validation Script              >>>>>>>>>>>
            function validateForm()
            {
                var x = document.getElementById("unit").value;
                if (x == null || x == "") {
                    alert("Select Unit");
                    document.getElementById("unit").focus();
                    return false;
                }
                var x = document.getElementById("division").value;
                if (x == null || x == "") {
                    alert("Select Division");
                    document.getElementById("division").focus();
                    return false;
                }
                var x = document.getElementById("required_date").value;
                if (x == null || x == "") {
                    alert("Select Required Date");
                    document.getElementById("required_date").focus();
                    return false;
                }
                var x = document.getElementById("currency").value;
                if (x == null || x == "") {
                    alert("Select Currency");
                    document.getElementById("currency").focus();
                    return false;
                }
                var x = document.getElementById("creator_id").value;
                if (x == null || x == "") {
                    alert("Enter PRF Creator Name ");
                    document.getElementById("creator_id").focus();
                    return false;
                }
                var x = document.getElementById("adrowval").value;
                if (x == "" || x == null) {
                    alert("Add Atleast One Line Item ! ");
                    document.getElementById("addrow").focus();
                    return false;
                }

                var x = document.getElementById("ad_count_row").value;

                for (var i = 1; i <= x; i++) {

                    var pn = document.getElementById("partno" + i).value;
                    if (pn == "" || pn == null) {
//                        alert("Select " + i + " Part Number ! ");
                        document.getElementById("partno" + i).focus();
                        return false;
                    }

                    var qty = document.getElementById("quantity" + i).value;
                    if (qty == "" || qty == null || qty == 0) {
                        alert("Enter " + i + " Quantity ! ");
                        document.getElementById("quantity" + i).focus();
                        return false;
                    }

                    var uom = document.getElementById("uom" + i).value;
                    if (uom == "" || uom == null) {
                        alert("Select " + i + " UOM ! ");
                        document.getElementById("uom" + i).focus();
                        return false;
                    }

                    var unitcost = document.getElementById("unitcost" + i).value;
                    if (unitcost == "" || unitcost == null || unitcost == 0) {
                        alert("Enter " + i + " Unit Cost ! ");
                        document.getElementById("unitcost" + i).focus();
                        return false;
                    }

//                    var remark = document.getElementById("uremark" + i).value;
//                    if (remark == "" || remark == null) {
//                        alert("Enter " + i + " Remark ! ");
//                        document.getElementById("uremark" + i).focus();
//                        return false;
//                    }

                }
            }
        </script>                          

        <!--<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>-->                                               

        <script type="text/javascript" src="js/addrow.js"></script>  <!-- Fetch Data Value -->

        <script>

            var tot = 0;
            var n = 0;
            //    <<<<<<<<<<<<<<<<<<<<<     add row table function start         >>>>>>>>>>>>>>>>>>>>>>>>     
            $(document).ready(function () {
                var rowInd = 0;
                $(".deletebutton").click(function () {
                    var sno = 0;
                    $("#tBody").find('input[name="chk"]').each(function () {
                        if ($(this).is(":checked")) {
                            rowInd--;
                            if (rowInd == 0) {
                                document.getElementById("totalcost").value = "";
                            }
                            $(this).parents("tr").remove();
                        }
                    });
                    $('#discount').val("0");
                    sno = $('#tBody tr').length;
                    rowInd = $('#tBody tr').length - 1;
                    var counter = 1;
                    $('.sno').each(function () {

                        tot = rowInd;
                        var ar = this.id;
                        var val = ar.replace("s_no", "");
                        //alert(val + " " + counter);


                        $('#s_no' + val).attr('name', 's_no' + counter);
                        $('#partno' + val).attr('name', 'partno' + counter);
                        $('#partno' + val).attr('id', 'partno' + counter);
                        $('#partnos' + val).attr('id', 'partnos' + counter);
                        $('#s_nos' + val).attr('id', 's_nos' + counter);
                        $('#s_no' + val).attr('id', 's_no' + counter);

                        $('#s_no' + counter).attr('value', counter);
                        counter++;

                    });

//                    overAllcost();
//                    totalCost();

                });

                $(".addrow").click(function () {
                    $('#discount').val("0");
                    var rowInd = $('#tBody tr').length - 1;
                    var sup_name = $("#sup").val();
                    rowInd++;
                    // alert(rowInd);
                    tot = rowInd;
                    var markup = "<tr>" +
                            "<input type='hidden' name='rowCount' id='rowCount' value='" + rowInd + "'>" +
                            "<td><div id = 's_nos" + rowInd + "'><input type='text' id='s_no" + rowInd + "' name='s_no" + rowInd + "' class='sno' value='" + rowInd + "' style='color:black;' readonly size='4'> <input type='checkbox' id='cbox" + rowInd + "' name='chk' class='chkbox' style='width:20px;'></div></td>" +
                            "<td style='width:300px;'><div id = 'partnos" + rowInd + "' size='40' required=''></div></td>" +
                            "<td ><div id = 'others" + rowInd + "' style='color:black;'></div></td>" +
//                            "<td><div id ='chk" + rowInd + "'><input type='checkbox' id='cbox" + rowInd + "' name='chk' class='chkbox' style='width:20px;'></div></td>" +


                            "</tr>";
                    $("#tBody").append(markup);
                    $("input:hidden#adrowval").val("ROWADD");



                    $.ajax({
                        type: "post",
                        url: "fetch_mcode_bom.jsp?row=" + rowInd, //here you can use servlet,jsp, etc
                        // data: "input=" +$('#ip').val()+"&output="+$('#op').val(),
                        success: function (msg) {
                            $("#partnos" + rowInd + "").html(msg);
                        }
                    });






                    $('.datepicker').pickmeup({
                        position: 'center',
                        hide_on_select: true
                    });

                    $('#ad_count_row').val(rowInd);

                });
            });
            //      <<<<<<<<<<<<<<<<<<<<<  Add row table function End   >>>>>>>>>>>>>>>>>>>>>>  
        </script>                         

        <script>
            function Call(row) {


                var partno = document.getElementById("partno" + row).value;
                var pid = document.getElementById("pid").value;
                if (partno == "" || partno == null) {
                    alert("Select Part Number ! ");
                    document.getElementById("uom" + row).value = "";
                    document.getElementById("partno" + row).focus();
                    return  false;
                } else {
//                    $.ajax({
//                        type: "post",
//                        url: "onchange/fetch_part_des.jsp?part_no=" + partno + "&id=" + row,
//                        success: function (msg) {
//
//                            $("#descriptions" + row + "").html(msg);
//                            //                                             alert( $("#descriptions"+i+"").val());
//                        }
//                    });

                    $.ajax({
                        type: "post",
                        url: "onchange/fetch_bom.jsp?part_no=" + partno + "&id=" + row + "&pid=" + pid,
                        success: function (msg) {

                            $("#others" + row + "").html(msg);
                            //                                             alert( $("#descriptions"+i+"").val());
                        }
                    });


                }



            }
        </script>
        <!--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>-->          

        <script>
            //       <<<<<<<<<<<<<<<<    onkeypress function  Start    >>>>>>>>>>>>
            function isNumberKey(evt)
            {
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                if (charCode != 46 && charCode > 31
                        && (charCode < 48 || charCode > 57))
                    return false;
                return true;
            }
            //       <<<<<<<<<<<<<<<<    onkeypress function  Start    >>>>>>>>>>>>
        </script>
        <script>
            function isCharacterKey(evt) {
                var inputValue = evt.charCode;
                if (!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)) {
                    evt.preventDefault();
                }
            }
        </script>
        <script>
            function verifying() {
                var x = document.getElementById("creator_id");
                alert("Onces Verifying Your Inputs after Submit");
            }
        </script>

        <style>
            .approve_proj{
                margin-top: 6%;
            }
            label{
                /*font-weight: 600;*/
            }
            .modal_head{
                background-color: #004085;
                color: whitesmoke;
            }
            form{
                /*background-color: #004085;*/
            }
            .modeal_foot{
                background-color: #004085;
                color: whitesmoke;
            }
            /*            .table{
                            color: whitesmoke;
                        }
                        .form-control{
                            color: #024185;
                            font-weight: 550;
                        }
                        label{
                            font-weight: 500;
                            background-color: whitesmoke;
                            text-transform: uppercase;
            
                        }*/

        </style>   

    </head>
    <body>
        <jsp:include page="../header_proman.jsp"></jsp:include>  


        <%
            HttpSession sessions = request.getSession(true);
            String emp_name = "";
            if ((sessions.getAttribute("emp_name") == null) || (sessions.getAttribute("emp_name") == "")) {
                response.sendRedirect("../index.jsp");
            } else {

                emp_name = sessions.getAttribute("emp_name").toString();
            }

//                String sup_name = session.getAttribute("sup_name").toString();//request.getParameter("sup_name");
            String type_prf = session.getAttribute("type_prf").toString();//request.getParameter("sup_name");
            String project_id = session.getAttribute("project_id").toString();//request.getParameter("sup_name");
            String pay = "", inco = "";
//                   String connectionURL = "jdbc:sqlserver://10.44.50.15;databaseName=SI_PCBLAbel";
//                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//                    Connection con = DriverManager.getConnection(connectionURL, "balaji_sap", "sap123");
            Statement st = con.createStatement();
//                ResultSet tr = st.executeQuery("select payment_terms,inco_terms from vendor_history where vendor_name='"+sup_name+"' ");
//                while(tr.next()){
//                pay = tr.getString(1);
//                inco = tr.getString(2);
//                }
            // out.println(sup_name);
%>
        <div class="approve_proj row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="modal-content">
                            <div class="modal_head modal-header">
                                <h5 class="modal-title" style="font-weight: 500;margin-left: auto;margin-right: auto; text-transform: uppercase;" ></h5>
                            </div>
                            <div class="modal-body">
                                <div class="table-responsive">

                                    <input type="hidden" id="ad_count_row" name="ad_count_row" value="">
                                    <input type="hidden"  id="sup">
                                    <input type="hidden" value="" id="totco">
                                    <!--<center><img src="/ocean/images/make.png" style="margin-left: 240px;"></center>-->               
                                    <form name="form2" method="post" action="../make_pi" onsubmit="return validateForm()"><br>   
                                        <!--<form name="form2" method="post" action="#" onsubmit="return validateForm()"><br>-->   
                                        <!--                            <input type="hidden" name="rowCount" value="" id="rowCount"> dont delete this row-->
                                        <input type="hidden" value="<%=type_prf%>" name="type_prf" id="type_prf">
                                        <input type="hidden" value="<%=project_id%>" name="pid" id="pid">

                                        <!--<center><font style="color: white;font-size: 18px;font-weight:inherit;">Make PRF</font></center>-->
                                        <table border="1"  id="first_table" style="border-collapse: collapse;" class="table table-striped" >


                                            <tr><td align="center">
                                                    Make Purchase Indent                 
                                                </td></tr> 
                                        </table>

                                        <!-- <table id="tHead">
                                              
                                            <tr class="thclass" style="height: 30px;">                                            
                                                 <td>S No</td>
                                                 <td>Description</td>
                                                 <td>Part No</td>
                                                 <td>Supplier Name</td>
                                                 <td>Qty</td>
                                                 <td>UOM</td>
                                                 <td>Unit Cost</td>
                                                 <td>Over all Cost</td>
                                                 <td>Usage & Remark</td>  
                                                 <td>Chk</td>  
                                            </tr>
                                        </table> -->
                                        <!-- tHeadContainer -->
                                        <table border="1"  id="tBody" style="border-collapse: collapse;" class="table table-striped" >
                                            <tr>                                            
                                                <td>S No</td>
                                                <td >Material/ Labour</td>
                                                <td>BOQ Description</td>
                                                <!--<td></td>-->
                                            </tr>                   

                                        </table>   


                                        <input type="hidden" name="adrowval" id="adrowval" value="">
                                        <div id="table2">
                                            <br>
                                            <p style="margin-top: -10px;">
                                                <!--PRF Creator Name : <input type="text" id="creator_id" name="creator_name" onkeypress="return isCharacterKey(event)" onblur="verifying()" style="width: 180px;background-color:#020223;font-size: 18px;">-->
                                                Purchase Indent Creator Name : <input type="text" id="creator_id" name="creator_name" value="<%=emp_name%>" onkeypress="return isCharacterKey(event)"  style="width: 180px;background-color: white;color: #020223;font-size: 14px;border: none;">

                                                <!--Discount : <input type="number" name="discount" id="discount" value="0" required="" onkeyup="//return disCount(this.value)" style="width: 80px;background-color:white;font-size: 14px;border: none;color: #020223;">-->
                                                <!--<font style="margin-left: 128px;font-size: 20px;">Total Cost :  <input type="text" name="totalcost" id="totalcost" size="12" readonly style="width: 150px;height:25px;font-size: 20px;background-color: rgb(0, 104, 139);border: none;"></font>-->
                                        </div> <br>  
                                        Delivery Address : <textarea name="del_add" id="del_add" rows="2" cols="35" required>Test Address</textarea>
                                        <br>
                                        <input type="button" class="addrow btn btn-info" id="addrow" value="Add"   onclick="Vendor()"/>&nbsp;&nbsp;                             
                                        <input type="button"  height="26" id="remove" class="deletebutton btn btn-danger" value="Remove"  />&nbsp;&nbsp;                            
                                        &nbsp;&nbsp;&nbsp;&nbsp;														<!-- onclick="deleteRow('tBody')" -->
                                        <input type="submit" value="Submit" class="btn btn-success"  >                                                      
                                        <%

                                        %>

                                    </form>                          
                                </div>               
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <link rel="stylesheet" href="../date/css/pickmeup.css" type="text/css" />
            <link rel="stylesheet" media="screen" type="text/css" href="../date/css/demo.css" />
            <script type="text/javascript" src="../date/js/jquery.js"></script>
            <script type="text/javascript" src="../date/js/jquery.pickmeup.js"></script>
            <script type="text/javascript" src="../date/js/demo.js"></script>


            <script>
                                            $(function () {
                                                $('.datepicker').pickmeup({
                                                    position: 'center',
                                                    hide_on_select: true
                                                });
                                            });
            </script>
            <script>
                $(document).on('focus', ".datepicke", function () {
                    $(this).datepicker();
                });
            </script>

            <script>
                $(document).ready(function () {
                    //iterate through each textboxes and add keyup
                    //handler to trigger sum event
                    $(".txt").each(function () {
                        $(this).keyup(function () {
                            calculateSum();
                        });
                    });
                });
                function calculateSum() {

                    var sum = 0;
                    //iterate through each textboxes and add the values
                    $(".txt").each(function () {
                        //add only if the value is number
                        if (!isNaN(this.value) && this.value.length != 0) {
                            sum += parseFloat(this.value);
                        }
                    });
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                    $("#sum").html(sum.toFixed(2));
                }
            </script>

            <script>
                function disCount(val) {
                    var totv = document.getElementById("totalcost").value;
                    var tov = document.getElementById("totco").value;
                    var result = parseFloat(tov) - parseFloat(val);

                    if (val == "0" || val == "") {
                        var x = document.getElementById("tBody").rows.length - 1;
                        var z = 0.0;
                        //alert(x);
                        for (var y = 1; y <= x; y++) {
                            var a = document.getElementById("oacost" + y).value;
                            z = z + parseFloat(a);
                        }

                        document.getElementById("totalcost").value = z.toFixed(2);
                    } else {
                        document.getElementById("totalcost").value = result.toFixed(2);
                    }
                    //alert(val);

                }
            </script>


    </body>
</html>
