<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<div class="row">
	<form method="get">
		<table class="pull-right">
			<tr>
				<td><select class="form-control" name="searchType">
						<option value="n" <c:out value="${scri.searchType == null ? 'selected' : '' }" />>선택</option>
						<option value="userId" <c:out value="${scri.searchType eq 'userId' ? 'selected' : '' }" />>회원명</option>
				</select></td>
				<td><input type="text" class="form-control"	placeholder="검색어 입력" name="keyword" maxlength="100" value="${scri.keyword }"></td>
				<td><button id="searchBtn" class="btn btn-success" style="background-color: rgb(37, 214, 179);">검색</button></td>
			</tr>
		</table>
	</form>
</div>
