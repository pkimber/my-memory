http
****

URL Encode
==========

::

  import java.net.URLEncoder;

  try {
      return URLEncoder.encode(parameter, "UTF-8");
  } catch (UnsupportedEncodingException e) {
      ...
  }

