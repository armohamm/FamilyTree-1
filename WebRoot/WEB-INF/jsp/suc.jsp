<%-- ${u.username}:${u.password}--%>
 <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${users}" var="user">
${user.id }:${user.username}:${user.password}<br />
</c:forEach>
${cnt}