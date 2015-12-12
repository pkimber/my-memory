Nuxeo API
*********

.. highlight:: bash

Working through
`How to Upload a File in Nuxeo Platform Using REST API Batch Processing Endpoint`_

.. important:: I am using :doc:`../../../python/modules/httpie` in the following
               example.

Check::

  http -a Administrator:Administrator GET http://localhost:8080/nuxeo/api/v1/

Upload::

  # 1) Get a batchId
  http -a Administrator:Administrator POST http://localhost:8080/nuxeo/api/v1/upload/
  # "batchId": "batchId-1d0c8f62-af51-4c0a-a6e6-98b276f7eccb"

  # 2) Upload a file
  http -a Administrator:Administrator \
    POST http://localhost:8080/nuxeo/api/v1/upload/batchId-1d0c8f62-af51-4c0a-a6e6-98b276f7eccb/0/ \
    "X-File-Name:myFile.doc"
    "X-File-Type:application/msword" < myFile.doc

  # 3) Verify upload
  http -a Administrator:Administrator \
    GET http://localhost:8080/nuxeo/api/v1/upload/batchId-1d0c8f62-af51-4c0a-a6e6-98b276f7eccb/

  # 4) Create a document
  # - I created a new workspace, which contains the following in the browser URL:
  #   /default-domain/workspaces/MyDocuments
  # - I created a 'document.json' file:
  # {
  #     "entity-type": "document",
  #     "name":"myNewDoc",
  #     "type": "File", 
  #     "properties" : {
  #         "dc:title":"My new doc",
  #         "file:content": {
  #             "upload-batch": "batchId-1d0c8f62-af51-4c0a-a6e6-98b276f7eccb",
  #             "upload-fileId": "0"
  #         }
  #     }
  # }
  http -a Administrator:Administrator \
    POST http://localhost:8080/nuxeo/api/v1/path/default-domain/workspaces/MyDocuments/ \
    "Content-Type: application/json" < document.json
  # The document appears in Nuxeo, but not in 'MyDocuments'.
  # I found it by searching.


.. _`How to Upload a File in Nuxeo Platform Using REST API Batch Processing Endpoint`: https://doc.nuxeo.com/display/NXDOC/How+to+Upload+a+File+in+Nuxeo+Platform+Using+REST+API+Batch+Processing+Endpoint
