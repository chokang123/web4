<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Document</title>
   <style>
      * {
         margin: 0px;
         padding: 0px;
      }
      ul, ol {
         list-style: none;
      }
      a {
         text-decoration: none;
      }
      #specialHall_wrap {
         margin: 10px auto;
         width: 980px;
      }
   </style>
</head>
<body>
   <div id="specialHall_wrap">
      <div class="header">
         <div class="header_content">
            <div class="contents">
               <h1 onclick="">
                  <a href="main.do"><img src="image/logo.png" alt="CGV" 
                     style="width: 117px; 
                           height: 53px;" />
                  </a>
                  <span style="width: 158px; 
                              height: 24px; 
                              font: 16px 'Noto Sans KR' ;">
                              CULTUREPLEX
                  </span>
               </h1>
            </div>
      </div>
      </div>
      <div id="container">
   
            <!-- 상단 띠베너-->
            <article style="margin-top: 30px;">  
               <div style="display: flex;">      
                  <div class='img_wrap' data-scale=false>
                     <img src = 'image/special_deatail02_top.jpg' alt='CINE & LIVING ROOM' width="100%">      
                  </div>
                  <div style="position: absolute;
                              color: white;
                              display: flex;
                              flex-direction: column;
                              justify-content: center;
                              align-self: center;
                              ">
                     <strong style="font-size: 30px;">CINE & LIVING ROOM</strong>
                     <span style="font-size: 20px;">신개념 소셜 상영관<span>  
                  </div>
               </div>
            </article>



   
            <!-- 유닛관리-->
            <article class='specialtheater_detail_edit_wrap'>
               <div class="contents cdc">




                  <!-- 가장 큰 TV -->
                  <div style="width: 980px;
                              display: flex;
                              flex-direction: column;">
                     <strong style="margin-top: 100px;
                                    padding-top: 50px;
                                    font: 40px 'Noto Sans KR';">
                        가장 큰 TV
                     </strong>
                     <span style="margin-top: 20px;
                                 font: 20px 'Noto Sans KR';">
                        선명하고 밝게 빛나는 LED스크린이 적용된 씨네&리빙룸은 새로운 영화 경험의 충분한 대안이 될 것입니다.
                     </span>
                     <div style="margin-top: 30px;">
                        <img alt="가장 큰 TV" src="image/specialtheater_cinenlivingroom_1.jpg" style="width: 980px;"/> 
                     </div>
                  </div>



                  <!-- 컬처타임 -->
                  <div style="width: 980px;
                              display: flex;
                              flex-direction: column;">
                     <strong style="margin-top: 100px;
                                    padding-top: 50px;
                                    font: 40px 'Noto Sans KR';">
                        컬처타임
                     </strong>
                     <span style="margin-top: 20px;
                                 font: 20px 'Noto Sans KR';">
                        안락한 쇼파 위 애프터눈티와 책 한권을 곁들일 수 있는 컬처타임은 우리만의 행복한 시간을 만들어 드립니다.
                     </span>
                     <div style="margin-top: 30px;">
                        <img alt="컬처타임" src="image/specialtheater_cinenlivingroom_2.jpg" style="width: 980px;"/> 
                     </div>
                  </div>



               </div>


            </article>
   
            <article class='specialtheater_detail_edit_wrap'>
               <div class="contents cdc">
                  <section class="specialtheater_detail_edit_rentalInfo_wrap"
                        style="margin-top: 100px;">
                     <strong style="font-size: 25px;">대관안내</strong> 
                     <span class="specialtheater_detail_edit_context" 
                        style="display: block; 
                              width: 980px; 
                              height: 58px; 
                              font: 18px 'Noto Sans KR'; 
                              margin-top: 10px;">
                        기업체 초청 VIP 시사회 및 행사, 브랜드 발표 및 제품 시연 등의 프레젠테이션, 전시회, 패션쇼, 프라이빗파티, 사내 문화행사, 
                        기자 간담회 등 대관 목적과 인원에 따라 최적의 메뉴 및 서비스 구성을 맞춤 상담 해 드립니다.
                     </span>
                  </section>
   
                  <!-- 대관문의접수 -->
                  <div style="width: 980px;
                              display: flex;
                              flex-direction: column;
                              align-items: center;
                              ">
                     <strong style="display: flex;
                                    justify-content: center;
                                    align-items: center;
                                    width: 200px; 
                                    height: 50px; 
                                    font-size: 22px 'Noto Sans KR';
                                    color: #ffffff; 
                                    background: #484848; 
                                    margin: 0px auto; 
                                    margin-top: 100px;
                                    border-radius: 30px;
                                    ">
                        대관문의접수
                     </strong>
                     <div style="margin: 10px auto ;">
                        02.3446.0541-2 / 서울시 강남구 신사동 602번지 신관 B5F
                     </div>
                  </div>
               </div>
            </article>
      </div>
   </div>
   <!-- conatiner 종료-->
</body>
</html>