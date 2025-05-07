package murach.controllers;

import murach.business.ComicBooks;
import murach.data.ComicBookDB;
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
            case "register":
                url = "/form.jsp";
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
        String url = "/index.jsp";
        switch (action) {
            case "doRegisterComic":
                url = doRegisterComic(request, response);
                break;
        }

        getServletContext().getRequestDispatcher(url)
                .forward(request, response);
    }

    private String manage(HttpServletRequest request,
            HttpServletResponse response) {
        List comicBook = ComicBookDB.selectComicBooks();
        request.setAttribute("comicBook", comicBook);
        return "/table.jsp";
    }

    private String doRegisterComic(HttpServletRequest request,
            HttpServletResponse response) {
        ComicBooks comicBooks = new ComicBooks();
        comicBooks.setTitle(request.getParameter("Title"));
        comicBooks.setPublisher(request.getParameter("Publisher"));
        comicBooks.setAuthor(request.getParameter("Author"));
        comicBooks.setIllustrator(request.getParameter("Illustrator"));
        comicBooks.setIssue(request.getParameter("Issue"));
        comicBooks.setLocation(request.getParameter("Location"));
        comicBooks.setPrice(request.getParameter("Price"));

        ComicBookDB.registerComic(comicBooks);
        request.setAttribute("comicBooks", comicBooks);

        return "/table.jsp";
    }


}
