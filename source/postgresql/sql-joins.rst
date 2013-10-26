SQL Joins
*********

Left Outer
==========

::

  SELECT
      m.id,
      m.date,
      m.product_qty,
      product_uom.name,
      m.location_id,
      m.location_dest_id,
      m.name,
      m.picking_id,
      m.state
      FROM stock_move m
      LEFT OUTER JOIN product_uom
          ON m.product_uom = product_uom.id
      WHERE
          m.location_id = 12 OR m.location_dest_id = 12
      ORDER BY m.id DESC

