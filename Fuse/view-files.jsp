<!DOCTYPE html>

<html>
<%@ page import="fuse.ListFiles" %>

<head>
    <title>Fuse</title>
    <link href="css/demo.css" rel="stylesheet" type="text/css">
    <link href="css/tipTip.css" rel="stylesheet" type="text/css">
    <script src="js/jquery-1.7.2.min.js"></script>
    <script src="js/grayscale.js"></script>
    <script src="js/jquery.tipTip.js"></script>
    <script type="text/javascript">
$(function(){
    $(".someClass").tipTip();
    }); 
    </script>
</head>

<body>
    <div class="container">
        <header>
            <h1><span class="slow">Fuse</span></h1><br>

            <h2>Collaboration made simple</h2>
        </header>
    </div><% 

        out.println("<div class='item'>");
        for(int i=0;i<ListFiles.names.size();i++)
        {
            
            if(!ListFiles.names.get(i).endsWith("~"))
            {
              String[] filtype=ListFiles.names.get(i).split("\\.");
              String ext=filtype[filtype.length-1];
              out.println("<a class='someClass' title='Download "+ListFiles.names.get(i)+"' href='files/"+ListFiles.names.get(i)+"'><img src='images/icons/"+ext+".png'></a>");
              //out.println("<a href='files/"+ListFiles.names.get(i)+"'>"+ListFiles.names.get(i)+"</a><br>");
            }
            
            //out.println(ListFiles.names.get(i)+"<br>");
            
        }
        
        out.println("</div>");
         %>
</body>
</html>
