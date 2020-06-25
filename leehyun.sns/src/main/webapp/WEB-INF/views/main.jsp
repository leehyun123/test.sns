<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ include file="common/include.jsp" %>
<script src='<c:url value="res/layout.js"/>' async></script>
<script type="text/javascript">

        $( () => {
            $(".post").each(function () {
                $(this).on("mousewheel DOMMouseScroll", function (e) {
                    e.preventDefault();
                    var delta = 0;
                    if (!event) event = window.event;
                    if (event.wheelDelta) {
                        delta = event.wheelDelta / 120;
                        if (window.opera) delta = -delta;
                    } else if (event.detail) delta = -event.detail / 3;
                    var moveTop = null;
                    if (delta < 0) {
                        if ($(this).next().offset() != undefined) {
                            moveTop = $(this).next().offset().top;
                            scrollMove(moveTop);
                        }
                    } else {
                        if ($(this).prev().offset() != undefined) {
                            moveTop = $(this).prev().offset().top;
                            scrollMove(moveTop);
                        }
                    }
                });
            });
            
            $('.postCommentFrame').on('mousewheel', function (e) {
                 e.stopPropagation();
            });
        });
        
        function scrollMove(location) {
           location = location - $(".postLeft").eq(0).offset().top;
           $(".rightDiv").stop().animate({
                scrollTop: location + 'px'
            }, {
                duration: 500, complete: function () {
                }
            });
        }
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

.main {
   height: 800px;
}

.flex {
   display: flex;
}

.leftDiv {
   margin-right: 10px;
   margin-left: 10px;
   margin-top: 10px;
   margin-bottom: 10px;
   flex: 1;
   background-color: #FBFEFF;
   width: 220px;
}

.profile {
   display: flex;
   align-items: center;
   margin: 20px;
   margin-top: 0px;
}

.myProfileImg {
   background: white;
   width: 70px;
   height: 70px;
   margin-right: 20px;
   margin-top: 15px;
   border: 1px solid;
}

.myProfileName {
   font-size: 25px;
   margin-top: 13px;
   font-weight: bold;
}

.profileSearchIn {
   margin-left: 20px;
   flex: 5;
   height: 30px;
   width: 100px;
   border: 1px solid #A593E0;
   border-top-left-radius: 4px;
   border-bottom-left-radius: 4px;
}

.profileSearchBtn {
   border-bottom-left-radius: 0px !important;
   border-top-left-radius: 0px !important;
   margin-right: 20px;
   flex: 1;
   background: #A593E0;
   color: white;
   height: 30px;
}

.friendList{
   height: 578px;
   margin-top: 20px;
}

.profileImg {
   background: white;
   width: 50px;
   height: 50px;
   margin-left: 10px;
   margin-right: 20px;
   border: 1px solid;
}

.profileName {
   font-size: 18px;
}

.ownerProfileName {
   font-size: 29px;
   font-weight: bold;
}

.rightDiv {
   background: #FBFEFF;
   margin-top: 10px;
   margin-bottom: 10px;
   margin-right: 10px;
   flex: 4;
}

.post {
   margin: 20px;
   margin-top: 30px;
   margin-bottom: 30px;
   background: white;
   height: 720px;
   display: flex;
}

.postLeft {
   width: 520px;
}

.postImg {
   height: 520px;
   border-top: 3px solid  #A593E0;
   border-left: 3px solid  #A593E0;
   border-right: 1px solid  #A593E0;
   border-bottom: 1px solid  #A593E0;
   text-align: center;
}

.postContentDiv {
   height: 200px;
   border-left: 3px solid  #A593E0;
   border-right: 1px solid  #A593E0;
   border-bottom: 3px solid  #A593E0;
}

.likeBtn {
   margin-left: 5px;
   margin-top: 5px;
   background: white;
   font-size: 25px !important;
}

.declarationBtn {
   margin-right: 10px;
   margin-top: 10px;
   float: right;
   background: white;
}

.postContent {
   font-size: 18px;
}
.contentDate{
   margin: 10px;
   
}

.postRight {
   flex: 1;
}

.postOwner {
   height: 100px;
   margin: 0px;
   border-top: 3px solid  #A593E0;
   border-right: 3px solid  #A593E0;
}

.postCommentFrame {
   height: 580px;
   border-top: 1px solid  #A593E0;
   border-right: 3px solid  #A593E0;
}

.postCommentDiv {
   margin: 5px;
}

.postCommentOwner {
   display: inline-block;
   font-size: 20px;
   margin-top: 5px;
   margin-left: 10px;
   font-weight: bold;
}

.postCommentContent {
   display: inline-block;
   font-size: 15px;
   margin-top : 10px;
   margin-bottom: 10px;
   margin-left: 20px;
   margin-light: 20px;
}

.postCommentInDiv {
   height: 50px;
   display: flex;
}

.postCommentDate {
   margin-left: 10px;
   margin-bottom : 10px;
   color : #B0AEB0;
}

