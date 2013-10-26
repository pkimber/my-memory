ActiveX
*******

Links
=====

`ATL Tutorial`_

Debug
=====

- Internet Explorer, Debugging, :doc:`internet-explorer`.

Installer
=========

Check
-----

To check if a control is installed:

- The Active X object will be added to the page using HTML code like this:

  ::

    <body>
        <object id="VoucherPrintControl" classid="CLSID:E118AC28-7ADC-4EED-B363-905B99702C42"></object>
    </body>

- The following JavaScript calls a method on the control to see if it is
  installed (or not):

  ::

    $(document).ready(function() {
        if (voucherPrintControlIsInstalled()) {
            $('#active_x_status').text('Active X Control: Installed!!!');
        } else {
            $('#active_x_status').text('Active X Control: NOT INSTALLED!');
        }
    });


    function voucherPrintControlIsInstalled()
    {
        result = document.voucherPrintControl.UserId;
        return result >= 0;
    }


.. _`ATL Tutorial`: http://msdn.microsoft.com/en-us/library/599w5e7x(VS.80).aspx

