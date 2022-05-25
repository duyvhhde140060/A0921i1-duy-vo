import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductDiscountCalculatorSeverlet",urlPatterns = "/result")
public class ProductDiscountCalculatorSeverlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String n1 = request.getParameter("ProductDescription");
        int n2 = Integer.parseInt(request.getParameter("ListPrice"));
        int n3 = Integer.parseInt(request.getParameter("iscountPercent"));
        double n4 = n2 * n3*0.01;
        request.setAttribute("result",n4);
        request.setAttribute("detail",n1);
        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request,response);
    }
}
