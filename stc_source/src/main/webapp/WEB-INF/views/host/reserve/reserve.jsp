<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 - 내 예약 관리</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<body>
<section>
<%@ include file="/WEB-INF/views/module/header2.jsp" %>
<input type="hidden" class="form-control" name="memId" value="${pageContext.request.userPrincipal.name}">
<!-- Start page header --> 
<div class="slider-area" >
            <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <div class="">
                            <form action="" class="form-inline">
                                <div class="form-group">                                   
                                    <select name="selectedProNum" id="selectedProNum" class="form-control" title="내 공간 목록">
										<c:forEach items="${reserveVo}" var="product"> 	
				                        	<option value="${product.proNum }" >${product.proName }</option>
										</c:forEach>
                                    </select>
                                </div>
                            </form>
                        </div>
                    </div>                    
                </div>
<!-- End page header -->

	
	


<!-- 테이블구역 -->
		<div class="container" style="color: black; margin-top: 40px;">
		<table class="table table-striped">
			<thead>
				<tr>
					<th colspan="1" class="text-center">신청날짜</th>
					<th colspan="1" class="text-center">이용날짜</th>
					<th colspan="4" class="text-center">공간이름</th>
					<th colspan="1" class="text-center">관리</th>					
				</tr>
			</thead>
			<tbody>
			
			<c:forEach items="${reserveVo}" var="product">				
				<tr>
					<td colspan="1" class="text-center" value="${product.regDate }">${product.regDate }</td>
					<td colspan="1" class="text-center" value="${product.rsvDate }">${product.rsvDate }</td>
					<td colspan="4" class="text-center"><a href="#" onClick="moveReserveCheck('${product.regDate }', '${product.proNum }', '${product.memId }');">${product.proName}</a></td>					
					<td colspan="1" class="text-center" class="text-center"><button class="btn delete-btn">취소하기</button></td>
				</tr>
			</c:forEach>				
			</tbody>
		</table>
	</div>

	

		<!-- 페이징  -->
	<div class="col-md-12 clear">
		<div class="text-center">
			<div class="pagination">
				<ul>
					<li><a href="#">Prev</a></li>
					<c:forEach begin="${pageInfo.startPage }"
						end="${pageInfo.endPage }" var="page">
						<li><a href="#">${page }</a></li>
					</c:forEach>
					<li><a href="#">Next</a></li>
				</ul>
			</div>
		</div>
	</div>
	</div>
	</div>


</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>

<script>
	function moveReserveCheck(regDate, proNum, memId) {    
		console.log(regDate + " " + memId);
		// 날짜, 시간, 인원, 총가격 객체 생성
		const rsvData = {
			rsvDate: '',
			rsvTime: '',
			rsvPerson: 0,
			rsvAmount: 0,
    		regDate: regDate,
		    proNum : proNum,
		    memId : memId
		};
	
		console.log("객체생성:", rsvData);
	
		
		// rsvData 직렬화, 서버 전송
		var jsonData = JSON.stringify(rsvData);
		
		$.ajax({
			  url: '${pageContext.request.contextPath}/reserve/reserveinfo',
			  type: 'post',
			  contentType: "application/json; charset=utf-8",
			  data: jsonData,
			  success: function(result) {
				  console.log(result);
				  location.href='${pageContext.request.contextPath}/reserve/reserveinfo?';
				  location.href='${pageContext.request.contextPath}/reserve/reserveinfo?regDate='+regDate+'&proNum='+proNum+'&memId='+memId+'&state='+1; 
				  },
			  error: function(error){
				  alert(error.errorMsg);
				  },
			  beforeSend : function(xhr){
				  xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
				  }
	      });  //$.ajax({
	}  //moveReserveCheck(){
</script>

</body>
</html>