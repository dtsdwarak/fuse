<!DOCTYPE html>

<html>
<head>
    <title>Fuse | Collaboration made simple</title>
    <script src=
    "http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <link href="css/component.css" rel="stylesheet" type="text/css">
    <!--  Sidebar CSS -->
    <link href="css/sidebar_css/sidebar_normalize.css" rel="stylesheet" type=
    "text/css">
    <link href="css/sidebar_css/sidebar_demo.css" rel="stylesheet" type=
    "text/css">
    <link href="css/sidebar_css/sidebar_icons.css" rel="stylesheet" type=
    "text/css">
    <link href="css/sidebar_css/sidebar_component.css" rel="stylesheet" type=
    "text/css">
    <script src="js/sidebar_js/modernizr.custom.js"></script><!-- webrtc js files -->

    <script src="js/chat_js/adapter.js"></script>
    <script src="js/chat_js/jquery-2.0.0.js"></script>
    <script src="js/chat_js/bootstrap.js"></script><!-- webrtc css files -->
    <link href="css/chat_css/serverless-webrtc-bootstrap.css" rel="stylesheet">
    <link href="css/chat_css/bootstrap.css" rel="stylesheet">
    <link href="css/chat_css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/demo.css" rel="stylesheet" type="text/css">
</head>

<body>
    <!-- Sidebar -->

    <div class="st-container" id="st-container">
        <!-- content push wrapper -->

        <div class="st-pusher">
            <nav class="st-menu st-effect-3" id="menu-3">
                <h2 class="icon icon-settings" style="color:white">
                <%= session.getAttribute( "theName" ) %></h2>

                <ul>
                    <li>
                        <a class=" icon icon-cloud" href=
                        "index.jsp?a=%3C%=%20session.getAttribute(">"&gt;Files</a>
                    </li>

                    <li>
                        <a class=" icon icon-camera" href=
                        "video_index.jsp">Conference (Beta)</a>
                    </li>

                    <li>
                        <a class=" icon icon-pen" href="#">Chat</a>
                    </li>

                    <li>
                        <a class=" icon icon-wallet" href=
                        "https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=http://10.104.24.211:8080">
                        Sign Out</a>
                    </li>
                </ul>
            </nav>

            <div id="st-trigger-effects">
                <button class="bootstrap.btn" data-effect="st-effect-3" title=
                "Open Menu">Menu</button>
            </div><!-- Sidebar -->

            <div class="container">
                <header>
                    <h1><span class="slow">Fuse</span></h1><br>

                    <h2>Collaboration made simple</h2>
                </header>
            </div><!--
<input type="submit" value="view files">
-->
            <!-- **************************** WERBTC CHAT CLIENT *************************************** -->

            <div class="span12" style=
            "font-family: 'Pathway Gothic One', sans-serif;">
                <fieldset class="well">
                    <p class="head muted" style=
                    "font-size:30px; text-align:center;">WebRTC Internal
                    Chat</p><br>
                    <br>

                    <div class="text-info" id="chatlog" style=
                    "height:350px; overflow:auto;font-size:20px;"></div>
                </fieldset>

                <form action="" class="form-inline" onsubmit=
                "return sendMessage()">
                    <input id="messageTextBox" placeholder=
                    "Type your message here" type="text"> <button class="btn"
                    id="sendMessageBtn" type="button">Send message</button><br>
                </form>
            </div>

            <div class="modal" data-backdrop="static" hidden="" id=
            "showLocalOffer" style=
            "font-family: 'Pathway Gothic One', sans-serif;" tabindex="-1">
                <div class="modal-header" style="font-size:30px;">
                    <h3 id="myModalLabel">Send your local offer to someone
                    else</h3>
                </div>

                <div class="modal-body" style="font-size:18px;">
                    Here's your "offer" -- it tells someone else how to connect
                    to you. Send the whole thing to them, for example in an
                    instant message or e-mail.<br>
                    <br>
                    <textarea class="input-large" cols="100" id="localOffer"
                    name="localOffer" rows="10">
