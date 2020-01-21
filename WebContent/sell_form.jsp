<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Garage Sale</title>

    <link href="<%=request.getContextPath() %>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath() %>/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
<script>
function back(){
	if(confirm("취소하시겠습니까??")==true){
		location.href="sell_list.jsp"
	}else{
		return;
	}
}
${id}
</script>
</head>

<body id="page-top">
<nav class="navbar navbar-expand-lg bg-white fixed-top text-uppercase" id="mainNav">
<div class="container">
<a class="navbar-brand js-scroll-trigger" href="main.jsp"><img src="img/logo.png"></a>
<button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" 
data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
Menu<i class="fa fa-bars"></i></button>
<div class="collapse navbar-collapse" id="navbarResponsive">
<ul class="navbar-nav ml-auto">
<li class="nav-item ml-auto">
<a class="nav-link py-3 px-0 px-lg-3 rounded" href="sell_list.do">SELL</a>
</li>
<li class="nav-item ml-auto">
<a class="nav-link py-3 px-0 px-lg-3 rounded" href="buy_list.do">BUY</a>
</li>
<li class="nav-item ml-auto">
<a class="nav-link py-3 px-0 px-lg-3 rounded" href="message_list.do">My Page</a>
</li>
<li class="nav-item ml-auto tab_login">
<a class="nav-link py-3 px-0 px-lg-3 rounded" href="logout.do">Logout</a>
</li>
</ul>
</div>
</div>
</nav>

 <section id="goodslist">
<div class="row">
<div class="container">
<div class="col-sm-12">
<div class="card">
<div class="card-header" id="card-header"><h3 id="card-header">판매</h3></div>
<div class="card-body">
<form name=form1 method=post action="write.do" enctype="multipart/form-data">
<input type=hidden name="action" value="insert">

<div class="form-group">
<label for="title">제목 : </label>
<input type="text" class="form-control text" placeholder="" name="item">
</div>

<div class="form-group">
<label for="title">작성자 : </label>
<input type="text" class="form-control text" placeholder="" name="uid" value="<%=session.getAttribute("sessionID")%>"class="text" readonly>
</div>

<div class="form-group">
<label for="exampleFåormControlInput1">상품상태 : </label>
<select class="form-control text" name="state">
<option value="신상품 ">신상품</option>
<option value="중고상품 ">중고상품</option>
<option value="하자상품 ">하자상품</option>
</select>
</div>

<div class="form-group">
<label>가격 : </label>
<input type="text" class="form-control text" name="price" placeholder="">
</div>

<div class="form-group">
<label for="exampleFormControlInput1">위치 : </label>
<input type="text" class="form-control text" name="location" placeholder="">
<br>
</div>

<div class="form-group">
<label>상품사진 : </label>
<input type="file"name="img" >
</div>

<div class="form-group">
<label>설명 : </label>
<textarea class="form-control" name="detail" style="overflow:hidden" rows="15"></textarea>
</div>

<div class="text-center">
<button type="submit" class="btn btn-secondary">확인</button>
<button type="reset" class="btn btn-secondary" onclick="back()">취소</button>
</div>
</form>

</div>
</div>
</div>
</div>
</div>
</section>

<div class="copyright py-4 text-center text-white">
<div class="container">
<small>Copyright &copy; 고석빈 오수빈 김은경 <br> 충북대학교 소프트웨어학과 오픈소스전문프로젝트 2018</small>
</div>
</div>


<!-- Bootstrap core JavaScript -->
<script src="<%=request.getContextPath() %>/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="<%=request.getContextPath() %>/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="<%=request.getContextPath() %>/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- Contact Form JavaScript -->
<script src="<%=request.getContextPath() %>/js/jqBootstrapValidation.js"></script>
<script src="<%=request.getContextPath() %>/js/contact_me.js"></script>
</body>
</html>