geo
***

Links
=====

- http://code.google.com/p/geopy/
- http://exogen.case.edu/projects/geopy/, geocoding toolbox.
- http://www.qgis.org/ (recommended by Marcus)
- https://grass.osgeo.org/ (recommended by Marcus)

Install
=======

::

  easy_install geopy

Sample
======

::

  >>> from geopy import distance
  >>> millhouse = (30.82079429295863, -3.8382625579833984)
  >>> moorview = (30.8301739931749, -4.084231853485107)
  >>> distance.distance(millhouse, moorview).miles
  10.788581582926698
  >>>
  >>> mycompany = (30.529211010033244, -3.603794574737549)
  >>> distance.distance(moorview, mycompany).miles
  29.630815697451709
