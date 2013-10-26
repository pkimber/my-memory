Snippets
********

Chart
=====

JFreeChart_

::

  package example.chartprocesser;

  @Name("chartprocesser")
  public class ChartProcesserBean implements  {

      @In
      EntityManager em; // Entity Manager to access the database

      byte[] chart; // chart image (.png) as a byte array

      @Factory(value="chart")
      public void createChart() {
          DefaultCategoryDataset ds = this.getData;
          JFreeChart chart = ChartFactory.createLineChart(
                  "TITLE",
                  "Category Label",
                  "Axis Lable",
                  ds,
                  PlotOrientation.HORIZONTAL,
                  false,
                  false,
                  false
                  );
          try{
              this.chart = ChartUtilities.encodeAsPNG(chart.createBufferedImage(400, 400));
          } catch (IOException e){
              e.printStackTrace();
          }
      }

      private DefaultCategoryDataset getData(){
          //get the data and put into DefaultCategoryDataset
          //Then return it.
      }
  }

Page:

::

  <s:graphicImage value="#{chartprocesser.chart}" />


.. _JFreeChart: http://www.jboss.com/index.html?module=bb&op=viewtopic&p=4067018#4067018

