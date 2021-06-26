package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 855474
 */
public class ShoppingListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // create session object
        HttpSession session = request.getSession();
        // grabs the username of the client
        String username = (String) session.getAttribute("user_name");
        if (request.getParameter("logout") != null) {
            // invalidates session then 
            // unbinds any objects attached
            session.invalidate();
            // send the user to the register page
            response.sendRedirect("ShoppingList");
        }
        else if (username == null || username.equals("")) {
            // Display the register page
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        } else {
            // Display the shopping list page
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // create session object
        HttpSession session = request.getSession();
        // grabs the username from the input field
        String username = request.getParameter("input_username");
        // determines if register button is clicked by user
        if (request.getParameter("register_Button") != null) {
            if (username != null || !username.equals("")) {
                session.setAttribute("user_name", username);
                // send the user to the shopping list page
                response.sendRedirect("ShoppingList");
            } else {
                // indicate improper input by toggling attribute
                request.setAttribute("valid_username", false);
                // send the user to the register page
                response.sendRedirect("ShoppingList");
            }
        }
    }
}
