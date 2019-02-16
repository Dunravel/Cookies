package pl.sda.cookies;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CookieDelete")
public class CookieDelete extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        boolean deleted = false;
        for(Cookie cookie : cookies){
            if(cookie.getName().equals(req.getParameter("delete-name"))){
                //System.out.println("Deleting cookie: " + req.getParameter("delete-name"));
                cookie.setMaxAge(0);
                deleted = true;
                resp.addCookie(cookie);
                break;
            }
        }

        req.setAttribute("deleted",deleted);

        req.getRequestDispatcher("/cookieRemoved.jsp").forward(req,resp);
    }
}
