<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<head>
<title>SNS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
   $(() => { 
      $('.allim').click( () => {
         $("#notice").modal("show");
      });
      
      $('.noticeContents').click( () => {
        });
        
      $('.noticeOwnerText').click( (e) => {
            e.stopPropagation();
        });
      
      $('.logout').click( () => {
          location.href="/sns/user/logout";         
       });
   });
</script>
<style>
.scroll{
   overflow-x: auto;
}

.scroll::-webkit-scrollbar {
   width: 10px;
  }
.scroll::-webkit-scrollbar-thumb {
   background-color: white;
   border-radius: 10px;
   background-clip: padding-box;
   border: 3px solid transparent;
}
.scroll::-webkit-scrollbar-track {
   background-color: none;
   border-radius: 10px;
}

.head{
   display: flex;
   justify-content: space-between;
}
.logo{
   width: 160px;
   height: 80px;
   margin: 10px;
   margin-left: 30px;
   border: 1px solid;
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
.home{
   background: white;
   height: 40px;
   width: 60px;
}
.message{
   background: white;
   height: 40px;
   width: 60px;
}
.my{
   background: white;
   height: 40px;
   width: 60px;
}
.allim{
   background: white;
   height: 40px;
   width: 60px;
}
.logout{
   background: white;
   height: 40px;
   width: 60px;
}
.noticeContents {
   height: 40px;
   padding-top: 12px;
   padding-left: 12px;
   cursor: pointer;
}

.noticeContents:hover {
   background: #F7F6F6;
}

.noticeOwnerText{
   font-weight: bold;
   color: black;
}

.noticePost{
   font-weight: bold;
   display: inline-block;
}

.noticeTimeText{
   color: lightgray;
   float: right;
   display: inline-block;
}

.noticeHr{
   margin: 5px 0px;
}
</style>
</head>
<body>
<div style="background: white; border-bottom: 1px solid lightgray;">
   <div style="width: 1140px; margin: 0 auto;">
      <div class="head">
         <div class="logo">로고이미지</div>
         <div style="display: flex; align-items: center">
            <input type="text" class="searchIn"/>
            <button class="btn searchBtn">검색</button>
         </div>
         <div style="display: flex; align-items: center; margin-right: 25px;">
            <button class="btn home btn-margin"><span class="glyphicon glyphicon-home" style="font-size: 25px;"></span></button>
            <button class="btn allim btn-margin"><span class="glyphicon glyphicon-star-empty" style="font-size: 25px;"></span></button>
            <button class="btn message btn-margin"><span class="glyphicon glyphicon-send" style="font-size: 25px;"></span></button>
            <button class="btn my btn-margin"><span class="glyphicon glyphicon-user" style="font-size: 25px;"></span></button>
            <button class="btn logout btn-margin"><span class="glyphicon glyphicon-log-out" style="font-size: 25px;"></span></button>
         </div>
      </div>
   </div>
</div>
<div class="modal fade" id="notice" role="dialog">
   <div class="modal-dialog" >
      <div class="modal-content">
         <div class="modal-header">
            <h4 class="modal-title">알림<button type="button" class="close" data-dismiss="modal">&times;</button></h4>
         </div>
         <div class="modal-body scroll" style="height: 600px;">
            <div class="noticeContents"><a class="noticeOwnerText">양승현</a>님이 <div class="noticePost">내 게시글</div>을 좋아합니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">박민주</a>님이 <div class="noticePost">내 게시글</div>을 좋아합니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">양승현</a>님이 <div class="noticePost">내 게시글</div>에 댓글을 남겼습니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">양승현</a>님이 나의 팬이 되었습니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">안수빈</a>님이 <div class="noticePost">내 게시글</div>을 좋아합니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">이현</a>님이 <div class="noticePost">내 게시글</div>을 좋아합니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">박민주</a>님이나의 팬이 되었습니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">안수빈</a>님이 나의 팬이 되었습니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">이현</a>님이 나의 팬이 되었습니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">양승현</a>님이 <div class="noticePost">내 게시글</div>을 좋아합니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">박민주</a>님이 <div class="noticePost">내 게시글</div>을 좋아합니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">양승현</a>님이 <div class="noticePost">내 게시글</div>에 댓글을 남겼습니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">양승현</a>님이 나의 팬이 되었습니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">안수빈</a>님이 <div class="noticePost">내 게시글</div>을 좋아합니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">이현</a>님이 <div class="noticePost">내 게시글</div>을 좋아합니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">박민주</a>님이나의 팬이 되었습니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">안수빈</a>님이 나의 팬이 되었습니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
            <div class="noticeContents"><a class="noticeOwnerText">이현</a>님이 나의 팬이 되었습니다.<div class="noticeTimeText">오늘</div></div>
            <hr class="noticeHr">
         </div>
      </div>
   </div>
</div>
</body>
</html>