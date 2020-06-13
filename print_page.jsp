<%-- 
    Document   : print_page
    Created on : 7 May, 2020, 11:32:58 AM
    Author     : AV-IT-PC194
--%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="stores.Database_Connection"%>
<%
    Database_Connection obj = new Database_Connection();
    Connection con = obj.getConnection();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
//                        HttpSession sessions = request.getSession(true);
//                        if ((sessions.getAttribute("emp_name") == null) || (sessions.getAttribute("emp_name") == "")) {
//                            response.sendRedirect("../index.jsp");
//                        }
//                        String connectionURL = "jdbc:sqlserver://10.44.50.15;databaseName=SI_PCBLabel";
//                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//                        Connection con = DriverManager.getConnection(connectionURL, "balaji_sap", "sap123");
        Statement st = con.createStatement();
        Statement st1 = con.createStatement();
        Statement st2 = con.createStatement();
        String po_no = request.getParameter("po_no");
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        Date today = Calendar.getInstance().getTime();
        String todayDate = df.format(today);
        String ven_code = "", name = "", address = "", mobile_no = "", vendor_contact_name = "", email = "", pan_no = "", gst_no = "";
        ResultSet pd = st.executeQuery("select vendor from po_history where po_no='" + po_no + "'");
        while (pd.next()) {
            ven_code = pd.getString(1);
        }
        ResultSet vd = st.executeQuery("select vendor_name,address,mobile_no,vendor_contact_name,email,pan_no,gst_no from vendor_mast where vendor_id='" + ven_code + "'");
        while (vd.next()) {
            name = vd.getString(1);
            address = vd.getString(2);
            mobile_no = vd.getString(3);
            vendor_contact_name = vd.getString(4);
            email = vd.getString(5);
            pan_no = vd.getString(6);
            gst_no = vd.getString(7);
        }
        String shipto = "";
        ResultSet sd = st.executeQuery("select term,terms from po_other_terms where po_no='" + po_no + "' and term='Ship To' ");
        while (sd.next()) {
            shipto = sd.getString(2);
        }
        String contact_person = "", contact_no = "";
        ResultSet cp = st.executeQuery("select term,terms from po_other_terms where po_no='" + po_no + "' and term='Contact Person' ");
        while (cp.next()) {
            contact_person = cp.getString(1);
        }

        ResultSet co = st.executeQuery("select term,terms from po_other_terms where po_no='" + po_no + "' and term='Contact No' ");
        while (co.next()) {
            contact_no = co.getString(1);
        }
    %> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ocean ERP </title>
        <style>
            body {
                width: 100%;
                height: 100%;
                margin: 0;
                padding: 0;
                background-color: #FAFAFA;
                font: 12pt "Tahoma";
            }
            * {
                box-sizing: border-box;
                -moz-box-sizing: border-box;
            }
            .page {
                width: 210mm;
                min-height: 297mm;
                padding: 5mm;
                margin: 5mm auto;
                border: 1px #D3D3D3 solid;
                border-radius: 1px;
                background: white;
                box-shadow: 0 0 1px rgba(0, 0, 0, 0);
            }
            .subpage {
                padding: 10px;
                border: 2px black solid;
                height: 293mm;
                /*outline: 1cm #FFEAEA solid;*/
            }

            @page {
                size: A4;
                margin: 0;
            }
            @media print {
                html, body {
                    width: 210mm;
                    height: 297mm;        
                }
                .page {
                    margin: 0;
                    border: initial;
                    border-radius: initial;
                    width: initial;
                    min-height: initial;
                    box-shadow: initial;
                    background: initial;
                    page-break-after: always;
                }
            }
        </style>
    </head>
    <body>
        <div class="book">
            <div class="page">
                <div class="subpage"><center><img src="/OCEAN_ERP/purchase/images/logo.png" align="center"><br><u><b>Purchase Order</b></u></center>
                    <table style="width:210mm;">
                        <tr>
                            <td>
                                <div style=" border-radius: 25px;
                                     border: 2px solid black;
                                     padding: 20px; 
                                     width: 340px;
                                     height: 280px; 
                                     font: 10pt 'Tahoma' ;">
                                    <b>
                                        M/s.<%=name%></b> <br>
                                    <font style="word-wrap:break-word;"><%=address%></font> <br><br><br>
                                    <pre>
 Contact No : <%=mobile_no%>
 Email      : <%=email%>
 GSTIN No   : <%=gst_no%>
 PAN No     : <%=pan_no%>
 Contact Per: <%=vendor_contact_name%> </pre>
                                </div>
                            </td>
                            <td>
                                <div style=" border-radius: 25px;
                                     border: 2px solid black;
                                     width: 340px;
                                     height: 280px; 
                                     font: 10pt 'Tahoma' ;">
                                    <pre>
 Our GSTIN No : 29AAACO6540J1Z8
 PO No        : 200311000002
 PO Date      : 2020-05-05<br><br><b>
 Delivery Address :<br>
