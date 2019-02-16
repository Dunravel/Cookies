package pl.sda.cookies;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/CookieCreate")
public class CookieCreateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameterValues("cookie-name")[0];
        String value = req.getParameterValues("cookie-value")[0];
        if(name != null && value != null) {
            Cookie cookie = new Cookie(name,value);
            cookie.setMaxAge(1*60*60);
            resp.addCookie(cookie);

            req.getRequestDispatcher("/cookieAdded.jsp").forward(req,resp);
        }
    }
}
