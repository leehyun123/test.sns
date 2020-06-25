<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<head>
<title>SNS</title>
<%@ include file="../common/include.jsp" %>
<script src='<c:url value="../res/layout.js"/>' async></script>
<script>
	$(()=>{
		$("#loginBtn").click(()=>{
			$.ajax({
			url: '/sns/user/login',
			method: 'post',
			data: {"userId": $('#userId').val(), "userPw": $('#userPw').val()},
			success: login => {
				if($("#userId").val() == 'admin' && $("#userPw").val() == 'admin'){
					window.location = "/sns/admin/main";
				}
				else if(login){
					window.location = "../";
				}else{
					swal({
						title: "비밀번호가 일치하지 않습니다.",
						type: "warning",
						
					})
				}},
				error : (a, b, err) => swal({
					title: "등록된 아이디가 없습니다.",
					type: "warning",
					
				})
				})
			});
			
			$('.signUp').click(()=>{
				location.href="/sns/user/addUser";
			});
	});
</script>
<style>
.back{
	background: #F8F8FF;
	position: relative;
	z-index: 0;
}

.logincontainer {
	height: 892px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.loginframe {
	width: 800px;
	height: 600px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background: white;
}

.gradient-border {
	--borderWidth: 7px;
	position: relative;
	border-radius: var(--borderWidth);
}
.gradient-border:after {
	content: '';
	position: absolute;
	top: calc(-1 * var(--borderWidth));
	left: calc(-1 * var(--borderWidth));
	height: calc(100% + var(--borderWidth) * 2);
	width: calc(100% + var(--borderWidth) * 2);
	background: linear-gradient(60deg, #1AF2F6, #5266DC, #A8D0F9, #D9BFFA, #291BF2);
	border-radius: calc(2 * var(--borderWidth));
	z-index: -1;
	animation: animatedgradient 3s ease alternate infinite;
	background-size: 300% 300%;
}


@keyframes animatedgradient{
	0% {
		background-position: 0% 50%;
	}
	50% {
		background-position: 100% 50%;
	}
	100% {
		background-position: 0% 50%;
	}
}

.logoImg {
	width: 300px;
	height: 150px;
	border: 1px solid;
	margin: 30px;
}

.in {
	width: 400px;
	margin: 15px;
	height: 40px;
	border-radius: 4px;
	background: #F8F8FF;
	text-align: center;
	border: 1px solid #8C9FFB;
}

.idIn {
	
}

.pwIn {
	
}

.signInBtn {
	width: 400px;
	margin: 15px;
	height: 40px;
	background: #BDC6F4;
}

.orBar {
	width: 400px;
	margin: 10px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.optBtnDiv {
	margin: 10px;
	width: 400px;
	display: flex;
	justify-content: space-between;
}

.optBtn {
	width: 30%;
	height: 40px;
	background: white;
	text-align: center;
	font-weight: bold;
	color: gray;
}

.optBtn:hover {
	font-size: 15px;
	font-weight: bold;
}
</style>
</head>
<div class="back">
	<div class='container logincontainer'>
		<div class="loginframe gradient-border">
			<div class="logoImg">로고이미지</div>
			<input class="idIn in" type="text" id = "userId" placeholder="아이디" />
			<input class="pwIn in" type="password" id="userPw" placeholder="비밀번호" />
			<button class="btn signInBtn" type="button" id="loginBtn">로그인</button>
			<div class="orBar">
				<hr style="width: 200px; border: 1px solid lightgray">
				<div style="margin: 10px; color: gray">OR</div>
				<hr style="width: 200px; border: 1px solid lightgray">
			</div>
			<div class="optBtnDiv">
				<button class="btn idSearch optBtn" type="button">아이디 찾기</button>
				<button class="btn pwSearch optBtn" type="button">비밀번호 찾기</button>
				<button class="btn signUp optBtn" type="button">회원가입</button>
			</div>
		</div>
	</div>
</div>
<footer></footer>

