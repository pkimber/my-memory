Text
****

Wrap
====

``fold`` - wrap each input line to fit in specified width

::

  -s, --spaces
        break at spaces

  -w, --width=WIDTH
        use WIDTH columns instead of 80

Sample
------

::

  fold -sw 60 input.txt > output.txt

::

  for i in *.txt
  do
    fold -sw 65 $i > $i.output
  done
