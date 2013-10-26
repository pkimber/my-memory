SSL
***

Mailing List
============

[JBoss Seam] - Re: SSL Security in seam
---------------------------------------

Seam doesn't support SSL directly, rather it supports *scheme* switching,
i.e. switching between HTTP and HTTPS requests for different pages in your app.
To set up SSL, I recommend using Apache HTTPD with SSL in front of
JBoss/Tomcat, using the mod_jk (JK 1.2) Tomcat connector.

View the original post:
http://www.jboss.com/index.html?module=bb&op=viewtopic&p=4060207#4060207

