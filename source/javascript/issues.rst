Issues
******

Embedded
========

I had some JavaScript embedded in an html page.  The html page was sent as an
email and in the process it was converted into a single line.

To solve the issue, move the JavaScript to an external web server and link to
it from the page.

The JavaScript contained a single line comment (``//``).  Because the
JavaScript had been converted into a single line, the comment effectively
removed all the following lines.
