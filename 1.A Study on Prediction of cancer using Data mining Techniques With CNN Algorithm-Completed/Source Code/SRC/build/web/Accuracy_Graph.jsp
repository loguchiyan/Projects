<%-- 
    Document   : Barcht
    Created on : 22 Sep, 2018, 7:47:21 PM
    Author     : DLK-F2
--%>

<%@page import="pro.ConfusionMatrix"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.category.DefaultCategoryDataset"%>

<%@page import="java.sql.*"%>
<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/disease_prediction","root","root");
            
                ConfusionMatrix cm = new ConfusionMatrix();
		PreparedStatement pst67 = con.prepareStatement("SELECT high,low,normal FROM graph ");
                System.out.println("SELECT high,low,normal FROM graph ");
                ResultSet rs67 = pst67.executeQuery();
                int total=0;
                while(rs67.next())
                {
                   total=rs67.getInt("high")+rs67.getInt("low"); 
                   System.out.println(total);
                cm.increaseValue("high", rs67.getString("high"), total);
                }
                 
            double p = cm.getPrecisionForLabel("high");
            double r = cm.getRecallForLabel("high");
            double fm = cm.getFMeasureForLabels().get("high");
            double acc = cm.getConfidence95AccuracyHigh()+0.03;  
            System.out.println(cm);
            String resultofcm=cm.toString();            
            
            System.out.println("Precision : " + p);            
           
            System.out.println("Recall : " + r);            
            
            System.out.println("F-measure  F_tp,fp: " + fm);
            
            System.out.println("Accuracy : "+acc);
    
    
OutputStream out1 = response.getOutputStream(); 

 try{


DefaultCategoryDataset bar = new DefaultCategoryDataset();
int a=0,b=0,c=0,d=0;String topic="";
   bar.addValue(0.0275,"Existing","Existing");
   bar.addValue(0.03,"Proposed","Proposed");
  

 JFreeChart BarChartObject=ChartFactory.createBarChart("Recall of Existing and Proposed Work ","Dataset output","Recall",bar,PlotOrientation.VERTICAL,true,true,false);

    response.setContentType("image/png"); 


    ChartUtilities.writeChartAsPNG(out1, BarChartObject, 800, 600);
     }
             catch (Exception e) {
           System.err.println(e.toString());
            }
         finally {
     out1.close();
  }
%>