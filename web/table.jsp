<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<section>
    
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
        <c:forEach var="comicBook" items="${table}">
            <tr>
                <td>${comicBook.Title}</td>
                <td>${comicBook.Publisher}</td>
                <td>${comicBook.Author}</td>
                <td>${comicBook.Illustrator}</td>
                <td>${comicBook.Issue}</td>
                <td>${comicBook.Location}</td>
                <td>${comicBook.Price}</td>
            </tr>
        </c:forEach>
    </table>
</section>
<%@include file="footer.jsp" %>
