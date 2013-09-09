<!DOCTYPE html>

<html>
<%@ page import="java.sql.*"%>

<head>
    <title>Fuse | Collaboration made simple</title>
    <link href="css/dropzone.css" rel="stylesheet" type="text/css">
    <link href="css/demo.css" rel="stylesheet" type="text/css">
    <script src=
    "http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <script src="js/dropzone.min.js"></script>
    <link href="css/component.css" rel="stylesheet" type="text/css">
    <!--  Sidebar CSS -->
    <link href="css/sidebar_css/sidebar_normalize.css" rel="stylesheet" type=
    "text/css">
    <link href="css/sidebar_css/sidebar_demo.css" rel="stylesheet" type=
    "text/css">
    <link href="css/sidebar_css/sidebar_icons.css" rel="stylesheet" type=
    "text/css">
    <link href="css/sidebar_css/sidebar_component.css" rel="stylesheet" type=
    "text/css"><!-- top button -->
    <link href="css/topbutton_css/component.css" rel="stylesheet" type=
    "text/css">
    <script src="js/sidebar_js/modernizr.custom.js"></script>
</head>

<body>
    <%

            
            
    String a=request.getParameter("a");


    String[] first_name = a.split("\\s+");

    session.setAttribute( "theName", first_name[0] );

    %><script></script> <!-- Sidebar -->

    <div class="st-container" id="st-container">
        <!-- content push wrapper -->

        <div class="st-pusher">
            <nav class="st-menu st-effect-3" id="menu-3">
                <h2 class="icon icon-settings" style="color:white">
                <%=first_name[0]%></h2>

                <ul>
                    <li>
                        <a class=" icon icon-cloud" href="#">Files</a>
                    </li>

                    <li>
                        <a class=" icon icon-camera" href=
                        "video_index.jsp">Conference (Beta)</a>
                    </li>

                    <li>
                        <a class=" icon icon-pen" href="chat2.jsp">Chat</a>
                    </li>

                    <li>
                        <a class=" icon icon-wallet" href=
                        "https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=http://10.104.24.211:8080">
                        Sign Out</a>
                    </li>
                </ul>
            </nav>
            <!-- ******************* top button push effect ***************** -->
            <!--
 
 <div class=" demo-5">  
<div class="main clearfix">
<div id="dl-menu" class="dl-menuwrapper">
          <div id="st-trigger-effects">
                <button class="dl-trigger" data-effect="st-effect-3" title="Open Menu">Push</button>
    </div>
</div>
</div>
</div>

-->
            <!-- ******************* top button push effect ENDS ***************** -->

            <div id="st-trigger-effects">
                <button data-effect="st-effect-3" title=
                "Open Menu">Menu</button>
            </div><!-- Sidebar -->

            <div class="container">
                <header>
                    <h1><span class="slow">Fuse</span></h1><br>

                    <h2>Collaboration made simple</h2>
                </header>
            </div>

            <form action="UploadServlet" class="dropzone" enctype=
            "multipart/form-data" method="post"></form>

            <form action="ListFiles" id="form1" method="post" name="form1">
                <section class="color-2">
                    <p style="text-align:center;"><button class=
                    "btn btn-2 btn-2h" onclick=
                    "document.getElementById('form1').submit();">View
                    Files</button></p>
                </section><!--
<input type="submit" value="view files">
-->
            </form>
        </div><!-- /st-pusher -->
    </div><!-- /st-container -->
    <script src="js/sidebar_js/sidebar_classie.js"></script> <script src="js/sidebar_js/sidebar_sidebarEffects.js"></script> <!-- Top button js -->
</body>
</html>
