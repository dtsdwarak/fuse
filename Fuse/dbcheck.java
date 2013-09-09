package fuse;
import java.sql. * ;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class dbcheck extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        String a = request.getParameter("a");
        String b = request.getParameter("b");
        String c = request.getParameter("c");
        String className = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/fuse";
        String user = "root";
        String password = "master";
        //String name= request.getParameter("q");
        //String psw= request.getParameter("text2");
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        Statement s;
        try {
            Class.forName(className);
            con = DriverManager.getConnection(url, user, password);
            //String sql= "SELECT name FROM UserLogin WHERE name = '"+name+"' AND password = '"+psw+"'";
            String sql = "insert into users(name,tag,about) values('" + a + "','" + b + "','" + c + "');";
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        request.getRequestDispatcher("index.jsp?a=" + a).forward(request, response);
    }
}
