<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<section>
    <h1>Future Value Calculator</h1>

    <label>Investment Amount:</label>
    <span><c:out value="${investment}"/></span><br />

    <label>Yearly Interest Rate:</label>
    <span><c:out value="${interestRate}"/></span><br />

    <label>Number of Years:</label>
    <span><c:out value="${years}"/></span><br />

    <label>Future Value:</label>
    <span>${interestRate * years + investment}</span><br />
    <table>
        <thead>
           <tr>
                <th>Year</th>
                <th>Value</th>
            </tr> 
        </thead>
        <tbody>
            <c:forEach var="item" items="${calculations}">
 
                <tr>
                    <td><c:out value="${item.years}" /></td>
                </tr>
                <tr>
                    <td><c:out value="${item.yearlyInterestRate * item.years + item.monthlyInvestmentAmount}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <label>&nbsp;</label>
    <span><a href="index.jsp">Return to Calculator</a></span>
</section>
<%@include file="footer.jsp" %>
