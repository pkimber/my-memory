TLS
***

See:
http://www.postfix.org/TLS_README.html#quick-start

::

  testbox1 root # /etc/ssl/misc/CA.pl -newca
  CA certificate filename (or enter to create)

::

  Making CA certificate ...
  Generating a 1024 bit RSA private key
  ...............................++++++
  .....................................++++++
  writing new private key to './demoCA/private/cakey.pem'
  Enter PEM pass phrase:
  Verifying - Enter PEM pass phrase:
  ...
  You are about to be asked to enter information that will be incorporated
  into your certificate request.
  What you are about to enter is what is called a Distinguished Name or a DN.
  There are quite a few fields but you can leave some blank
  For some fields there will be a default value,
  If you enter '.', the field will be left blank.
  ...
  Country Name (2 letter code) [AU]:UK
  State or Province Name (full name) [Some-State]:Devon
  Locality Name (eg, city) []:Okehampton
  Organization Name (eg, company) [Internet Widgits Pty Ltd]:PKOpen
  Organizational Unit Name (eg, section) []:
  Common Name (eg, YOUR name) []:Patrick
  Email Address []:me@mail.com

::

  testbox1 root # ls -l /root/demoCA/private/cakey.pem
  -rw-r--r--  1 root root 963 Feb 12 11:13 /root/demoCA/private/cakey.pem