</textarea>
                </div>

                <div class="modal-footer">
                    <button class="btn btn-primary" data-dismiss="modal" id=
                    "offerSentBtn">Okay, I sent it.</button>
                </div>
            </div>

            <div class="modal" data-backdrop="static" hidden="" id=
            "showLocalAnswer" style=
            "font-family: 'Pathway Gothic One', sans-serif;" tabindex="-1">
                <div class="modal-header" style="font-size:30px;">
                    <h3 id="myModalLabel">Send your local answer to someone
                    else</h3>
                </div>

                <div class="modal-body" style="font-size:18px;">
                    Here's your "answer" -- it tells someone else how to
                    connect to you. Send the whole thing to them, for example
                    in an instant message or e-mail.<br>
                    <textarea class="input-large" cols="100" id="localAnswer"
                    name="localAnswer" rows="10">
</textarea>
                </div>

                <div class="modal-footer">
                    <button class="btn btn-primary" data-dismiss="modal" id=
                    "answerSentBtn">Okay, I sent it.</button>
                </div>
            </div>

            <div class="modal" data-backdrop="static" hidden="" id=
            "getRemoteOffer" style=
            "font-family: 'Pathway Gothic One', sans-serif;" tabindex="-1">
                <div class="modal-header" style="font-size:30px;">
                    <h3 id="myModalLabel">Paste the "offer" you received</h3>
                </div>

                <div class="modal-body" style="font-size:20px;">
                    The person who created the room will send you an "offer"
                    string -- paste it here.<br>
                    <br>
                    <textarea class="input-large" cols="100" id="remoteOffer"
                    name="remoteOffer" rows="10">
</textarea>
                </div>

                <div class="modal-footer">
                    <button class="btn btn-primary" data-dismiss="modal" id=
                    "offerRecdBtn">Okay, I pasted it.</button>
                </div>
            </div>

            <div class="modal" data-backdrop="static" hidden="" id=
            "getRemoteAnswer" style=
            "font-family: 'Pathway Gothic One', sans-serif;" tabindex="-1">
                <div class="modal-header" style="font-size:30px;">
                    <h3 id="myModalLabel">Paste the "answer" you received</h3>
                </div>

                <div class="modal-body" style="font-size:20px;">
                    Now paste in the "answer" that was sent back to you.<br>
                    <br>
                    <textarea class="input-large" cols="100" id="remoteAnswer"
                    name="remoteAnswer" rows="10">
</textarea>
                </div>

                <div class="modal-footer">
                    <button class="btn btn-primary" data-dismiss="modal" id=
                    "answerRecdBtn">Okay, I pasted it.</button>
                </div>
            </div>

            <div class="modal" data-backdrop="static" hidden="" id=
            "waitForConnection" style=
            "font-family: 'Pathway Gothic One', sans-serif;" tabindex="-1">
                <div class="modal-header" style="font-size:30px;">
                    <h3 id="myModalLabel">Waiting for connection</h3>
                </div>

                <div class="modal-body" style="font-size:30px;">
                    This dialog will disappear when a connection is made.
                </div>

                <div class="spinner" style="text-align: center"><img src=
                "images/chat_img/spinner.gif"></div>
            </div>

            <div class="modal" data-backdrop="static" id="createOrJoin" style=
            "font-family: 'Pathway Gothic One', sans-serif;" tabindex="-1">
                <div class="modal-header" style="font-size:30px;">
                    <h3 id="myModalLabel">Create or join a room?</h3>
                </div>

                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" id=
                    "joinBtn">Join</button> <button class="btn btn-primary"
                    data-dismiss="modal" id="createBtn">Create</button>
                </div>
            </div>
            <!-- **************************** WERBTC CHAT CLIENT *************************************** -->
        </div><!-- /st-pusher -->
    </div><!-- /st-container -->
    <script src="js/chat_js/serverless-webrtc.js"></script> <script src="js/chat_js/file-transfer.js"></script> <script src="js/sidebar_js/sidebar_classie.js"></script> <script src="js/sidebar_js/sidebar_sidebarEffects.js"></script> <!-- Top button js -->
</body>
</html>