<font style="word-wrap:break-word;"> <%=shipto%> </font><br><br><b>
 Contact Per  : <%=contact_person%>
 Phone No     : <%=contact_no%>
 
                                                </pre>
                                                </div>                                    
                                                </td>
                                                </tr>
                                                </table>
                                                <Br>
                                                <Br>
                                                <Br>
                                                <table border="1" style="border-collapse: collapse;width: 740px;font-size: 10px;">
                                                    <tr>
                                                        <th colspan="9">Please supply the following materials subject "General Terms & conditions of PO" furnished below and printed overleaf </th>
                                                    </tr>
                                                    <tr>
                                                        <th>S No</th>
                                                        <th>HSN Code</th>
                                                        <th>Description</th>
                                                        <th>UOM</th>
                                                        <th>Qty</th>
                                                        <th>Unit Rate</th>
                                                        <th>Discount</th>
                                                        <th>GST</th>

                                                        <th>Total Value</th>
                                                    </tr>
                                                    <%
                                                        double tot = 0;
                                                        int i = 1;
                                                        double grand_total_tax = 0.0;
                                                        //   ResultSet rs1 = st.executeQuery("select  pm.prf_no,pm.required_date,pm.division,sum(cast (ph.over_all_cost as DECIMAL(9,2)) ) as tot,pm.creator_name,ph.status from prf_master as pm   join prf_history as ph on pm.prf_no=ph.prf_no where ph.status='Open' or ph.status='Partially Closed'  group by pm.prf_no,pm.required_date,pm.division,pm.creator_name,ph.status");
                                                        ResultSet rs1 = st.executeQuery("select HSN_Code,long_des,Make,Color,UOM,Qty,Unit_Rate,Discount,GST,Total from po_history where po_no='" + po_no + "'");
                                                        while (rs1.next()) {
                                                            //                                        unit = rs1.getString(1).substring(0, 3);

                                                            //out.print("test");                                            

                                                    %>  

                                                    <tr >     
                                                        <td align="center"><%=i%></td>
                                                        <td align="center">
                                                            <% out.print(rs1.getString(1)); %>
                                                        </td>
                                                        <th align="left"><%out.print(rs1.getString(2));
                                                            if (!rs1.getString(3).equals("")) {
                                                                out.print("<br>Make : " + rs1.getString(3));
                                                            }
                                                            if (!rs1.getString(4).equals("")) {
                                                                out.print("<br>Color : " + rs1.getString(4));
                                                            }
                                                            %><br><br><br></th>
                                                        <td align="center"><%=rs1.getString(5)%></td>                                          
                                                        <td align="center"><%=rs1.getString(6)%></td>
                                                        <td align="center">
                                                            <%=rs1.getString(7)%>   </td> 


                                                        <td align="center"><%=rs1.getString(8)%></td>                                            
                                                        <%
                                                            int check_gst_header = 0;
                                                            ResultSet rs4 = st2.executeQuery("select cgst,sgst,utgst,igst from hsn_tax where hsn_code='" + rs1.getString(1) + "'");
                                                        %>
                                                        <td align="center">
                                                            <table align="center" style="border: 1px black solid;border-collapse: collapse;">
                                                                <tr>
                                                                    <%  while (rs4.next()) {

                                                                            check_gst_header++;
                                                                        }
                                                                        if (check_gst_header > 0) {
                                                                    %>
                                                                    <th style="border: 1px black dashed;border-collapse: collapse;">GST</th>
                                                                    <th style="border: 1px black dashed;border-collapse: collapse;">Tax Value</th>
                                                                        <%} else { %>
                                                                        <%
                                                                                out.println("0");
                                                                            }
                                                                        %>
                                                                </tr>
                                                                <tr><% ResultSet rs3 = st2.executeQuery("select cgst,sgst,utgst,igst from hsn_tax where hsn_code='" + rs1.getString(1) + "'");
                                                                    %>
                                                                    <%  while (rs3.next()) {

                                                                            double cgst_fin_tax_value = 0.0;
                                                                            double sgst_fin_tax_value = 0.0;
                                                                            double ugst_fin_tax_value = 0.0;
                                                                            double igst_fin_tax_value = 0.0;

                                                                            if (!rs3.getString(1).equals("0")) {

                                                                    %>
                                                                    <td align="center" style="border: 1px black dashed;border-collapse: collapse;">CGST-<%=rs3.getString(1)%>%</td>
                                                                    <td align="center" style="border: 1px black dashed;border-collapse: collapse;"><%
                                                                        double cgst_unit, cgst_qty, cgst_tax_per = 0.0;
                                                                        cgst_unit = Double.parseDouble(rs1.getString(6));
                                                                        cgst_qty = Double.parseDouble(rs1.getString(7));
                                                                        cgst_tax_per = Double.parseDouble(rs3.getString(1));
                                                                        cgst_fin_tax_value = ((cgst_unit * cgst_qty) - (Double.parseDouble(rs1.getString(8))));
                                                                        cgst_fin_tax_value = (cgst_fin_tax_value * cgst_tax_per / 100);
                                                                        out.print(cgst_fin_tax_value);
//                                                                        out.print(unit);
                                                                        %>

                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <% }
                                                                        if (!rs3.getString(2).equals("0")) {

                                                                    %>
                                                                    <td align="center" style="border: 1px black dashed;border-collapse: collapse;">SGST-<%=rs3.getString(2)%>%</td>
                                                                    <td align="center" style="border: 1px black dashed;border-collapse: collapse;"><%
                                                                        double sgst_unit, sgst_qty, sgst_tax_per = 0.0;
                                                                        sgst_unit = Double.parseDouble(rs1.getString(6));
                                                                        sgst_qty = Double.parseDouble(rs1.getString(7));
                                                                        sgst_tax_per = Double.parseDouble(rs3.getString(2));
                                                                        sgst_fin_tax_value = ((sgst_unit * sgst_qty) - (Double.parseDouble(rs1.getString(8))));
                                                                        sgst_fin_tax_value = (sgst_fin_tax_value * sgst_tax_per / 100);
                                                                        out.print(sgst_fin_tax_value);
                                                                        %></td>
                                                                </tr>

                                                                <%
                                                                    }
                                                                    if (!rs3.getString(3).equals("0")) {

                                                                %>
                                                                <tr>
                                                                    <td align="center" style="border: 1px black dashed;border-collapse: collapse;">UTGST-<%=rs3.getString(3)%>%</td>
                                                                    <td align="center" style="border: 1px black dashed;border-collapse: collapse;"><%
                                                                        double ugst_unit, ugst_qty, ugst_tax_per = 0.0;
                                                                        ugst_unit = Double.parseDouble(rs1.getString(6));
                                                                        ugst_qty = Double.parseDouble(rs1.getString(7));
                                                                        ugst_tax_per = Double.parseDouble(rs3.getString(3));
                                                                        ugst_fin_tax_value = ((ugst_unit * ugst_qty) - (Double.parseDouble(rs1.getString(8))));
                                                                        ugst_fin_tax_value = (ugst_fin_tax_value * ugst_tax_per / 100);
                                                                        out.print(ugst_fin_tax_value);
                                                                        %></td>
                                                                </tr>
                                                                <%
                                                                    }
                                                                    if (!rs3.getString(4).equals("0")) {

                                                                %>
                                                                <tr>
                                                                    <td align="center" style="border: 1px black dashed;border-collapse: collapse;">IGST-<%=rs3.getString(4)%>%</td>
                                                                    <td align="center" style="border: 1px black dashed;border-collapse: collapse;"><%

                                                                        double igst_unit, igst_qty, igst_tax_per = 0.0;
                                                                        igst_unit = Double.parseDouble(rs1.getString(6));
                                                                        igst_qty = Double.parseDouble(rs1.getString(7));
                                                                        igst_tax_per = Double.parseDouble(rs3.getString(4));
                                                                        igst_fin_tax_value = ((igst_unit * igst_qty) - (Double.parseDouble(rs1.getString(8))));
                                                                        igst_fin_tax_value = (igst_fin_tax_value * igst_tax_per / 100);
                                                                        out.print(igst_fin_tax_value);
                                                                        %></td>
                                                                </tr>

                                                                <%
                                                                    }%>
                                                                <tr>
                                                                    <th align="center" style="border: 1px black dashed;border-collapse: collapse;">Totals Tax Amount</th><td align="center" style="border: 1px black dashed;border-collapse: collapse;"><%=cgst_fin_tax_value + sgst_fin_tax_value + igst_fin_tax_value + ugst_fin_tax_value%></td>
                                                                </tr>
                                                                <% grand_total_tax = grand_total_tax + cgst_fin_tax_value + sgst_fin_tax_value + igst_fin_tax_value + ugst_fin_tax_value;
                                                                    }
                                                                %>
                                                    </tr>

                                                </table>

                                                </td>


                                                <td align="right"><%=rs1.getString(10)%>.00</td>            

                                                </tr>
                                                <% tot = Double.parseDouble(rs1.getString(10)) + tot;
                                                        //                            }
                                                        i++;
                                                    }
                                                %> 
                                                <!--<tr>-->
                                                <%ResultSet re = st.executeQuery("select other_charge,value1 from po_other_charges where po_no='" + po_no + "' ");
                                                    while (re.next()) {
                                                %><tr>
                                                    <td colspan="6"></td>
                                                    <td colspan="2" align="left"><%=re.getString(1)%></td>
                                                    <td align="right"><%=re.getString(2)%>.00</td>
                                                </tr>
                                                <%
                                                        tot = Integer.parseInt(re.getString(2)) + tot;
                                                    }
                                                %>
                                                <!--</tr>-->
                                                <tr style="border-top: 1px;border-top-color: black;">
                                                    <td colspan="9"><br><br></td>
                                                </tr>
                                                <tr>
                                                    <th align="left" rowspan="2" colspan="6" ><%
                                                        Double d = new Double(tot);
                                                        int i1 = d.intValue();
                                                        word.Words_Convert conve = new word.Words_Convert();

                                                        out.print("<b>" + "In Words :  Rupees  " + conve.NumberToWords(i1) + " only</b>");
                                                        %></th>
                                                    <th colspan="2" align="right">Gst</th>
                                                    <!--<th align="right"><% //out.print(Math.round((tot * (10 / 100))));%>.00</th>-->
                                                    <th align="right"><%out.print(Math.round(grand_total_tax));%>.00</th>
                                                </tr>
                                                <tr>

                                                    <th colspan="2" align="right"> Total  </th>
                                                    <th align="right"><%=tot%>.00</th>

                                                    <th></th>
                                                </tr>
                                                </table>
                                                </div>    
                                                </div>
                                                <div class="page">

                                                    <div class="subpage" style=" font: 10pt 'Times New Roman'">

                                                        <table style="width:740px;">
                                                            <%ResultSet rs = st.executeQuery("select term , terms from po_other_terms where po_no='" + po_no + "' ");

                                                                String ter = "";
                                                                while (rs.next()) {
                                                            %>
                                                            <tr> <th align="left" valign="top" style="white-space: nowrap;"><%
                                                                if (ter.equals(rs.getString(1))) {

                                                                } else {
                                                                    ter = rs.getString(1);
                                                                    out.print(ter.toUpperCase() + " : <br><br>");
                                                                }
                                                                    %></th><td><%=rs.getString(2)%></td>
                                                            </tr>
                                                            <%
                                                                }
                                                            %>

                                                        </table>

                                                        <pre><b><u>Terms & Conditions</u></b></pre>

