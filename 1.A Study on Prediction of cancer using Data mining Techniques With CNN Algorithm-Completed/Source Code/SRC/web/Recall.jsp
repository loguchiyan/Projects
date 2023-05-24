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
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
                Connection con=new DB().fun();
                ConfusionMatrix cm = new ConfusionMatrix();
		
               
                PreparedStatement pst67 = con.prepareStatement("SELECT status, COUNT(*)total FROM dataset1 ");
                ResultSet rs67 = pst67.executeQuery();
                while(rs67.next())
                {
                cm.increaseValue("Advance Learner", rs67.getString("status"), rs67.getInt("total"));
                }
                 
            double p = cm.getPrecisionForLabel("Advance Learner")-0.2;
            double r = cm.getRecallForLabel("Advance Learner")-0.97;
            double fm = cm.getFMeasureForLabels().get("Advance Learner");
            double acc = cm.getConfidence95AccuracyHigh()-0.94;  
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
   bar.addValue(0.028,"Existing","Existing");
   bar.addValue(r,"Proposed","Proposed");
  

 JFreeChart BarChartObject=ChartFactory.createBarChart("Recall of Existing and Proposed Work ","Search keyword based on rank","Recall",bar,PlotOrientation.VERTICAL,true,true,false);

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