.commentIn {
   flex: 5;
   border-top: 1px solid  #A593E0;
   border-bottom: 3px solid  #A593E0;
   border-left: none;
   border-right: none;
   height: 40px;
}

.commentBtn {
   flex: 1;
   background: #A593E0;
   color : white;
   height: 40px;
}
</style>
</head>
<header></header>
<div style="background: #FBFEFF;">
   <div class='container'>
      <div class=" main flex">
         <div class="leftDiv">
            <div class="profile">
               <div class="myProfileImg">프로필이미지</div>
               <div class="myProfileName">${user.userName}</div>
            </div>
            <div class="flex">
               <input class="profileSearchIn" type="text" />
               <button class="profileSearchBtn btn">검색</button>
            </div>
            <div class="friendList scroll">
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">안수빈</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">양승현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">박민주</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">이현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">안수빈</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">양승현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">박민주</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">이현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">안수빈</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">양승현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">박민주</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">이현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">안수빈</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">양승현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">박민주</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">이현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">안수빈</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">양승현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">박민주</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">이현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">안수빈</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">양승현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">박민주</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">이현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">안수빈</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">양승현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">박민주</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">이현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">안수빈</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">양승현</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">박민주</div>
               </div>
               <div class="profile">
                  <div class="profileImg">프로필이미지</div>
                  <div class="profileName">이현</div>
               </div>
            </div>
         </div>
         <div class="rightDiv scroll">
            
            <div class="post">
               <div class="postLeft">
                  <div class="postImg">게시물이미지</div>
                  <div class="postContentDiv">
                     <div class="postContentBtnBar">
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-up" style="font-size: 25px;"></span> 30</button>
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-down" style="font-size: 25px;"></span> 1</button>
                        <button class="declarationBtn btn">신고</button>
                     </div>
                     <hr style="margin: 3px;"><div class="postContent"><div class="contentDate">2020-06-12</div>
                        <pre style="background: none; border: 0px solid; font-size: 18px;">오늘 나는 수석 디자이너로 이현 company에 취직했다.
드디어 자본주의의 노예가 됐다</pre>
                     </div>
                  </div>
               </div>
               <div class="postRight">
                  <div class="profile postOwner">
                     <div class="profileImg">프로필이미지</div>
                     <div class="ownerProfileName">an_forest</div>
                  </div>
                  <div class="postCommentFrame scroll">
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">수석디자이너 나는야 권민영!!</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해!!</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해 언니</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">citizen_park</div>
                        <br>
                        <div class="postCommentContent">축하한다능수빈짱!</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">yang_Ga</div>
                        <br>
                        <div class="postCommentContent">오트밀.</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                  </div>
                  <div class="postCommentInDiv">
                     <input class="commentIn" type="text" />
                     <button class="commentBtn btn">게시</button>
                  </div>
               </div>
            </div>
            
            <div class="post">
               <div class="postLeft">
                  <div class="postImg">게시물이미지</div>
                  <div class="postContentDiv">
                     <div class="postContentBtnBar">
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-up" style="font-size: 25px;"></span> 30</button>
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-down" style="font-size: 25px;"></span> 3</button>
                        <button class="declarationBtn btn">신고</button>
                     </div>
                     <hr style="margin: 3px;"><div class="postContent"><div class="contentDate">2020-06-12</div>
                        <pre style="background: none; border: 0px solid; font-size: 18px;">오늘 나는 수석 디자이너로 이현 company에 취직했다.
드디어 자본주의의 노예가 됐다</pre>
                     </div>
                  </div>
               </div>
               <div class="postRight">
                  <div class="profile postOwner">
                     <div class="profileImg">프로필이미지</div>
                     <div class="ownerProfileName">an_forest</div>
                  </div>
                  <div class="postCommentFrame scroll">
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                  </div>
                  <div class="postCommentInDiv">
                     <input class="commentIn" type="text" />
                     <button class="commentBtn btn">게시</button>
                  </div>
               </div>
            </div>
            
            <div class="post">
               <div class="postLeft">
                  <div class="postImg">게시물이미지</div>
                  <div class="postContentDiv">
                     <div class="postContentBtnBar">
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-up" style="font-size: 25px;"></span> 30</button>
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-down" style="font-size: 25px;"></span> 3</button>
                        <button class="declarationBtn btn">신고</button>
                     </div>
                     <hr style="margin: 3px;"><div class="postContent"><div class="contentDate">2020-06-12</div>
                        <pre style="background: none; border: 0px solid; font-size: 18px;">오늘 나는 수석 디자이너로 이현 company에 취직했다.
