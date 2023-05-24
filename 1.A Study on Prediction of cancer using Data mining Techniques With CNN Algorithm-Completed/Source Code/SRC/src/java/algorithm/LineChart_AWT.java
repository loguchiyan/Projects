/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package algorithm;

/**
 *
 * @author ADMIN
 */
import java.io.*;
import java.sql.Connection;
import org.jfree.ui.ApplicationFrame;
import org.jfree.ui.RefineryUtilities;
import org.jfree.chart.JFreeChart; 
import org.jfree.chart.ChartPanel;
import org.jfree.chart.ChartFactory; 
import org.jfree.chart.ChartUtilities; 
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
public class LineChart_AWT extends ApplicationFrame {
    public LineChart_AWT( String applicationTitle , String chartTitle ) {
      super(applicationTitle);
      JFreeChart lineChart = ChartFactory.createLineChart(
         chartTitle,
         "Accuracy in %","",
         createDataset(),
         PlotOrientation.VERTICAL,
         true,true,false);
         
      ChartPanel chartPanel = new ChartPanel( lineChart );
      chartPanel.setPreferredSize( new java.awt.Dimension( 560 , 367 ) );
      setContentPane( chartPanel );
   }

   private DefaultCategoryDataset createDataset( ) {
   
      DefaultCategoryDataset dataset = new DefaultCategoryDataset( );
      dataset.addValue( 0.0 , "Acc" , "0.00" );
      dataset.addValue( 0.2 , "Acc" , "20.00" );
      dataset.addValue( 0.4 , "Acc" , "40.00" );
      dataset.addValue( 0.6 , "Acc" , "60.00" );
      dataset.addValue( 1.0 , "Acc" , "80.00" );
      
     
      
      return dataset;
   }
   
   public static void main( String[ ] args ) {
      LineChart_AWT chart = new LineChart_AWT(
         "Acuracy of Algorithm" ,
         "Accuracy Graph");

      chart.pack( );
      RefineryUtilities.centerFrameOnScreen( chart );
      chart.setVisible( true );
   }
    
}
