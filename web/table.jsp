<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<section>
     private String title;
    private String publisher;
    private String author;
    private String illustrator;
    private String issue;
    private String location;
    private String price;
    
    <h1>Current List of Interested Comic Books</h1>
    <table>
        <tr>
            <th>Title</th>
            <th>Publisher</th>
            <th>Author</th>
            <th>Illustrator</th>
            <th>Issue</th>
            <th>Location</th>
            <th>Price</th>
        </tr>
        <c:forEach var="comicBooks" items="${table}">
            <tr>
                <td>${comicBooks.Title}</td>
                <td>${comicBooks.Publisher}</td>
                <td>${comicBooks.Author}</td>
                <td>${comicBooks.Illustrator}</td>
                <td>${comicBooks.Issue}</td>
                <td>${comicBooks.Location}</td>
                <td>${comicBooks.Price}</td>
            </tr>
        </c:forEach>
    </table>
</section>
<%@include file="footer.jsp" %>
