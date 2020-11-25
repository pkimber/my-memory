Visual Studio Code
******************

Black
=====

Right click on a document, choose *Format Document*.  When notified, click
*Black*.

.. note:: The line length doesn't work...

To change the line length to 80, *File*, *Preferences*, *Settings*,
search for ``black``:

- You will find *Python - Formatting: Black Args*.
- Click *Edit in settings.json*

Add ``python.formatting.blackArgs`` to 
{
    "window.zoomLevel": -1,
    "window.titleBarStyle": "custom",
    "editor.minimap.enabled": false,
    "python.formatting.blackArgs": ["--line-length", "80"]
}
