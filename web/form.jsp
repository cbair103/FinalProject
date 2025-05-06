<%@include file="header.jsp" %>
<section>
    <h1>Checkout a book</h1>
    <form action="murach" method="post">
        <input type="hidden" name="action" value="doRegisterComic"/>
        <label>Title:</label>
        <input type="text" name="title"
               value="${comicBooks.Title}" required/><br>
        <label>Publisher</label>
        <input type="text" name="publisher"
               value="${comicBooks.Publisher}" required/><br>
        <label>Author:</label>
        <input type="text" name="author"
               value="${comicBooks.Author}" required/><br>
        <label>Illustrator:</label>
        <input type="text" name="illustrator" 
               value="${comicBooks.Illustrator}" required/><br>
        <label>Issue #</label>
        <input type="number" name="issue" 
               value="${comicBooks.Issue}" required/><br>
        <label>Location</label>
        <input type="text" name="location" 
               value="${comicBooks.Location}" required/><br>
        <label>Price</label>
        <input type="number" name="price" 
               value="${comicBooks.Price}" required/><br>
        <label>&nbsp;</label>
        <input type="submit" value="Register"/><br>
    </form>
</section>
</body>
</html>
