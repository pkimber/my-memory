File Upload Progress
********************

These snippets are not fully tested... or fully working... but thought they
might be useful:

Links
=====

- http://djangosnippets.org/snippets/678/
  Upload progress handler using cache framework.
- http://djangosnippets.org/snippets/679/
  Ajax progress bar.

Method
======

- Create a file upload handler:

  ::

    """
    Copied from:
    http://djangosnippets.org/snippets/678/
    """
    from django.core.files.uploadhandler import FileUploadHandler
    from django.core.cache import cache

    class UploadProgressCachedHandler(FileUploadHandler):
        """
        Tracks progress for file uploads.
        The http post request must contain a header or query parameter, 'X-Progress-ID'
        which should contain a unique string to identify the upload to be tracked.

        Copied from:
        http://djangosnippets.org/snippets/678/

        See views.py for upload_progress function...
        """

        def __init__(self, request=None):
            super(UploadProgressCachedHandler, self).__init__(request)
            self.progress_id = None
            self.cache_key = None

        def handle_raw_input(self, input_data, META, content_length, boundary, encoding=None):
            self.content_length = content_length
            if 'X-Progress-ID' in self.request.GET :
                self.progress_id = self.request.GET['X-Progress-ID']
            elif 'X-Progress-ID' in self.request.META:
                self.progress_id = self.request.META['X-Progress-ID']
            if self.progress_id:
                self.cache_key = "%s_%s" % (self.request.META['REMOTE_ADDR'], self.progress_id )
                cache.set(self.cache_key, {
                    'length': self.content_length,
                    'uploaded' : 0
                })

        def new_file(self, field_name, file_name, content_type, content_length, charset=None):
            pass

        def receive_data_chunk(self, raw_data, start):
            if self.cache_key:
                data = cache.get(self.cache_key)
                data['uploaded'] += self.chunk_size
                cache.set(self.cache_key, data)
            return raw_data

        def file_complete(self, file_size):
            pass

        def upload_complete(self):
            if self.cache_key:
                cache.delete(self.cache_key)

- Add the ``UploadProgressCachedHandler`` to your ``settings.py`` file:

  ::

    from django.conf import global_settings
    FILE_UPLOAD_HANDLERS = ('utils.upload.UploadProgressCachedHandler', ) + \
        global_settings.FILE_UPLOAD_HANDLERS

- Create a view to report progress on file uploads:

  ::

    from django.core.cache import cache
    from django.http import HttpResponse, HttpResponseServerError

    def upload_progress(request):
        """
        A view to report back on upload progress.
        Return JSON object with information about the progress of an upload.

        Copied from:
        http://djangosnippets.org/snippets/678/

        See upload.py for file upload handler.
        """
        #import ipdb
        #ipdb.set_trace()
        progress_id = ''
        if 'X-Progress-ID' in request.GET:
            progress_id = request.GET['X-Progress-ID']
        elif 'X-Progress-ID' in request.META:
            progress_id = request.META['X-Progress-ID']
        if progress_id:
            from django.utils import simplejson
            cache_key = "%s_%s" % (request.META['REMOTE_ADDR'], progress_id)
            data = cache.get(cache_key)
            return HttpResponse(simplejson.dumps(data))
        else:
            return HttpResponseServerError(
                'Server Error: You must provide X-Progress-ID header or query param.')

- Add the ``upload_progress`` view to ``urls.py``:

  ::

    url(r'^admin/upload_progress/$',
        'utils.views.upload_progress',
        name="admin-upload-progress"),

- In your template file:

  ::


    {% block extra-head %}
        <script type="text/javascript" >
            // Generate 32 char random uuid 
            function gen_uuid() {
                var uuid = ""
                for (var i=0; i < 32; i++) {
                    uuid += Math.floor(Math.random() * 16).toString(16); 
                }
                return uuid
            }

            // Add upload progress for multipart forms.
            $(function() {
                /*
                This throws a syntax error...
                $('form[@enctype=multipart/form-data]').submit(function(){
                */
                $('#upload').submit(function(){
                    // Prevent multiple submits
                    if ($.data(this, 'submitted')) return false;

                    var freq = 1000; // freqency of update in ms
                    var uuid = gen_uuid(); // id for this upload so we can fetch progress info.
                    var progress_url = '/feature/admin/upload_progress/'; // ajax view serving progress info

                    // Append X-Progress-ID uuid form action
                    this.action += (this.action.indexOf('?') == -1 ? '?' : '&') + 'X-Progress-ID=' + uuid;

                    var $progress = $('<div id="upload-progress" class="upload-progress"></div>').
                        appendTo(document.body).append('<div class="progress-container"><span class="progress-info">uploading 0%</span><div class="progress-bar"></div></div>');

                    // progress bar position
                    $progress.css({
                        position: ($.browser.msie && $.browser.version < 7 )? 'absolute' : 'fixed',  
                        left: '50%', marginLeft: 0-($progress.width()/2), bottom: '20%'
                    }).show();

                    // Update progress bar
                    function update_progress_info() {
                        $progress.show();
                        $.getJSON(progress_url, {'X-Progress-ID': uuid}, function(data, status){
                            if (data) {
                                var progress = parseInt(data.uploaded) / parseInt(data.length);
                                var width = $progress.find('.progress-container').width()
                                var progress_width = width * progress;
                                $progress.find('.progress-bar').width(progress_width);
                                $progress.find('.progress-info').text('uploading ' + parseInt(progress*100) + '%');
                            }
                            window.setTimeout(update_progress_info, freq);
                        });
                    };
                    window.setTimeout(update_progress_info, freq);

                    $.data(this, 'submitted', true); // mark form as submitted.
                });
            });
        </script>
    {% endblock %}

    {% block content %}
        <form id='upload' action="." enctype="multipart/form-data" method="POST">
            <table>
                {{ form.as_table }}
            </table>
            <p><input type="submit" value="Submit"></p>
        </form>
    {% endblock %}

