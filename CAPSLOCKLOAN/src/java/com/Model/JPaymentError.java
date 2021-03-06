package com.Model;
import java.sql.SQLException;
import java.util.Date;
import java.text.*;
import java.sql.ResultSet;
import java.text.DecimalFormat;

/**
 *
 * @author Chelsea
 */
public class JPaymentError extends JDBFunctions {
    
    public int PaymentID;
    public Integer LoanID;
    public double AmountPaid;
    public Date DatePaid;
    public String PaymentMethod;
    public String ErrorDesc;
    private ResultSet resultSet = null;
    
    public String insert() throws SQLException
    {
        String sql;
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-mm-dd");
        sql = "Insert into PaymentError(LoanID, AmountPaid, DatePaid, PaymentMethod, ErrorDesc) values("
                + LoanID + ", "
                + AmountPaid + ", "
                + "'" + sf.format(DatePaid) + "', "
                + "'" + PaymentMethod + "', "
                + "'" + ErrorDesc + "'"
                + ")"
                ;
            try
            {
                execute(sql);
            }
            catch(SQLException e)
            {
                System.out.println("JPayment: " + e);
            }
        return sql;
    }
    
    public String getPaymentList(Integer pLoanID) throws Exception
    {
        String sql;
        String style = "<style>td.tdname {width:190px;}</style>";
        String style2 = "<style>td.tddate {width:150px;}</style>";
        String style3 = "<style>td.tdamount {width:150px;}</style>";
        String style4 = "<style>td.tdconf {width:150px;}</style>";
        String html = style + style2 + style3 + style4 + "<table>";
        html = html + "<tr><th><h4>Date</h4></th><th><h4>Amount</h4></th><th><h4>Method</h4></th><th><h4>Confirmation No.</h4></th></tr>";
        
        DecimalFormat df = new DecimalFormat("0.00");
        
        sql = "SELECT DatePaid, AmountPaid, PaymentMethod, ConfirmationNo FROM Payments " + 
        "WHERE LoanID = " + pLoanID.toString();
        try
        {
            resultSet = select(sql);
            while(resultSet.next())
            {
                html = html + "<tr>";
                html = html + "<td class =\"tddate\">" + new SimpleDateFormat("MM/dd/yyyy").format(resultSet.getDate("DatePaid")) + "</td>";
                html = html + "<td class =\"tdamount\">" + "$" + df.format(Double.parseDouble(resultSet.getString("AmountPaid"))) + "</td>";
                html = html + "<td class =\"tdname\">" + resultSet.getString("PaymentMethod") + "</td>";
                html = html + "<td class =\"tdconf\">" + resultSet.getString("ConfirmationNo") + "</td>";
                html = html + "</tr>";
            }
            html = html + "</table>";
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return html;
    }
  
}
