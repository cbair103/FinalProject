<%@include file="header.jsp" %>
<section>
    <h1>Checkout a book</h1>
    <form action="murach" method="post">
        <input type="hidden" name="action" value="doCheckout"/>
        <label>Title:</label>
        <input type="text" name="title"
               value="${checkout.title}" required/><br>
        <label>Publisher</label>
        <input type="text" name="publisher"
               value="${checkout.publisher}" required/><br>
        <label>Author:</label>
        <input type="text" name="author"
               value="${checkout.author}" required/><br>
        <label>Illustrator:</label>
        <input type="text" name="illustrator" 
               value="${checkout.illustrator}" required/><br>
        <label>Issue #</label>
        <input type="text" name="issue" 
               value="${checkout.issue}" required/><br>
        <label>Location</label>
        <input type="text" name="location" 
               value="${checkout.location}" required/><br>
        <label>Price</label>
        <input type="text" name="price" 
               value="${checkout.price}" required/><br>
        <label>&nbsp;</label>
        <input type="submit" value="Checkout"/><br>
    </form>
</section>
</body>
</html>
