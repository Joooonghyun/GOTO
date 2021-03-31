<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/a_sidebar.jsp"%>
<style>
#sub, #rophoto {
	display: none;
}
</style>

<!-- main 시작 -->
<!-- main top 시작-->
<div class="main">
	<section class="breadcrumb-section">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text">
					<h2>관리페이지</h2>
					<div class="breadcrumb-option">
						<span>RoomDetail</span>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- main top 끝 -->

	<!-- main container 시작 -->
	<section class="contact-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6" style="margin-left: auto; margin-right: auto;">
					<div class="row">
						<div class="col-lg-10 offset-lg-1">
							<div class="contact-text">
								<div class="section-title">
									<h2>룸정보</h2>
								</div>
								<form action="RoomModify" method="post" class="contact-form"
									enctype="multipart/form-data">
									<!-- 호텔코드 -->
									<div class="ba-text">
									<input type="hidden" value="${roomDTO.roname }" name="roname" id="roname">
										<label class="breadcrumb-text">호텔 코드</label> <input
											type="text" value="${roomDTO.ro_hocode }" name="ro_hocode"
											id="ro_hocode" readonly="readonly">
									</div>

									<!-- 룸코드 -->
									<div class="ba-text">
										<label class="breadcrumb-text">호텔 주소</label> <input
											type="text" value="${roomDTO.rocode }" name="rocode"
											id="rocode" readonly="readonly">
									</div>

									<!-- 룸사진 -->
									<div class="ba-text">
									<input type="hidden" value="${roomDTO.rofilename }" name="rofilename" id="rofilename">
										<label class="breadcrumb-text">룸사진</label> <img
											src="resources/img/roomFile/${roomDTO.rofilename }"
											alt="등록된 이미지 없음" id="roimg">

									</div>

									<!-- 룸 상세정보 -->
									<div class="ba-text">
										<label class="breadcrumb-text">룸 상세정보</label>
										<textarea rows="10" placeholder="룸 상세정보" name="rodetail"
											id="rodetail" readonly="readonly">${roomDTO.rodetail }</textarea>
										</td>
									</div>

									<!-- 룸최소인원 -->
									<div class="ba-text">
										<label class="breadcrumb-text">룸최소인원</label> <input
											type="number" name="rominper" id="rominper"
											value="${roomDTO.rominper }" readonly="readonly">
									</div>

									<!-- 룸최대인원 -->
									<div class="ba-text">
										<label class="breadcrumb-text">룸최대인원</label> <input
											type="number" name="romaxper" id="romaxper"
											value="${roomDTO.romaxper }" readonly="readonly">
									</div>

									<!-- 룸가격 -->
									<div class="ba-text">
										<label class="breadcrumb-text">룸가격</label> <input type="text"
											placeholder="룸 가격" name="roprice" id="roprice"
											value="${roomDTO.roprice }" readonly="readonly">
									</div>

									<!-- 방갯수 -->
									<div class="ba-text">
										<label class="breadcrumb-text">방갯수</label> <input
											type="number" name="ronum" id="ronum"
											value="${roomDTO.ronum }" readonly="readonly">
									</div>
									<hr>
									<div class="col-lg-12">
										<div class="loadmore">
											<input type="button" value="방정보 수정" id="btn"
												> <input type="submit"
												value="방정보 수정" id="sub">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<!-- main container 끝 -->
<!-- main 끝 -->

</body>

<!-- Js Plugins -->
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.magnific-popup.min.js"></script>
<script src="resources/js/jquery.nice-select.min.js"></script>
<script src="resources/js/jquery.slicknav.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>
<script src="resources/js/owl.carousel.min.js"></script>
<script src="resources/js/main.js"></script>
<script type="text/javascript">
	$("#btn").click(function() {
		$('#sub').show()
		$('#btn').hide()
		$('#rophoto').show()
		$('#roimg').hide()

		$('#roname').removeAttr("readonly")
		$('#rodetail').removeAttr("readonly")
		$('#rominper').removeAttr("readonly")
		$('#romaxper').removeAttr("readonly")
		$('#roprice').removeAttr("readonly")
		$('#ronum').removeAttr("readonly")

	})
</script>
</html>