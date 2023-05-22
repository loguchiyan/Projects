/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Selva
 */
import org.jfree.chart.ChartPanel;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.ui.ApplicationFrame;
import org.jfree.ui.RefineryUtilities;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

public class LineChart1 extends ApplicationFrame {

   public LineChart1( String applicationTitle , String chartTitle ) {
      super(applicationTitle);
      JFreeChart lineChart = ChartFactory.createLineChart(
         chartTitle,
         "Review Strength Length","Mining Time(s)",
         createDataset(),
         PlotOrientation.VERTICAL,
         true,true,false);
         
      ChartPanel chartPanel = new ChartPanel( lineChart );
      chartPanel.setPreferredSize( new java.awt.Dimension( 560 , 367 ) );
      setContentPane( chartPanel );
   }

   private DefaultCategoryDataset createDataset( ) {
      DefaultCategoryDataset dataset = new DefaultCategoryDataset( );
      
      String c1 = "18";
     // String c2 = "10";
      String c3 = "22";
     // String c4 = "30";
      String c5 = "28";
     // String c6 = "50";
      String c7 = "34";
    //  String c8 = "70";
      //String c9 = "50";
      
     String series1 = "";
      
       
      dataset.addValue( 12 , series1 , c1 );
      //dataset.addValue( 25 , series1 , c2 );
      dataset.addValue( 6 , series1 , c3 );
     // dataset.addValue( 44 , series1 , c4 );
      dataset.addValue( 8 , series1 , c5 );
     // dataset.addValue( 62 , series1 , c6 );
      dataset.addValue( 7 , series1 , c7 );
     // dataset.addValue( 76 , series1 , c8 );
     
    
     
      
      return dataset;
   }
   
   public static void main( String[ ] args ) {
      
       LineChart1 chart = new LineChart1("Performance Evaluation" , "");
      chart.pack( );
      RefineryUtilities.centerFrameOnScreen( chart );
      chart.setVisible( true ); 
      
     
      
   }
}
