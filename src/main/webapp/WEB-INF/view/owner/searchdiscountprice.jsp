<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f"%>

<c:set var="list" value="${itemdiscountList}"></c:set>
<c:set var="len" value="${f:length(list)}"></c:set>

[
<c:forEach var="i" items="${itemdiscountList}" varStatus="j">{"itemDiscountPrice":"${i.itemDiscountPrice}","itemid":"${i.itemid}"}
<c:if test="${len ne j.count}">,</c:if>
</c:forEach>
]


