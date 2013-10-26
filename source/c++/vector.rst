Vectors
*******

.. highlight:: c++

Sample
======

::

  #include <vector>

      std::vector<long> recordPositions;
      recordPositions.push_back(pos1);
      recordPositions.push_back(pos2);

      std::vector<long>::const_iterator i;
      for(i = recordPositions.begin(); i != recordPositions.end(); ++i)
          pos = *i;

copy
====

Copy the contents of the ``positions`` vector into RecordPositions:

::

  std::copy(positions.begin(), positions.end(), std::back_inserter(RecordPositions));

erase
=====

::

  positions.erase(positions.begin(), positions.end());

find
====

Must have an ``==`` operator defined for the object you are searching for (see
the doc:`class`):

::

  CSLBillList bl;
  bl.BillSerial = 23;
  i = std::find(billList.begin(), billList.end(), bl);
  if(i == billList.end()){
      ...

