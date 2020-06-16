/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rma;

import db.db_connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author AV-IT-PC428
 */
@WebServlet(name = "insert_rma_2", urlPatterns = {"/insert_rma_2"})
public class insert_rma_2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        try {
            String access = (String) session.getAttribute("access");
            String team = (String) session.getAttribute("team");
            String username = (String) session.getAttribute("username");
            
            db_connection obj = new db_connection();
            Connection con = obj.getConnection();
            Statement st = con.createStatement();

//            java.util.Date utilDate = new java.util.Date();
//            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
//            java.util.Date date = new java.util.Date();
//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//            String added_date = sdf.format(date);
            DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date dateobj = new Date();
            String currDate = df.format(dateobj);

            ///////////////////////////
            int m1 = 0;
            int y1 = 0;
            
            Date date = new Date();
//            String strDateFormat = "M";
            String strDateFormat = "MM";
            SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);

//            sdf = new SimpleDateFormat(strDateFormat);
            String mymonth = (sdf.format(date));
            m1 = Integer.parseInt(mymonth);
            String strDateFormat1 = "yy";
            SimpleDateFormat sdf1 = new SimpleDateFormat(strDateFormat1);
            String myyear = (sdf1.format(date));
            y1 = Integer.parseInt(myyear);
            
            DateFormat formatter = new SimpleDateFormat("yyyy/MM");
            String today1 = formatter.format(date);

//            out.print(mymonth);
//            out.print(myyear);
//            out.print(m1);
//            out.print(y1);
            //////////////////////////////////////////
            int a = 0, b = 0,c = 0;
            String serial_no_check = "";
            String serial_no_nos = request.getParameter("nos");
//            out.print(serial_no_nos);
            String[] unit_serial = request.getParameterValues("a");
            String[] customer_ref = request.getParameterValues("b");
            String[] prb_des = request.getParameterValues("c");
            String[] failure_type = request.getParameterValues("d");
            String[] rma_req_date = request.getParameterValues("e");
            String[] plant = request.getParameterValues("f");
            String[] cutomer_name = request.getParameterValues("g");
            String[] product_part = request.getParameterValues("h");
            String[] product_part_name = request.getParameterValues("i");
            String[] production_order = request.getParameterValues("j");
            String[] lot_no = request.getParameterValues("k");
            String[] invoice_no = request.getParameterValues("l");
            String[] shipment_date = request.getParameterValues("m");
            
            ArrayList arrli_unit_serial_1 = new ArrayList();
            ArrayList arrli_customer_ref_1 = new ArrayList();
            ArrayList arrli_prb_des_1 = new ArrayList();
            ArrayList arrli_failure_type_1 = new ArrayList();
            ArrayList arrli_rma_req_date_1 = new ArrayList();
            ArrayList arrli_plant_1 = new ArrayList();
            ArrayList arrli_cutomer_name_1 = new ArrayList();
            ArrayList arrli_product_part_1 = new ArrayList();
            ArrayList arrli_product_part_name_1 = new ArrayList();
            ArrayList arrli_production_order_1 = new ArrayList();
            ArrayList arrli_lot_no_1 = new ArrayList();
            ArrayList arrli_invoice_no_1 = new ArrayList();
            ArrayList arrli_shipment_date_1 = new ArrayList();
            
            ArrayList arr_li_indixes = new ArrayList();                 //get the index of the non duplication  

//            out.print("hiii");
            List<String> myList_check_unit_ser_dup = new ArrayList<String>();
            
            for (int i = 0; i < unit_serial.length; i++) {
                myList_check_unit_ser_dup.add(unit_serial[i]);
            }

            //duplication checking *** START *** 
            String index = null;
            String unitserialno_check="";
            int temp = 0;
            for (int i = 0; i < myList_check_unit_ser_dup.size(); i++) {
                
                index = myList_check_unit_ser_dup.get(i);
                temp = i;
                for (int j = 0; j < myList_check_unit_ser_dup.size(); j++) {
                    if (i != j) {
                        if (index.equals(myList_check_unit_ser_dup.get(j))) {
                            index = null;
                            temp = -1;
                            response.setContentType("text/html");
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Duplicate Serial_no  " + unit_serial[i] + "');");
                            out.println("</script>");
                            break;
                        }
                    }
//                    ResultSet rs_check_unit_serialno_dup=st.executeQuery("select unit_serial_no from new_rma_trakcer where unit_serial_no='"+ myList_check_unit_ser_dup.get(i)+"');
//                    while(rs_check_unit_serialno_dup.next()){
//                        unitserialno_check=rs_check_unit_serialno_dup.getString(1);
//                    }
                }
                if (index != null) {
                    
                    arr_li_indixes.add(temp);
                }
            }
