Blobs
*****

Size
====

::

  SELECT
    id,
    OCTET_LENGTH(file_data)
  FROM attachments
  LIMIT 10

