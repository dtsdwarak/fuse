package fuse;
import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ListFiles extends HttpServlet {
    public static ArrayList < String > names = new ArrayList < String > ();
    public static int x = 2;
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, java.io.IOException {
        req.setAttribute("list", names);
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        // Directory path here
        String relpath = "files/";
        String path = getServletContext().getRealPath(relpath);
        String files;
        File folder = new File(path);
        File[] listOfFiles = folder.listFiles();
        names = new ArrayList < String > ();
        for (int i = 0; i < listOfFiles.length; i++) {
            if (listOfFiles[i].isFile()) {
                files = listOfFiles[i].getName();
                if (!names.contains(files)) {
                    names.add(files);
                }
                out.println(names.get(i) + "<br>");
            }
        }
        req.getRequestDispatcher("view-files.jsp").forward(req, res);
    }
}