//            out.println(arr_li_indixes);
            //duplication checking *** END *** 

            for (int j = 0; j < arr_li_indixes.size(); j++) {
                int temp_;
                temp = (int) arr_li_indixes.get(j);
//                out.print(unit_serial[temp]);

                arrli_unit_serial_1.add(unit_serial[temp]);
                arrli_customer_ref_1.add(customer_ref[temp]);
                arrli_prb_des_1.add(prb_des[temp]);
                arrli_failure_type_1.add(failure_type[temp]);
                arrli_rma_req_date_1.add(rma_req_date[temp]);
                arrli_plant_1.add(plant[temp]);
                arrli_cutomer_name_1.add(cutomer_name[temp]);
                arrli_product_part_1.add(product_part[temp]);
                arrli_product_part_name_1.add(product_part_name[temp]);
                arrli_production_order_1.add(production_order[temp]);
                arrli_lot_no_1.add(lot_no[temp]);
                arrli_invoice_no_1.add(invoice_no[temp]);
                arrli_shipment_date_1.add(shipment_date[temp]);
            }
//            out.println("<br> unit_serial_no=" + arrli_unit_serial_1);
//            out.println("<br>ustomer_ref=" + arrli_customer_ref_1);
//            out.println("<br>prod_desc=" + arrli_prb_des_1);
//            out.println("<br>failour_type=" + arrli_failure_type_1);
//            out.println("<br>rma_req_dt=" + arrli_rma_req_date_1);
//            out.println("<br>plant=" + arrli_plant_1);
//            out.println("<br>cust_name=" + arrli_cutomer_name_1);
//            out.println("<br>part_no=" + arrli_product_part_1);
//            out.println("<br>part_name=" + arrli_product_part_name_1);
//            out.println("<br>po=" + arrli_production_order_1);
//            out.println("<br>lot_no=" + arrli_lot_no_1);
//            out.println("<br>inv no=" + arrli_invoice_no_1);
//            out.println("<br>ship_dt=" + arrli_shipment_date_1);

            List<String> part_no_list = new ArrayList<String>();
            List<String> cust_list = new ArrayList<String>();
            for (int k = 0; k < arrli_product_part_1.size(); k++) {
                part_no_list.add((String) arrli_product_part_1.get(k));
                cust_list.add((String) arrli_cutomer_name_1.get(k));
            }
            response.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('" + part_no_list + "');");
//                out.write("setTimeout(function(){window.location.href='New_rma_ro.jsp'},1);");
            out.println("</script>");
            
            Map<String, Integer> duplicates = new HashMap<String, Integer>();
            for (String str : part_no_list) {
                if (duplicates.containsKey(str)) {
                    duplicates.put(str, duplicates.get(str) + 1);
                } else {
                    duplicates.put(str, 1);
                }
            }
//            int rma = 0;

//master insert but not insert on customer name  ***  START ***
//            out.println(entry.getKey() + " = " + entry.getValue());
            String test = "", rm = "RMA";
            String month1 = "";
            int min1 = 0;
            int key_in = 0;
            String rma = "", rma_no = "";
            int ab = 0;
            int m = 0;
            
            for (Map.Entry<String, Integer> entry : duplicates.entrySet()) {
                ResultSet rs1 = st.executeQuery("select rma_no from new_rma_master order by id");
                while (rs1.next()) {
                    rma = rs1.getString(1);
                    ab++;
                    m++;
                }
                
                if (ab > 0) {
                    rma_no = rma.substring(rma.length() - 3, rma.length());
                    key_in = Integer.parseInt(rma_no);
                    key_in++;
                    test = String.valueOf(key_in);
                    if (test.length() < 3) {
                        int j = test.length();
                        for (int i1 = j; i1 < 3; i1++) {
                            test = "0" + test;
                        }
                        rma_no = rm + "-" + myyear + mymonth + "-" + test;
                    }
                } else {
                    rma_no = rm + "-" + myyear + mymonth + "-" + "001";
                }
                out.println(entry.getKey() + " = " + entry.getValue() + "rma=" + rma_no);
                
                PreparedStatement ps1 = con.prepareStatement("insert into new_rma_master(rma_no,part_no,customer_name,serial_no_qty,added_by,added_date)values(?,?,?,?,?,?)");
                ps1.setString(1, rma_no);
                ps1.setString(2, entry.getKey());
                ps1.setString(3, "");
                ps1.setInt(4, entry.getValue());
                ps1.setString(5, username);
                ps1.setString(6, currDate);
                b = ps1.executeUpdate();
            }

