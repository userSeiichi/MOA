<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<div>
	<ul class="pagination">
		<c:if test="${pageMaker.prev }">
			<li class="page-item"><a class="page-link"	style="background-color: rgb(37, 214, 179); color: white;"
				href="/userAll?page=${pageMaker.startPage - 1 }">Previous</a></li>
		</c:if>

		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"	var="page">
			<li class="page-item"><a class="page-link"	href="/userAll?page=${page }">${page }</a></li>
		</c:forEach>

		<c:if test="${pageMaker.next }">
			<li class="page-item"><a class="page-link" style="background-color: rgb(37, 214, 179); color: white;"
				href="/userAll?page=${pageMaker.endPage + 1 }">Next</a></li>
		</c:if>
	</ul>
</div>
