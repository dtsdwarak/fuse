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
    "text/css">
    <script src="js/sidebar_js/modernizr.custom.js"></script>
</head>

<body>
    <%
        
                
    String a=request.getParameter("a");
    String b=request.getParameter("b");
    String c=request.getParameter("c");

    //SQL Connection
    String d[] = a.split(" ");
    String className= "com.mysql.jdbc.Driver";
    String url= "jdbc:mysql://localhost:3306/fuse";
    String user= "root";
    String password= "master";

    //String name= request.getParameter("q");
    //String psw= request.getParameter("text2");

    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement s;
    try
    {
    Class.forName(className);
    con= DriverManager.getConnection(url, user, password);

    //String sql= "SELECT name FROM UserLogin WHERE name = '"+name+"' AND password = '"+psw+"'";
    String sql= "select * from users where name='"+d[0]+"';";
    ps=con.prepareStatement(sql);

    rs=ps.executeQuery();

    if(rs.next()) {

    request.getRequestDispatcher("index.jsp?a="+a).forward(request, response);

    }


     }
    catch(Exception ex)
    {
    ex.printStackTrace();
    }
            


    %>

    <div class="container">
        <header>
            <h1><span class="slow">Fuse</span></h1><br>

            <h2>Collaboration made simple</h2>
        </header>
    </div>
    <textarea cols="50" readonly rows="5" style=
    "width: 700px; height: 450px; resize: none; font-family: 'Pathway Gothic One', sans-serif; font-size: 20px;">
TERMS AND CONDITIONS


The term "site" and "website" refers to the website 'www.dwarak.in'."General Site Visitors" herein refers to an individual who is browsing this website.

"Business Visitors" herein refers to the individual or company who is/was client of the company and has/had any contractual commitment with the company in the present or past. The App Fuse is owned by http://www.dwarak.in. and holds exclusive rights on the material published on the website. All 3rd Party Business Names, Logo's, Trademarks used in this site are the exclusive property of their respective owners and have been used here just to demonstrate our skill set and/or area of expertise. The site includes several widely recognized technical and non-technical terms. The site wishes to clarify that it does not hold any proprietary ownership on these terminologies, until and unless specified. It also clarifies that these terms are solely being used for information purpose only. All materials present on the site are an exclusive property of Fuse Inc. No material from this site may be copied, reproduced, republished, uploaded, transmitted or distributed in any form without written consent from the company. The visitor must note that any unauthorized use of the materials on the site may violate copyright, trademark and other applicable laws, and could result in criminal or civil penalties.
    

The site is used to portray wide range of Fuse services and doesn't warranty that they will meet your requirements or are completely error free. The site and information published on it is available on "As it is" basis. Fuse reserves the right to discontinue or make changes in any section or web page of the website. Such changes shall be effective immediately. Fuse reserves the right to change Terms and Conditions without any notification in advance.Fuse reserves the right to incorporate some basic details about the project completed, currently in the process or undertake by the company in future to demonstrate its skills. However the company will not publish information of projects accepted under signed NDA.Fuse is not bind to inform Business Visitors in advance before publishing any material, which may be directly or indirectly related to them on the site. In case, Business Visitor finds any objection with the related material, he can contact the company or the site administrator in written to forward his concern. Though, the company wishes to clarify that it is not bind to offer or give any benefit in lieu of his concern. The site has published material like articles/links that may direct you to other sites or web pages. The site wants to clarify that it is being done for information purpose only and is not bind by any contract/interests with these websites/companies to do it.
    

By using any Third Party Content, you may leave this site and shall be directed to an external website, or to a website maintained by an entity other than Fuse. If you decide to visit any such site, you do so at your own risk and it is your responsibility to take all protective measures to guard against viruses or other destructive elements. Fuse makes no warranty or representation regarding, and does not endorse, any linked sites or the information appearing thereon or any of the products or services described thereon.Fuse does not hold any responsibility for system related problems that user may face while browsing or downloading any contents or material from the site. 
    

Fuse is not liable for any kind of damages of any kind, including without limitation direct, incidental or consequential damages (including, but not limited to, damages for lost profits, business interruption and loss of programs or information) arising out of the use of or inability to use Fuse site, or any information provided on the web site. Fuse holds the right to terminate user's access at any time without giving any reason. This is to ensure safety of the site and secure browsing. User's right to privacy is fully catered by the company. Fuse ensures that information provided by General Visitor or Business Visitor will not be shared with any third party or by vested interests.
    

All disputes related to the website/company shall be dealt in the jurisdiction of CHENNAI COURT only.
</textarea><br>

    <form action="dbcheck" id="accept" method="get" name="accept">
        <section class="color-2">
            <button class="btn btn-2 btn-2h" onclick=
            "window.location.replace('https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=http://10.104.24.211:8080')"
            style="position:relative;left:380px;" type=
            "button">Decline</button> <button class="btn btn-2 btn-2h" onclick=
            "document.getElementById('accept').submit();" style=
            "position:relative;left:500px;">Accept</button> <input name="a"
            style="visibility:hidden" type="text" value="<%=a%>"> <input name=
            "b" style="visibility:hidden" type="text" value="<%=b%>">
            <input name="c" style="visibility:hidden" type="text" value=
            "<%=c%>">
        </section>
    </form><script src="js/sidebar_js/sidebar_classie.js"></script> <script src="js/sidebar_js/sidebar_sidebarEffects.js"></script>
</body>
</html>