Ø  Any new taxes / duties /cess / levies imposed by Central or State govts during the order/ contract period will be to your account and will not be borne by Ocean Lifespaces India Private Limited.<br>					
Ø   Material should be supplied as per specification / Mockup / Sample approved by Architect / Client.Ø   Material should be supplied as per specification / Mockup / Sample approved by Architect / Client.	<br>				
Ø       Any variations in size / quality /appearance will not be acceptable and it will be replaced without any additional cost and time.Ø       Any variations in size / quality /appearance will not be acceptable and it will be replaced without any additional cost and time.					
<br>Ø E-Way Bill should be attached along with Invoice to allowed the vehicle inside the site premises.					
<br>Ø   Test / Warranty /LEED/ Green Certificate should be submitted along with material to the site & original certificate should be sent to Head office.					
<br>Ø As per QEHS requirement, the vehicles supplied with goods, employee’s owned vehicles, service vehicles such as staff transport vehicle, staff two wheelers, etc., which ever entering to the Ocean (OLSIPL-Site) premises should have the following valid documents					
<br><ul><li>1. Emission test certificate (Pollution under control).					</li>
<li>2. Driving License of the driver.					</li>
<li>3. Fitness certificate of the Vehicle.					</li>
<li>4. Safety Equipments such as Helmet for Two Wheeler, Safety Belt for Car Etc.,				</li>	
<li>5. All the vehicles should be driven as per the speed limit rules which prescribed at the site location.</li>					
<li>6. The delivering vehicles should not have any oil spillage at the site.					</li>
<li>7. All the hazardous material should be supplied along with the MSDS.					</li>
<li>8. Avoid using plastic materials In case, of usage ensure the plastic should be used more than 50 micron.</li></ul>					
<br>Ø The human resources providing service vendor - should ensure that all the contract employees should have medical examination whom carry out the activities should follow all the safety regulations / Ensure to wear all the applicable PPE’s which well-equipped one.					
<br>Ø If the material supplied are not in accordance with the agreed specifications and desired quality it shall be liable for rejection and the rejected item shall be replaced at your own risk & cost with in the agreed delivery time. you shall also ensure that the quantities are verified as per actuals at site before proceeding on the manufacturing & delivery and any variations in the quantities with respect to issued drawings shall be brought to the attention of our Project Managers/ Consultants.					
<br>Ø External Service Provider must comply with the requirements in the Ocean Life-Space India Private Limite, material requirements, PO Conditions, as well as ISO 9001, ISO 14001 and BS OHSAS 18001, or an Ocean approved BOQ / Indent. The materials supplied to Ocean are to be packed with eco-friendly packing (50 Micron) materials and also comply towards Ocean LifeSpace India Private Limited IMS policy requirements					
<br>Ø   All the material shall be confirmed with the IS & Architect specifications. 					
<br>Ø   Kindly mention our GSTIN No. 29AAACO6540J1Z8 & Purchase order number in your invoice.					

<br>
<br>
<br>

For Ocean Life Spaces India Pvt Ltd
<br>
<br>
<br>

<table style="width:740px;">
    <th>Authorized Signatory</th><th> Checked by</th><th> Verified by</th><th> Prepared by</th></td>
</table>
</div>    
    </div>
</div>
    </body>
</html>
