<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Azenta Template">
<meta name="keywords" content="Azenta, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>GOTO</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
	integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg=="
	crossorigin="anonymous"></script>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/themify-icons.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<style type="text/css">
table, th, td {
	text-align: center;
}

#grid {
	display: grid;
	grid-template-columns: 230px 1fr;
	height: inherit;
}

.property-sidebar {
	display: inline;
	text-align: center;
	display: block;
	padding: 50px;
}

.sidenav {
	height: 100%;
	width: 230px;
	/*   position: fixed; */
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
	padding-top: 20px;
}

.sidenav a {
	padding: 6px 8px 6px 16px;
	text-decoration: none;
	font-size: 20px;
	color: #818181;
	display: block;
}

.sidenav a:hover, h5 {
	color: #f1f1f1;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

.sidenavTop {
	height: 100px;
	text-align: center;
	padding: 10px;
}

h5 {
	margin: 10px 0;
}


</style>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	<div id="grid">
	<!-- ???????????? ?????? -->
		<div class="sidenav">
			<div class="sidenavTop">
				<h5>${sessionScope.ALoginId }???</h5>
				<a href="Logout" class="property-sub">????????????</a>
			</div>
			<c:choose>
				<c:when test="${sessionScope.ALoginId == 'ADMIN' }">
					<a href="a_memberList">?????? ??????</a> 
					<a href="a_companyList">?????? ??????</a> 
					<a href="a_approveJoin">?????? ?????? ??????</a> 
					<a href="a_reviewList">?????? ?????? ??????</a> 
					<a href="restaurantForm">?????? ??????</a> 
					<a href="adminRestaurantList">?????? ??????</a> 
					<a href="LandmarkInsertForm">????????? ??????</a> 
					<a href="adminLandmarkList">????????? ??????</a> 
					<a href="a_questionList">1???1 ?????? ??????</a> 
					<a href="a_faqWriteForm">?????? ?????? ?????? ??????</a>
					<a href="FaqList">?????? ?????? ?????? ??????</a>
				</c:when>
				<c:otherwise>
					<a href="a_hotelInfoForm" id="hotelInsert">?????? ??????</a> 
					<a href="a_hotelList">?????? ??????</a>
					<a href="RoomWriteForm">??? ??????</a> 
					<a href="RoomList">??? ??????</a> 
					<a href="cpInfoView">?????? ?????? ??????</a>
					<a href="companySales">?????? ????????????</a>
				</c:otherwise> 
			</c:choose>
		</div>
		<!-- ???????????? ??? -->