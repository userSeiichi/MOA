<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="../include/head.jsp" %>
<%@ include file="../include/plugin_js.jsp" %>
<body id="page-top">
  <!-- Page Wrapper -->
   <div id="wrapper">
      <!-- Sidebar -->
      <%@ include file="../include/sidebar.jsp" %>
      
       <!-- Content Wrapper -->
       <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
        
        <!-- Topbar -->
  		<%@ include file="../include/topbar.jsp" %>
               
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">회원조회 페이지</h1>
                    <p class="mb-4">이 페이지에는 회원가입한 일반인들의 정보가 들어있습니다. <a target="_blank"
                            href="https://datatables.net">절대로 악용해서는 안됩니다</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">회원명부</h6>
						</div>
                        <div class="card-body">
                            <div class="table-responsive">
								<nav class="navbar navbar-expand-lg navbar-light bg-white">
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" name="optionsRadios"
											id="optionsRadios1" checked="checked"
											onclick="location.href='/userAll'"> 전체회원
										</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label class="form-check-label">
											<input type="radio" class="form-check-input"
											name="optionsRadios" id="optionsRadios1"
											onclick="location.href='/userDeleteAll'"> 탈퇴회원
										</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label class="form-check-label">
											<input type="radio" class="form-check-input"
											name="optionsRadios" id="optionsRadios1"
											onclick="location.href='/userBlackAll'"> 블랙리스트
										</label>
									</div>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<div class="row">
										<form method="post" name="search" action="searchbbs.jsp">
											<table class="pull-right">
												<tr>
													<td><select class="form-control" name="searchField">
															<option value="0">선택</option>
															<option value="bbsTitle">제목</option>
															<option value="userID">작성자</option>
													</select></td>
													<td><input type="text" class="form-control"
														placeholder="검색어 입력" name="searchText" maxlength="100"></td>
													<td><button type="submit" class="btn btn-success" style="background-color: rgb(37, 214, 179);">검색</button></td>
												</tr>

											</table>
										</form>
									</div>
								</nav>
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>연락처</th>
                                            <th>포인트</th>
                                            <th>등급</th>
                                            <th>가입일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="IMHDTO" items="${list }">
                                        <tr>
                                            <td><a href="/userOne?userId=${IMHDTO.userId}"><b>${IMHDTO.userId }</b></a></td>
                                            <td>${IMHDTO.userName }</td>
                                            <td>${IMHDTO.userPhone }</td>
                                            <td>${IMHDTO.userPoint }</td>
                                            <td>${IMHDTO.userGrade }</td>
                                            <td>${IMHDTO.userJoindate }</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <!-- 
								<div>
									<ul class="pagination">
										<c:if test="${prev }">
											<li class="page-item"><a class="page-link" style="background-color: rgb(37, 214, 179); color: white;" href="/listPage?num=${startPage - 1 }">Previous</a></li>
										</c:if>
								
										<c:forEach begin="${startPage }" end="${endPage }" var="num">
											<li class="page-item">
												<a class="page-link" href="/listPage?num=${num }">${num }</a>
											</li>
										</c:forEach>
								
										<c:if test="${next }">
											<li class="page-item"><a class="page-link" style="background-color: rgb(37, 214, 179); color: white;" href="/listPage?num=${endPage + 1 }">Next</a></li>
										</c:if>
									</ul>
								</div>
                                 -->
								<div>
									<ul class="pagination">
										<c:if test="${pageMaker.prev }">
											<li class="page-item"><a class="page-link" style="background-color: rgb(37, 214, 179); color: white;" href="/listPage?num=${pageMaker.startPage - 1 }">Previous</a></li>
										</c:if>
								
										<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
											<li class="page-item">
												<a class="page-link" href="/listPage?num=${num }">${num }</a>
											</li>
										</c:forEach>
								
										<c:if test="${pageMaker.next }">
											<li class="page-item"><a class="page-link" style="background-color: rgb(37, 214, 179); color: white;" href="/listPage?num=${pageMaker.endPage + 1 }">Next</a></li>
										</c:if>
									</ul>
								</div>
							</div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <%@ include file="../include/footer.jsp" %>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <%@ include file="../include/scrollTop_button.jsp" %>


</body>
</html>