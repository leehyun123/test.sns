<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title></title>
<%@ include file="../common/include.jsp" %>
<script src='<c:url value="../res/layout.js"/>' async></script>
<script>
	$(()=>{
		$(".logout").click(()=>{			
			location.href='../user/logout';
		});
	});
</script>
<style>
.head{
   margin: 5px;
}

.logoImg{
   width: 100px;
   height: 50px;
   border: 1px solid;
   margin: 10px;
}

.admin{
   font-size: 24px;
}

.menu{
   margin: 10px;
   margin-bottom: 0px;
}

.menuBtn{
   width: 100px;
   height: 45px;
   margin-right: 10px;
}

.logout{
   background: white;
   height: 40px;
   width: 60px;
   float: right;
   margin: 25px;
}

hr{
   border: 1px solid black;
   margin: 5px;
}

.body{
   margin-top: 15px;
   display: flex;
   flex-direction: column;
   justify-content: center;
   align-items: center; 
}

.searchIn{
   width: 350px;
   height: 40px;
   vertical-align: middle;
   border: 1px solid #A593E0;
   border-top-left-radius: 4px;
   border-bottom-left-radius: 4px
}
.searchBtn{
   background: black;
   color: white;
   height: 40px;
   vertical-align: middle;
   background: #A593E0;
   border-bottom-left-radius: 0px !important;
   border-top-left-radius: 0px !important;
}

.list{
   width: 80%;
   margin: 5%;
   display: flex;
    flex-direction: column;
   justify-content: center;
   text-align: center;
   align-items: center;
}

.userList{
   width: 600px;
   height: 200px;
}

.userList, tr, td{
   font-size: 16px;
}

thead{
   font-weight: bold;
   color: white;
   background: #A593E0;
}

tbody{
   cursor: pointer;
}

a {
   font-size: 15px;
   color: #A593E0 !important;
}

.active>a{
   background: #A593E0 !important;
   color: white !important;
   border-color: #A593E0 !important;
}

/* .pagination > .active > a, 
.pagination > .active > span, 
.pagination > .active > a:hover, 
.pagination > .active > span:hover, 
.pagination > .active > a:focus, 
.pagination > .active > span:focus {
  background: red;
  border-color: red;
} */
</style>
<title>Admin Main</title>
</head>
<body>
<header></header>
<nav></nav>
<div class='container'> 
   <div class='body'>
      <div class='search'>
         <input type="text" class="searchIn"/>
         <button class="btn searchBtn">검색</button>
      </div>
      <div class='list'>
         <table class='userList table table-hover'>
            <thead>
               <tr>
                  <td>회원번호</td>
                  <td>회원이름</td>
                  <td>회원ID</td>
                  <td>회원생성날짜</td>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td>1</td>
                  <td>안수빈</td>
                  <td>an_forest</td>
                  <td>2019-11-25</td>
               </tr>
               <tr>
                  <td>2</td>
                  <td>권민영</td>
                  <td>minyou_ng</td>
                  <td>2020-01-28</td>
               </tr>
               <tr>
                  <td>3</td>
                  <td>박민주</td>
                  <td>zi_pack</td>
                  <td>2020-03-01</td>
               </tr>
               <tr>
                  <td>4</td>
                  <td>양승현</td>
                  <td>yang_ga</td>
                  <td>2020-06-02</td>
               </tr>
            </tbody>
         </table>
      </div>
      <ul class='pagination'>
      <li><a href='#'> << </a></li>
      <li class='active'><a href='#'>1</a></li>
      <li><a href='#'>2</a></li>
      <li><a href='#'>3</a></li>
      <li><a href='#'>4</a></li>
      <li><a href='#'>5</a></li>
      <li><a href='#'>6</a></li>
      <li><a href='#'>7</a></li>
      <li><a href='#'>8</a></li>
      <li><a href='#'>9</a></li>
      <li><a href='#'>10</a></li>
      <li><a href='#'> >> </a></li>
   </ul>
   </div>
</div>
</body>
<footer></footer>