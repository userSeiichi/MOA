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
                    <h1 class="h3 mb-2 text-gray-800">회원정보 수정 페이지</h1>
                    <p class="mb-4">이 페이지에는 회원가입한 일반인들의 정보가 들어있습니다. <a target="_blank"
                            href="https://datatables.net">절대로 악용해서는 안됩니다</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">${imhDTO.getUserName() } 회원정보</h6>
                        </div>
                        <form action="/userUpdate" method="post">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>비밀번호</th>
                                            <th>이름</th>
                                            <th>닉네임</th>
                                            <th>연락처</th>
                                            <th>주소</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                           	<td><input type="text" name="userId" class="form-control" value="${imhDTO.userId }" readonly="readonly" /></td>
                                           	<td><input type="text" name="userPassword" class="form-control" value="${imhDTO.userPassword }" readonly="readonly" /></td>
                                           	<td><input type="text" name="userName" class="form-control" value="${imhDTO.userName }" readonly="readonly" /></td>
                                           	<td><input type="text" name="userNickname" class="form-control" value="${imhDTO.userNickname }" readonly="readonly" /></td>
                                           	<td><input type="text" name="userPhone" class="form-control" value="${imhDTO.userPhone }" readonly="readonly" /></td>
                                           	<td><input type="text" name="userAddress" class="form-control" value="${imhDTO.userAddress }" readonly="readonly" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>쿠폰</th>
                                            <th>포인트</th>
                                            <th>등급</th>
                                            <th>누적 구매액</th>
                                            <th>가입일</th>
                                            <th>탈퇴여부</th>
                                            <th>탈퇴일</th>
                                            <th>블랙리스트</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                           	<td><input type="text" name="userCoupon" class="form-control" value="${imhDTO.userCoupon }" /></td>
                                           	<td><input type="text" name="userPoint" class="form-control" value="${imhDTO.userPoint }" /></td>
                                           	<td><input type="text" name="userGrade" class="form-control" value="${imhDTO.userGrade }" /></td>
                                           	<td><input type="text" name="userTotalPrice" class="form-control" value="${imhDTO.userTotalPrice }" readonly="readonly" /></td>
                                           	<td><input type="text" name="userJoindate" class="form-control" value="${imhDTO.userJoindate }" readonly="readonly" /></td>
                                           	<td><input type="text" name="userState" class="form-control" value="${imhDTO.userState }" readonly="readonly" /></td>
                                           	<td><input type="text" name="userDropdate" class="form-control" value="${imhDTO.userDropdate }" readonly="readonly" /></td>
                                           	<td><input type="text" name="userBlacklist" class="form-control" value="${imhDTO.userBlacklist }" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <button style="background-color: rgb(37, 214, 179); border: none;" class="btn btn-warning" type="submit">수정완료</button>
                        </div>
						</form>
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