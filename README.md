Fuse
====

Fuse is a Collaboration software Framework.

1. Import fuse.sql into your SQL DB. ==> mysql -u root -p fuse<fuse.sql; Use mysql db connector. Else database access to MySQL DB won't be possible.
2. Change MYSQL Access Passwords in db.jsp, dbcheck.java to your MySQL database and passwords.
3. Set your reference filepath to appropriate folder with access permissions in UploadServlet.java as "String path"; (e.g. : private String filePath = "/var/lib/tomcat7/webapps/ROOT/files/"; ) and compile using commons-fileupload-1.3.jar and commons-io-2.4.jar in WEB-INF/lib/
4. Give relative path in ListFiles.java
5. You'll need to modify the Google Login to enable client access to the server you host Fuse. Replace Client_ID in index.html to your Google+ OAuth 2.0 API Access Key. [More information here] 
6. Try to run the app from ROOT folder of your Servlet Engine. Google doesn't allow access from subfolders of the Engine.
7. Replace the IP Address of the FUSE home page the place where you host in 
chat2.jsp, index.jsp, view-files.jsp, video_index.jsp. 


Dwarak
-
http://www.dwarak.in

*Free Software, Hell Yeah!*

  [More information here]: https://developers.google.com/+/quickstart/javascript



