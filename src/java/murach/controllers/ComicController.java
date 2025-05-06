package murach.controllers;

import murach.business.ComicBooks;
import murach.data.CheckoutDb;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ComicController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "";
        switch (action) {
            case "checkout":
                url = "/checkout.jsp";
                break;
            case "manage":
                url = manage(request, response);
                break;
        }

        getServletContext().getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "";
        switch (action) {
            case "doCheckout":
                url = doCheckout(request, response);
                break;
        }

        getServletContext().getRequestDispatcher(url)
                .forward(request, response);
    }

    private String manage(HttpServletRequest request,
            HttpServletResponse response) {
        List checkedOutList = ComicBookDb.selectCheckedOutBooks();
        request.setAttribute("checkedOutList", checkedOutList);
        return "/checkedOutList.jsp";
    }

    private String doCheckout(HttpServletRequest request,
            HttpServletResponse response) {
        ComicBooks comicBooks = new ComicBooks();
        checkout.setFirstName(request.getParameter("firstName"));
        checkout.setLastName(request.getParameter("lastName"));
        checkout.setEmailAddress(request.getParameter("emailAddress"));
        checkout.setBookTitle(request.getParameter("bookTitle"));

        CheckoutDb.checkoutBook(checkout);
        request.setAttribute("checkout", checkout);

        return "/thankyou.jsp";
    }


}
