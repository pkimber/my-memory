Headers, Footers and Landscape
******************************

Landscape
=========

::

  doc = platypus.SimpleDocTemplate(
      f"invoice-{invoice.invoice_number}-summary.pdf",
      title="My Title",
      pagesize=(A4[1], A4[0]),
  )

``SimpleDocTemplate``
=====================

.. note:: Check this recipe first: http://code.activestate.com/recipes/576832/

From
`StackOverflow, ReportLab.Platypus SimpleDocTemplate, date/time in header`_::

  from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer
  from reportlab.lib.styles import getSampleStyleSheet
  from reportlab.rl_config import defaultPageSize
  from reportlab.lib.units import inch
  PAGE_HEIGHT=defaultPageSize[1]; PAGE_WIDTH=defaultPageSize[0]
  styles = getSampleStyleSheet()

  Title = "Hello world"
  pageinfo = "platypus example"
  def myFirstPage(canvas, doc):
      canvas.saveState()
      canvas.setFont('Times-Bold',16)
      canvas.drawCentredString(PAGE_WIDTH/2.0, PAGE_HEIGHT-108, Title)
      canvas.setFont('Times-Roman',9)
      canvas.drawString(inch, 0.75 * inch, "First Page / %s" % pageinfo)
      canvas.restoreState()

  def myLaterPages(canvas, doc):
      canvas.saveState()
      canvas.setFont('Times-Roman',9)
      canvas.drawString(inch, 0.75 * inch, "Page %d %s" % (doc.page, pageinfo))
      canvas.restoreState()

  def go():
      doc = SimpleDocTemplate("phello.pdf")
      Story = [Spacer(1,2*inch)]
      style = styles["Normal"]
      for i in range(100):
          bogustext = ("This is Paragraph number %s. " % i) *20
          p = Paragraph(bogustext, style)
          Story.append(p)
          Story.append(Spacer(1,0.2*inch))
      doc.build(Story, onFirstPage=myFirstPage, onLaterPages=myLaterPages)
      #doc.build(Story)


.. _`StackOverflow, ReportLab.Platypus SimpleDocTemplate, date/time in header`: http://stackoverflow.com/questions/2265976/python-generating-pdf-using-reportlab-platypus-simpledoctemplate-date-time-in
