<%@include file="header.jsp" %>
<section>
    <h1>Checkout a book</h1>
    <form action="murach" method="post">
        <div class="col-md-6">
            <input type="hidden" name="action" value="doRegisterComic"/>
            
            <div class="mb-3">
                <label>Title:</label>
                
                <input type="text" name="title" class="form-control"
                    value="${comicBooks.Title}" required/><br>
            </div>
            
            <div class="mb-3">
                <label>Publisher</label>
                
                <input type="text" name="publisher" class="form-control"
                    value="${comicBooks.Publisher}" required/><br>
            </div>
            
            <div class="mb-3">
                <label>Author:</label>
                
                <input type="text" name="author" class="form-control"
                    value="${comicBooks.Author}" required/><br>
            </div>
            
            <div class="mb-3">
                <label>Illustrator:</label>
                
                <input type="text" name="illustrator" class="form-control"
                    value="${comicBooks.Illustrator}" required/><br>
            </div>
            
            <div class="mb-3">
                <label>Issue #</label>
                
                <input type="text" name="issue" class="form-control"
                    value="${comicBooks.Issue}" required/><br>
            </div>
            
            <div class="mb-3">
                <label>Location</label>
                
                <input type="text" name="location" class="form-control"
                    value="${comicBooks.Location}" required/><br>
            </div>
            
            <div class="mb-3">
                <label>Price</label>
                
                <input type="text" name="price" class="form-control"
                    value="${comicBooks.Price}" required/><br>
            </div>
            
            <label>&nbsp;</label>
            <input type="submit" value="Register"/><br>
        </div>
    </form>
</section>
</body>
</html>