//master insert but not insert on customer name  ***  END ***
            for (int n = 0; n < arrli_product_part_1.size(); n++) {
                String Mast_rma = "";
                
                ResultSet rs_get_rma_no = st.executeQuery("SELECT `rma_no` FROM `new_rma_master` WHERE part_no='" + arrli_product_part_1.get(n) + "'");
                while (rs_get_rma_no.next()) {
                    Mast_rma = rs_get_rma_no.getString(1);
                    
                }
//                response.setContentType("text/html");
//                out.println("<script type=\"text/javascript\">");
//                out.println("alert('" + Mast_rma + "');");
////                out.write("setTimeout(function(){window.location.href='New_rma_ro.jsp'},1);");
//                out.println("</script>");

                PreparedStatement ps = con.prepareStatement("insert into new_rma_tracker(rma_no,unit_serial_no,customer_ref,prob_description,failure_type,rma_req_date,plant,customer_name,product_part,product_part_name,production_order,lot_no,invoice_no,shipment_date,status,added_by,added_date)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, Mast_rma);
                ps.setString(2, (String) arrli_unit_serial_1.get(n));
                ps.setString(3, (String) arrli_customer_ref_1.get(n));
                ps.setString(4, (String) arrli_prb_des_1.get(n));
                ps.setString(5, (String) arrli_failure_type_1.get(n));
                ps.setString(6, (String) arrli_rma_req_date_1.get(n));
                ps.setString(7, (String) arrli_plant_1.get(n));
                ps.setString(8, (String) arrli_cutomer_name_1.get(n));
                ps.setString(9, (String) arrli_product_part_1.get(n));
                ps.setString(10, (String) arrli_product_part_name_1.get(n));
                ps.setString(11, (String) arrli_production_order_1.get(n));
                ps.setString(12, (String) arrli_lot_no_1.get(n));
                ps.setString(13, (String) arrli_lot_no_1.get(n));
                ps.setString(14, (String) arrli_shipment_date_1.get(n));
                ps.setString(15, "Open");
                ps.setString(16, username);
                ps.setString(17, currDate);
                a = ps.executeUpdate();
                
                
               PreparedStatement ps2 = con.prepareStatement("update new_rma_master set customer_name=? where rma_no='"+ Mast_rma+"'  and part_no='"+ arrli_product_part_1.get(n)+"'");
               ps2.setString(1,(String) arrli_customer_ref_1.get(n));
               c=ps2.executeUpdate();
                
                
                
            }

            if (b > 0 && a > 0 && c > 0) {
                response.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('RMA Data Inserted successfuly!!!');");
                out.write("setTimeout(function(){window.location.href='New_rma_ro.jsp'},1);");
                out.println("</script>");
            } else {
                response.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('RMA Data Not Inserted!!!');");
                out.write("setTimeout(function(){window.location.href='New_rma_ro.jsp'},1);");
                out.println("</script>");
            }
//master insert    *** START ***
//            for (int k = 0; k < arrli_product_part_1.size(); k++) {
//                response.setContentType("text/html");
//                out.println("<script type=\"text/javascript\">");
//                out.println("alert('" + arrli_product_part_1.get(k) + "');");
////                out.write("setTimeout(function(){window.location.href='New_rma_ro.jsp'},1);");
//                out.println("</script>");
//            }
//master insert    *** END ***
//            int s = 0;
//            String get_rma_no = "", get_part_no = "";
//            for (int y = 0; y < arrli_product_part_1.size(); y++) {
//                ResultSet rs_get_rmano = st.executeQuery("select rma_no from new_rma_tracker where product_part='" + arrli_product_part_1.get(y) + "'");
//                while (rs_get_rmano.next()) {
//                    get_rma_no = rs_get_rmano.getString(1);
//                }
//                out.print("<br>----getrmano--->"+get_rma_no);
//                ResultSet rs_get_partno = st.executeQuery("select product_part from new_rma_tracker where product_part='" + arrli_product_part_1.get(y) + "'");
//                while (rs_get_partno.next()) {
//                    get_part_no = rs_get_partno.getString(1);
//                    s++;
//                }
//                out.print("<br>----getpartno--->"+get_part_no);
//                if (s > 0) {
//                    String test = "", rm = "RMA";
//                    String month1 = "";
//                    int min1 = 0;
//                    int key_in = 0;
//                    String rma = "", rma_no = "";
//                    int ab = 0;
//                    int m = 0;
//                    ResultSet rs1 = st.executeQuery("select rma_no from new_rma_tracker order by id");
//                    while (rs1.next()) {
//                        rma = rs1.getString(1);
//                        ab++;
//                        m++;
//                    }
//
//                    if (ab > 0) {
//                        rma_no = rma.substring(rma.length() - 3, rma.length());
//                        key_in = Integer.parseInt(rma_no);
//                        key_in++;
//                        test = String.valueOf(key_in);
//                        if (test.length() < 3) {
//                            int j = test.length();
//                            for (int i1 = j; i1 < 3; i1++) {
//                                test = "0" + test;
//                            }
//                            rma_no = rm + "-" + myyear + mymonth + "-" + test;
//                        }
//                    }
////                                    else {
////                                    rma_no = rm + "-" + myyear + mymonth + "-" + "001";
////                                }
//
//                    PreparedStatement ps1 = con.prepareStatement("insert into new_rma_master(rma_no,part_no,customer_name,serial_no_qty,added_by,added_date)values(?,?,?,?,?,?)");
//                    ps1.setString(1, rma_no);
//                    ps1.setString(2, (String) arrli_product_part_1.get(y));
//                    ps1.setString(3, (String) arrli_cutomer_name_1.get(y));
//                    ps1.setString(4, "1");
//                    ps1.setString(5, username);
//                    ps1.setString(6, currDate);
//                    b = ps1.executeUpdate();
//
//                    PreparedStatement ps = con.prepareStatement("insert into new_rma_tracker(rma_no,unit_serial_no,customer_ref,prob_description,failure_type,rma_req_date,plant,customer_name,product_part,product_part_name,production_order,lot_no,invoice_no,shipment_date,status,added_by,added_date)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
//                    ps.setString(1, rma_no);
//                    ps.setString(2, (String) arrli_unit_serial_1.get(y));
//                    ps.setString(3, (String) arrli_customer_ref_1.get(y));
//                    ps.setString(4, (String) arrli_prb_des_1.get(y));
//                    ps.setString(5, (String) arrli_failure_type_1.get(y));
//                    ps.setString(6, (String) arrli_rma_req_date_1.get(y));
//                    ps.setString(7, (String) arrli_plant_1.get(y));
//                    ps.setString(8, (String) arrli_cutomer_name_1.get(y));
//                    ps.setString(9, (String) arrli_product_part_1.get(y));
//                    ps.setString(10, (String) arrli_product_part_name_1.get(y));
//                    ps.setString(11, (String) arrli_production_order_1.get(y));
//                    ps.setString(12, (String) arrli_lot_no_1.get(y));
//                    ps.setString(13, (String) arrli_lot_no_1.get(y));
//                    ps.setString(14, (String) arrli_shipment_date_1.get(y));
//                    ps.setString(15, "Open");
//                    ps.setString(16, username);
//                    ps.setString(17, currDate);
//                    a = ps.executeUpdate();
//                } else {
//                  
//                }
//            }
//            if (a > 0 && b > 0) {
//                response.setContentType("text/html");
//                out.println("<script type=\"text/javascript\">");
//                out.println("alert('RMA Data Inserted successfuly!!!');");
//                out.write("setTimeout(function(){window.location.href='New_rma_ro.jsp'},1);");
//                out.println("</script>");
//            } else {
//                response.setContentType("text/html");
//                out.println("<script type=\"text/javascript\">");
//                out.println("alert('RMA Data Not Inserted!!!');");
//                out.write("setTimeout(function(){window.location.href='New_rma_ro.jsp'},1);");
//                out.println("</script>");
//            }
        } catch (Exception ex) {
            out.print(ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
