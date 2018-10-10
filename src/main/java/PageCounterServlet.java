import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PageCountServlet", urlPatterns = "/count")
public class PageCounterServlet extends HttpServlet {
    int pageCount = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ++pageCount;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("Page has been visited " + pageCount + "times.");
    }
    // Create a page view counter
    // Create a page that displays a number that goes up by 1
    // every time the /count page is viewed

}