드디어 자본주의의 노예가 됐다</pre>
                     </div>
                  </div>
               </div>
               <div class="postRight">
                  <div class="profile postOwner">
                     <div class="profileImg">프로필이미지</div>
                     <div class="ownerProfileName">an_forest</div>
                  </div>
                  <div class="postCommentFrame scroll">
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                  </div>
                  <div class="postCommentInDiv">
                     <input class="commentIn" type="text" />
                     <button class="commentBtn btn">게시</button>
                  </div>
               </div>
            </div>
            
            <div class="post">
               <div class="postLeft">
                  <div class="postImg">게시물이미지</div>
                  <div class="postContentDiv">
                     <div class="postContentBtnBar">
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-up" style="font-size: 25px;"></span> 30</button>
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-down" style="font-size: 25px;"></span> 3</button>
                        <button class="declarationBtn btn">신고</button>
                     </div>
                     <hr style="margin: 3px;"><div class="postContent"><div class="contentDate">2020-06-12</div>
                        <pre style="background: none; border: 0px solid; font-size: 18px;">오늘 나는 수석 디자이너로 이현 company에 취직했다.
드디어 자본주의의 노예가 됐다</pre>
                     </div>
                  </div>
               </div>
               <div class="postRight">
                  <div class="profile postOwner">
                     <div class="profileImg">프로필이미지</div>
                     <div class="ownerProfileName">an_forest</div>
                  </div>
                  <div class="postCommentFrame">
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                  </div>
                  <div class="postCommentInDiv">
                     <input class="commentIn" type="text" />
                     <button class="commentBtn btn">게시</button>
                  </div>
               </div>
            </div>
            
            <div class="post">
               <div class="postLeft">
                  <div class="postImg">게시물이미지</div>
                  <div class="postContentDiv">
                     <div class="postContentBtnBar">
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-up" style="font-size: 25px;"></span> 30</button>
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-down" style="font-size: 25px;"></span> 3</button>
                        <button class="declarationBtn btn">신고</button>
                     </div>
                     <hr style="margin: 3px;"><div class="postContent"><div class="contentDate">2020-06-12</div>
                        <pre style="background: none; border: 0px solid; font-size: 18px;">오늘 나는 수석 디자이너로 이현 company에 취직했다.
드디어 자본주의의 노예가 됐다</pre>
                     </div>
                  </div>
               </div>
               <div class="postRight">
                  <div class="profile postOwner">
                     <div class="profileImg">프로필이미지</div>
                     <div class="ownerProfileName">an_forest</div>
                  </div>
                  <div class="postCommentFrame">
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                  </div>
                  <div class="postCommentInDiv">
                     <input class="commentIn" type="text" />
                     <button class="commentBtn btn">게시</button>
                  </div>
               </div>
            </div>
            
            <div class="post">
               <div class="postLeft">
                  <div class="postImg">게시물이미지</div>
                  <div class="postContentDiv">
                     <div class="postContentBtnBar">
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-up" style="font-size: 25px;"></span> 30</button>
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-down" style="font-size: 25px;"></span> 3</button>
                        <button class="declarationBtn btn">신고</button>
                     </div>
                     <hr style="margin: 3px;"><div class="postContent"><div class="contentDate">2020-06-12</div>
                        <pre style="background: none; border: 0px solid; font-size: 18px;">오늘 나는 수석 디자이너로 이현 company에 취직했다.
드디어 자본주의의 노예가 됐다</pre>
                     </div>
                  </div>
               </div>
               <div class="postRight">
                  <div class="profile postOwner">
                     <div class="profileImg">프로필이미지</div>
                     <div class="ownerProfileName">an_forest</div>
                  </div>
                  <div class="postCommentFrame">
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                  </div>
                  <div class="postCommentInDiv">
                     <input class="commentIn" type="text" />
                     <button class="commentBtn btn">게시</button>
                  </div>
               </div>
            </div>
            
            <div class="post">
               <div class="postLeft">
                  <div class="postImg">게시물이미지</div>
                  <div class="postContentDiv">
                     <div class="postContentBtnBar">
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-up" style="font-size: 25px;"></span> 30</button>
                        <button class="likeBtn btn"><span class="glyphicon glyphicon-thumbs-down" style="font-size: 25px;"></span> 3</button>
                        <button class="declarationBtn btn">신고</button>
                     </div>
                     <hr style="margin: 3px;"><div class="postContent"><div class="contentDate">2020-06-12</div>
                        <pre style="background: none; border: 0px solid; font-size: 18px;">오늘 나는 수석 디자이너로 이현 company에 취직했다.
드디어 자본주의의 노예가 됐다</pre>
                     </div>
                  </div>
               </div>
               <div class="postRight">
                  <div class="profile postOwner">
                     <div class="profileImg">프로필이미지</div>
                     <div class="ownerProfileName">an_forest</div>
                  </div>
                  <div class="postCommentFrame">
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">minyou_ng</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">오늘</div><hr style="margin: 0px;">
                     </div>
                     <div class="postCommentDiv">
                        <div class="postCommentOwner">lee_hyun</div>
                        <br>
                        <div class="postCommentContent">축하해</div><div class="postCommentDate">어제</div><hr style="margin: 0px;">
                     </div>
                  </div>
                  <div class="postCommentInDiv">
                     <input class="commentIn" type="text" />
                     <button class="commentBtn btn">게시</button>
                  </div>
               </div>
            </div>
            
         </div>
      </div>
   </div>
</div>
<footer></footer>