Getting Started
***************

Links
=====

- http://jung.sourceforge.net/

Alternatives
------------

- http://www.ubietylab.net/ubigraph/
  UbiGraph is a tool for visualizing dynamic graphs.

Maven
=====

::

  <dependency>
    <groupId>jung</groupId>
    <artifactId>jung</artifactId>
    <version>1.7.6</version>
  </dependency>

Sample
======

::

  package com.sample;

  import java.io.IOException;

  import javax.swing.JFrame;

  import edu.uci.ics.jung.graph.Graph;
  import edu.uci.ics.jung.graph.Vertex;
  import edu.uci.ics.jung.graph.decorators.StringLabeller;
  import edu.uci.ics.jung.graph.decorators.StringLabeller.UniqueLabelException;
  import edu.uci.ics.jung.graph.impl.DirectedSparseGraph;
  import edu.uci.ics.jung.graph.impl.DirectedSparseVertex;
  import edu.uci.ics.jung.visualization.FRLayout;
  import edu.uci.ics.jung.visualization.PluggableRenderer;
  import edu.uci.ics.jung.visualization.VisualizationViewer;

  import edu.uci.ics.jung.graph.impl.DirectedSparseEdge;
  import edu.uci.ics.jung.io.PajekNetWriter;

  public class Sample {

      public static void main(String[] args) throws UniqueLabelException,
              IOException {

          PluggableRenderer renderer = new PluggableRenderer();
          Graph graph = getGraph(renderer);
          FRLayout layout = new FRLayout(graph);
          VisualizationViewer viewer = new VisualizationViewer(layout, renderer);

          JFrame jf = new JFrame();
          jf.getContentPane().add(viewer);
          jf.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
          jf.pack();
          jf.setVisible(true);
      }

      public static Graph getGraph(PluggableRenderer renderer)
              throws UniqueLabelException, IOException {
          Graph graph = new DirectedSparseGraph();
          StringLabeller labeller = StringLabeller.getLabeller(graph);
          renderer.setVertexStringer(labeller);
          addNodes(graph, labeller);

          save(graph, labeller);

          return graph;
      }

      public static void addNodes(Graph graph, StringLabeller labeller)
              throws UniqueLabelException {
          Vertex node1 = graph.addVertex(new DirectedSparseVertex());
          labeller.setLabel(node1, "Joe");
          Vertex node2 = graph.addVertex(new DirectedSparseVertex());
          labeller.setLabel(node2, "Barry");
          Vertex node3 = graph.addVertex(new DirectedSparseVertex());
          labeller.setLabel(node3, "Martin");

          graph.addEdge(new DirectedSparseEdge(node1, node2));
          graph.addEdge(new DirectedSparseEdge(node1, node3));
      }

      public static void save(Graph graph, StringLabeller labeller)
              throws IOException {
          new PajekNetWriter().save(graph, "test-graph.pajek", labeller, null);
      }
  }

