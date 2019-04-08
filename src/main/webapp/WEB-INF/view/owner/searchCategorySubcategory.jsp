<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f"%>

<c:set var="list" value="${catList}"></c:set>
<c:set var="len" value="${f:length(list)}"></c:set>

[
<c:forEach var="i" items="${catList}" varStatus="j">
{
"category_name":"${i.subcategoryname}",
"category_id":"${i.subcategoryid}"
}

<c:if test="${len ne j.count}">,</c:if>
</c:forEach>
]



