<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<title>Insert title here</title>

<style >
body {
    margin: 0px;
    font-family: 'Gowun Dodum', sans-serif;
    box-sizing: border-box;
}
div{
	
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
div,
input,
textarea {
    box-sizing: border-box;
}
a{
	
    text-decoration: none;
    color: black;
}
li {
	
    text-align: -webkit-match-parent;
 
}
ul{
	list-style:none;
	display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
ul:after{
    content: '';
    clear: both;
    display: block;
}
ul ul {
    margin-block-start: 0px;
    margin-block-end: 0px;
}
.wrap{
	
   text-decoration: none;
	margin:0 auto;
	 position: relative;
    width: 980px;
    height: 450px;
    padding: 50px 53px 0;
   background:url("image/showtimes.gif");
}

.wrap .sect-city {
    height: 65px;
    margin-top: 13px;
    border-top: 2px solid #727171;
    border-bottom: 2px solid #727171;
}


.wrap .sect-city > ul > li .on .area {
    display: block;
}
.wrap .sect-city > ul > li > a {
    padding: 0 2px;
    color:#dbdbdb;
    font-size: 18px;
    line-height: 40px;
    margin-left: 15px;
}

.wrap .sect-city > ul .area{
    position: absolute;
    top: 140px;
    left: 70px;
    width: 825px;
}
.area >ul > li > a{
color: #dbdbdb;
} 

.wrap .sect-city ul > li .on > a {
    color: #fff 
}
.wrap .sect-city > ul > li * li {
    margin: 4px 20px 0 0;
}
.wrap .sect-city > ul > li * li > a {
    position: relative;
    padding: 0;
    font-size: 12px;
    color: #b9b9b9;
    line-height: 31px;
    text-align: left;
}
.wrap .sect-city > ul > li * li .on > a{
    background: none;
}
.sect-city{
	line-height:30px;
}
.sect-city li {
    float: left;
    margin: 0 8px;
}
.area{

}
</style>

</head>
<body>
<jsp:include page="header.jsp" />

 <div class="wrap">
	<div class="sect-city">
		<ul>
			<li class="click"><a href="#">서울</a>
				<div id="city1_area" class="area" hidden="hidden">
					<ul id="uu">
						<li class="on"><a title="CGV강남"
								href="/theaters/?areacode=01&amp;theaterCode=0056&amp;date=20240110">CGV강남</a></li>
						<li ><a title="CGV강변"
								href="/theaters/?areacode=01&amp;theaterCode=0001&amp;date=20240110">CGV강변</a></li>
						<li ><a title="CGV건대입구"
								href="/theaters/?areacode=01&amp;theaterCode=0229&amp;date=20240110">CGV건대입구</a></li>
						<li ><a title="CGV구로"
								href="/theaters/?areacode=01&amp;theaterCode=0010&amp;date=20240110">CGV구로</a></li>
						<li ><a title="CGV대학로"
								href="/theaters/?areacode=01&amp;theaterCode=0063&amp;date=20240110">CGV대학로</a></li>
						<li ><a title="CGV동대문"
								href="/theaters/?areacode=01&amp;theaterCode=0252&amp;date=20240110">CGV동대문</a></li>
						<li ><a title="CGV등촌"
								href="/theaters/?areacode=01&amp;theaterCode=0230&amp;date=20240110">CGV등촌</a></li>
						<li ><a title="CGV명동"
								href="/theaters/?areacode=01&amp;theaterCode=0009&amp;date=20240110">CGV명동</a></li>
						<li ><a title="CGV명동역 씨네라이브러리"
								href="/theaters/?areacode=01&amp;theaterCode=0105&amp;date=20240110">CGV명동역 씨네라이브러리</a>
						</li>
						<li ><a title="CGV미아"
								href="/theaters/?areacode=01&amp;theaterCode=0057&amp;date=20240110">CGV미아</a></li>
						<li ><a title="CGV방학"
								href="/theaters/?areacode=01&amp;theaterCode=0288&amp;date=20240110">CGV방학</a></li>
						<li ><a title="CGV불광"
								href="/theaters/?areacode=01&amp;theaterCode=0030&amp;date=20240110">CGV불광</a></li>
						<li ><a title="CGV상봉"
								href="/theaters/?areacode=01&amp;theaterCode=0046&amp;date=20240110">CGV상봉</a></li>
						<li ><a title="CGV성신여대입구"
								href="/theaters/?areacode=01&amp;theaterCode=0300&amp;date=20240110">CGV성신여대입구</a></li>
						<li ><a title="CGV송파"
								href="/theaters/?areacode=01&amp;theaterCode=0088&amp;date=20240110">CGV송파</a></li>
						<li ><a title="CGV수유"
								href="/theaters/?areacode=01&amp;theaterCode=0276&amp;date=20240110">CGV수유</a></li>
						<li ><a title="CGV신촌아트레온"
								href="/theaters/?areacode=01&amp;theaterCode=0150&amp;date=20240110">CGV신촌아트레온</a></li>
						<li ><a title="CGV압구정"
								href="/theaters/?areacode=01&amp;theaterCode=0040&amp;date=20240110">CGV압구정</a></li>
						<li ><a title="CGV여의도"
								href="/theaters/?areacode=01&amp;theaterCode=0112&amp;date=20240110">CGV여의도</a></li>
						<li ><a title="CGV연남"
								href="/theaters/?areacode=01&amp;theaterCode=0292&amp;date=20240110">CGV연남</a></li>
						<li ><a title="CGV영등포"
								href="/theaters/?areacode=01&amp;theaterCode=0059&amp;date=20240110">CGV영등포</a></li>
						<li ><a title="CGV왕십리"
								href="/theaters/?areacode=01&amp;theaterCode=0074&amp;date=20240110">CGV왕십리</a></li>
						<li ><a title="CGV용산아이파크몰"
								href="/theaters/?areacode=01&amp;theaterCode=0013&amp;date=20240110">CGV용산아이파크몰</a></li>
						<li ><a title="CGV중계"
								href="/theaters/?areacode=01&amp;theaterCode=0131&amp;date=20240110">CGV중계</a></li>
						<li class><a title="CGV천호"
								href="/theaters/?areacode=01&amp;theaterCode=0199&amp;date=20240110">CGV천호</a></li>
						<li class><a title="CGV청담씨네시티"
								href="/theaters/?areacode=01&amp;theaterCode=0107&amp;date=20240110">CGV청담씨네시티</a></li>
						<li class><a title="CGV피카디리1958"
								href="/theaters/?areacode=01&amp;theaterCode=0223&amp;date=20240110">CGV피카디리1958</a>
						</li>
						<li ><a title="CGV하계"
								href="/theaters/?areacode=01&amp;theaterCode=0164&amp;date=20240110">CGV하계</a></li>
						<li ><a title="CGV홍대"
								href="/theaters/?areacode=01&amp;theaterCode=0191&amp;date=20240110">CGV홍대</a></li>
						<li ><a title="CINE de CHEF 압구정"
								href="/theaters/special/show-times.aspx?regioncode=103&amp;theatercode=0040">CINE de
								CHEF 압구정</a></li>
						<li ><a title="CINE de CHEF 용산아이파크몰"
								href="/theaters/special/show-times.aspx?regioncode=103&amp;theatercode=0013">CINE de
								CHEF 용산아이파크몰</a></li>
					</ul>
				</div>
			</li>
			<li class="click"><a href="#">경기</a>
				<div class="area"  hidden="hidden">
					<ul id="uu">
						<li ><a title="CGV경기광주"
								href="/theaters/?areacode=02&amp;theaterCode=0260&amp;date=20240110">CGV경기광주</a></li>
						<li ><a title="CGV고양백석"
								href="/theaters/?areacode=02&amp;theaterCode=0270&amp;date=20240110">CGV고양백석</a></li>
						<li ><a title="CGV고양행신"
								href="/theaters/?areacode=02&amp;theaterCode=0255&amp;date=20240110">CGV고양행신</a></li>
						<li ><a title="CGV광교"
								href="/theaters/?areacode=02&amp;theaterCode=0257&amp;date=20240110">CGV광교</a></li>
						<li ><a title="CGV광교상현"
								href="/theaters/?areacode=02&amp;theaterCode=0266&amp;date=20240110">CGV광교상현</a></li>
						<li ><a title="CGV광명역"
								href="/theaters/?areacode=02&amp;theaterCode=0348&amp;date=20240110">CGV광명역</a></li>
						<li ><a title="CGV구리"
								href="/theaters/?areacode=02&amp;theaterCode=0232&amp;date=20240110">CGV구리</a></li>
						<li ><a title="CGV구리갈매"
								href="/theaters/?areacode=02&amp;theaterCode=0358&amp;date=20240110">CGV구리갈매</a></li>
						<li ><a title="CGV기흥"
								href="/theaters/?areacode=02&amp;theaterCode=0344&amp;date=20240110">CGV기흥</a></li>
						<li ><a title="CGV김포"
								href="/theaters/?areacode=02&amp;theaterCode=0278&amp;date=20240110">CGV김포</a></li>
						<li ><a title="CGV김포운양"
								href="/theaters/?areacode=02&amp;theaterCode=0188&amp;date=20240110">CGV김포운양</a></li>
						<li ><a title="CGV김포한강"
								href="/theaters/?areacode=02&amp;theaterCode=0298&amp;date=20240110">CGV김포한강</a></li>
						<li ><a title="CGV남양주 화도"
								href="/theaters/?areacode=02&amp;theaterCode=0329&amp;date=20240110">CGV남양주 화도</a></li>
						<li ><a title="CGV다산"
								href="/theaters/?areacode=02&amp;theaterCode=0351&amp;date=20240110">CGV다산</a></li>
						<li ><a title="CGV동두천"
								href="/theaters/?areacode=02&amp;theaterCode=0236&amp;date=20240110">CGV동두천</a></li>
						<li ><a title="CGV동백"
								href="/theaters/?areacode=02&amp;theaterCode=0124&amp;date=20240110">CGV동백</a></li>
						<li ><a title="CGV동수원"
								href="/theaters/?areacode=02&amp;theaterCode=0041&amp;date=20240110">CGV동수원</a></li>
						<li ><a title="CGV동탄"
								href="/theaters/?areacode=02&amp;theaterCode=0106&amp;date=20240110">CGV동탄</a></li>
						<li ><a title="CGV동탄그랑파사쥬"
								href="/theaters/?areacode=02&amp;theaterCode=0359&amp;date=20240110">CGV동탄그랑파사쥬</a></li>
						<li ><a title="CGV동탄역"
								href="/theaters/?areacode=02&amp;theaterCode=0265&amp;date=20240110">CGV동탄역</a></li>
						<li ><a title="CGV동탄호수공원"
								href="/theaters/?areacode=02&amp;theaterCode=0233&amp;date=20240110">CGV동탄호수공원</a></li>
						<li ><a title="CGV배곧"
								href="/theaters/?areacode=02&amp;theaterCode=0226&amp;date=20240110">CGV배곧</a></li>
						<li ><a title="CGV범계"
								href="/theaters/?areacode=02&amp;theaterCode=0155&amp;date=20240110">CGV범계</a></li>
						<li ><a title="CGV부천"
								href="/theaters/?areacode=02&amp;theaterCode=0015&amp;date=20240110">CGV부천</a></li>
						<li ><a title="CGV부천역"
								href="/theaters/?areacode=02&amp;theaterCode=0194&amp;date=20240110">CGV부천역</a></li>
						<li ><a title="CGV부천옥길"
								href="/theaters/?areacode=02&amp;theaterCode=0287&amp;date=20240110">CGV부천옥길</a></li>
						<li ><a title="CGV북수원"
								href="/theaters/?areacode=02&amp;theaterCode=0049&amp;date=20240110">CGV북수원</a></li>
						<li ><a title="CGV산본"
								href="/theaters/?areacode=02&amp;theaterCode=0242&amp;date=20240110">CGV산본</a></li>
						<li ><a title="CGV서현"
								href="/theaters/?areacode=02&amp;theaterCode=0196&amp;date=20240110">CGV서현</a></li>
						<li ><a title="CGV성남모란"
								href="/theaters/?areacode=02&amp;theaterCode=0304&amp;date=20240110">CGV성남모란</a></li>
						<li ><a title="CGV소풍"
								href="/theaters/?areacode=02&amp;theaterCode=0143&amp;date=20240110">CGV소풍</a></li>
						<li ><a title="CGV스타필드시티위례"
								href="/theaters/?areacode=02&amp;theaterCode=0274&amp;date=20240110">CGV스타필드시티위례</a>
						</li>
						<li ><a title="CGV시흥"
								href="/theaters/?areacode=02&amp;theaterCode=0073&amp;date=20240110">CGV시흥</a></li>
						<li ><a title="CGV신세계경기"
								href="/theaters/?areacode=02&amp;theaterCode=0055&amp;date=20240110">CGV신세계경기</a></li>
						<li ><a title="CGV안산"
								href="/theaters/?areacode=02&amp;theaterCode=0211&amp;date=20240110">CGV안산</a></li>
						<li ><a title="CGV안성"
								href="/theaters/?areacode=02&amp;theaterCode=0279&amp;date=20240110">CGV안성</a></li>
						<li ><a title="CGV야탑"
								href="/theaters/?areacode=02&amp;theaterCode=0003&amp;date=20240110">CGV야탑</a></li>
						<li ><a title="CGV양주옥정"
								href="/theaters/?areacode=02&amp;theaterCode=0262&amp;date=20240110">CGV양주옥정</a></li>
						<li ><a title="CGV역곡"
								href="/theaters/?areacode=02&amp;theaterCode=0338&amp;date=20240110">CGV역곡</a></li>
						<li ><a title="CGV오리"
								href="/theaters/?areacode=02&amp;theaterCode=0004&amp;date=20240110">CGV오리</a></li>
						<li ><a title="CGV오산"
								href="/theaters/?areacode=02&amp;theaterCode=0305&amp;date=20240110">CGV오산</a></li>
						<li ><a title="CGV오산중앙"
								href="/theaters/?areacode=02&amp;theaterCode=0307&amp;date=20240110">CGV오산중앙</a></li>
						<li ><a title="CGV용인"
								href="/theaters/?areacode=02&amp;theaterCode=0271&amp;date=20240110">CGV용인</a></li>
						<li ><a title="CGV의정부"
								href="/theaters/?areacode=02&amp;theaterCode=0113&amp;date=20240110">CGV의정부</a></li>
						<li ><a title="CGV의정부태흥"
								href="/theaters/?areacode=02&amp;theaterCode=0187&amp;date=20240110">CGV의정부태흥</a></li>
						<li ><a title="CGV이천"
								href="/theaters/?areacode=02&amp;theaterCode=0205&amp;date=20240110">CGV이천</a></li>
						<li ><a title="CGV일산"
								href="/theaters/?areacode=02&amp;theaterCode=0054&amp;date=20240110">CGV일산</a></li>
						<li ><a title="CGV정왕"
								href="/theaters/?areacode=02&amp;theaterCode=0320&amp;date=20240110">CGV정왕</a></li>
						<li ><a title="CGV파주문산"
								href="/theaters/?areacode=02&amp;theaterCode=0148&amp;date=20240110">CGV파주문산</a></li>
						<li ><a title="CGV파주야당"
								href="/theaters/?areacode=02&amp;theaterCode=0310&amp;date=20240110">CGV파주야당</a></li>
						<li ><a title="CGV판교"
								href="/theaters/?areacode=02&amp;theaterCode=0181&amp;date=20240110">CGV판교</a></li>
						<li ><a title="CGV평촌"
								href="/theaters/?areacode=02&amp;theaterCode=0195&amp;date=20240110">CGV평촌</a></li>
						<li ><a title="CGV평택"
								href="/theaters/?areacode=02&amp;theaterCode=0052&amp;date=20240110">CGV평택</a></li>
						<li ><a title="CGV평택고덕"
								href="/theaters/?areacode=02&amp;theaterCode=0334&amp;date=20240110">CGV평택고덕</a></li>
						<li ><a title="CGV평택소사"
								href="/theaters/?areacode=02&amp;theaterCode=0214&amp;date=20240110">CGV평택소사</a></li>
						<li ><a title="CGV포천"
								href="/theaters/?areacode=02&amp;theaterCode=0309&amp;date=20240110">CGV포천</a></li>
						<li ><a title="CGV하남미사"
								href="/theaters/?areacode=02&amp;theaterCode=0326&amp;date=20240110">CGV하남미사</a></li>
						<li ><a title="CGV화성봉담"
								href="/theaters/?areacode=02&amp;theaterCode=0301&amp;date=20240110">CGV화성봉담</a></li>
						<li ><a title="CGV화정"
								href="/theaters/?areacode=02&amp;theaterCode=0145&amp;date=20240110">CGV화정</a></li>
						<li ><a title="DRIVE IN 용인크랙사이드"
								href="/theaters/?areacode=02&amp;theaterCode=0365&amp;date=20240110">DRIVE IN
								용인크랙사이드</a></li>
					</ul>
				</div>
			</li>
			<li class="click"><a href="#">인천</a>
				<div class="area"  hidden="hidden">
					<ul id="uu">
						<li ><a title="CGV계양"
								href="/theaters/?areacode=202&amp;theaterCode=0043&amp;date=20240110">CGV계양</a></li>
						<li ><a title="CGV남주안"
								href="/theaters/?areacode=202&amp;theaterCode=0198&amp;date=20240110">CGV남주안</a></li>
						<li ><a title="CGV부평"
								href="/theaters/?areacode=202&amp;theaterCode=0021&amp;date=20240110">CGV부평</a></li>
						<li ><a title="CGV송도타임스페이스"
								href="/theaters/?areacode=202&amp;theaterCode=0325&amp;date=20240110">CGV송도타임스페이스</a>
						</li>
						<li ><a title="CGV연수역"
								href="/theaters/?areacode=202&amp;theaterCode=0247&amp;date=20240110">CGV연수역</a></li>
						<li ><a title="CGV인천"
								href="/theaters/?areacode=202&amp;theaterCode=0002&amp;date=20240110">CGV인천</a></li>
						<li ><a title="CGV인천가정(루원시티)"
								href="/theaters/?areacode=202&amp;theaterCode=0296&amp;date=20240110">CGV인천가정(루원시티)</a>
						</li>
						<li ><a title="CGV인천논현"
								href="/theaters/?areacode=202&amp;theaterCode=0346&amp;date=20240110">CGV인천논현</a></li>
						<li ><a title="CGV인천도화"
								href="/theaters/?areacode=202&amp;theaterCode=0340&amp;date=20240110">CGV인천도화</a></li>
						<li ><a title="CGV인천시민공원"
								href="/theaters/?areacode=202&amp;theaterCode=0352&amp;date=20240110">CGV인천시민공원</a></li>
						<li ><a title="CGV인천연수"
								href="/theaters/?areacode=202&amp;theaterCode=0258&amp;date=20240110">CGV인천연수</a></li>
						<li ><a title="CGV인천학익"
								href="/theaters/?areacode=202&amp;theaterCode=0269&amp;date=20240110">CGV인천학익</a></li>
						<li ><a title="CGV주안역"
								href="/theaters/?areacode=202&amp;theaterCode=0308&amp;date=20240110">CGV주안역</a></li>
						<li ><a title="CGV청라"
								href="/theaters/?areacode=202&amp;theaterCode=0235&amp;date=20240110">CGV청라</a></li>
					</ul>
				</div>
			</li>
			<li class="click"><a href="#">강원</a>
				<div class="area"  hidden="hidden">
					<ul id="uu">
						<li ><a title="CGV강릉"
								href="/theaters/?areacode=12&amp;theaterCode=0139&amp;date=20240110">CGV강릉</a></li>
						<li ><a title="CGV기린"
								href="/theaters/?areacode=12&amp;theaterCode=0355&amp;date=20240110">CGV기린</a></li>
						<li ><a title="CGV원주"
								href="/theaters/?areacode=12&amp;theaterCode=0144&amp;date=20240110">CGV원주</a></li>
						<li ><a title="CGV원통"
								href="/theaters/?areacode=12&amp;theaterCode=0354&amp;date=20240110">CGV원통</a></li>
						<li ><a title="CGV인제"
								href="/theaters/?areacode=12&amp;theaterCode=0281&amp;date=20240110">CGV인제</a></li>
						<li ><a title="CGV춘천"
								href="/theaters/?areacode=12&amp;theaterCode=0070&amp;date=20240110">CGV춘천</a></li>
					</ul>
				</div>
			</li>
			<li class="click"><a href="#">대전/충청</a>
				<div class="area"  hidden="hidden">
					<ul id="uu">
						<li ><a title="CGV논산"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0261&amp;date=20240110">CGV논산</a>
						</li>
						<li ><a title="CGV당진"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0207&amp;date=20240110">CGV당진</a>
						</li>
						<li ><a title="CGV대전"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0007&amp;date=20240110">CGV대전</a>
						</li>
						<li ><a title="CGV대전가수원"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0286&amp;date=20240110">CGV대전가수원</a>
						</li>
						<li ><a title="CGV대전가오"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0154&amp;date=20240110">CGV대전가오</a>
						</li>
						<li ><a title="CGV대전탄방"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0202&amp;date=20240110">CGV대전탄방</a>
						</li>
						<li ><a title="CGV대전터미널"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0127&amp;date=20240110">CGV대전터미널</a>
						</li>
						<li ><a title="CGV서산"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0091&amp;date=20240110">CGV서산</a>
						</li>
						<li ><a title="CGV세종"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0219&amp;date=20240110">CGV세종</a>
						</li>
						<li ><a title="CGV아산"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0356&amp;date=20240110">CGV아산</a>
						</li>
						<li ><a title="CGV유성노은"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0206&amp;date=20240110">CGV유성노은</a>
						</li>
						<li ><a title="CGV제천"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0331&amp;date=20240110">CGV제천</a>
						</li>
						<li ><a title="CGV천안"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0044&amp;date=20240110">CGV천안</a>
						</li>
						<li ><a title="CGV천안시청"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0332&amp;date=20240110">CGV천안시청</a>
						</li>
						<li ><a title="CGV천안터미널"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0293&amp;date=20240110">CGV천안터미널</a>
						</li>
						<li ><a title="CGV천안펜타포트"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0110&amp;date=20240110">CGV천안펜타포트</a>
						</li>
						<li ><a title="CGV청주(서문)"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0228&amp;date=20240110">CGV청주(서문)</a>
						</li>
						<li ><a title="CGV청주성안길"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0297&amp;date=20240110">CGV청주성안길</a>
						</li>
						<li ><a title="CGV청주율량"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0282&amp;date=20240110">CGV청주율량</a>
						</li>
						<li ><a title="CGV청주지웰시티"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0142&amp;date=20240110">CGV청주지웰시티</a>
						</li>
						<li ><a title="CGV청주터미널"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0319&amp;date=20240110">CGV청주터미널</a>
						</li>
						<li ><a title="CGV충북혁신"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0284&amp;date=20240110">CGV충북혁신</a>
						</li>
						<li ><a title="CGV충주교현"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0328&amp;date=20240110">CGV충주교현</a>
						</li>
						<li ><a title="CGV홍성"
								href="/theaters/?areacode=03%2C205&amp;theaterCode=0217&amp;date=20240110">CGV홍성</a>
						</li>
					</ul>
				</div>
			</li>
			<li class="click"><a href="#">대구</a>
				<div class="area"  hidden="hidden">
					<ul id="uu">
						<li ><a title="CGV대구"
								href="/theaters/?areacode=11&amp;theaterCode=0345&amp;date=20240110">CGV대구</a></li>
						<li ><a title="CGV대구수성"
								href="/theaters/?areacode=11&amp;theaterCode=0157&amp;date=20240110">CGV대구수성</a></li>
						<li ><a title="CGV대구스타디움"
								href="/theaters/?areacode=11&amp;theaterCode=0108&amp;date=20240110">CGV대구스타디움</a></li>
						<li ><a title="CGV대구아카데미"
								href="/theaters/?areacode=11&amp;theaterCode=0185&amp;date=20240110">CGV대구아카데미</a></li>
						<li ><a title="CGV대구연경"
								href="/theaters/?areacode=11&amp;theaterCode=0343&amp;date=20240110">CGV대구연경</a></li>
						<li ><a title="CGV대구월성"
								href="/theaters/?areacode=11&amp;theaterCode=0216&amp;date=20240110">CGV대구월성</a></li>
						<li ><a title="CGV대구죽전"
								href="/theaters/?areacode=11&amp;theaterCode=0256&amp;date=20240110">CGV대구죽전</a></li>
						<li ><a title="CGV대구한일"
								href="/theaters/?areacode=11&amp;theaterCode=0147&amp;date=20240110">CGV대구한일</a></li>
						<li ><a title="CGV대구현대"
								href="/theaters/?areacode=11&amp;theaterCode=0109&amp;date=20240110">CGV대구현대</a></li>
					</ul>
				</div>
			</li>
			<li class="click"><a href="#">부산/울산</a>
				<div class="area"  hidden="hidden">
					<ul id="uu">
						<li ><a title="CGV대연"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0061&amp;date=20240110">CGV대연</a>
						</li>
						<li ><a title="CGV동래"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0042&amp;date=20240110">CGV동래</a>
						</li>
						<li ><a title="CGV부산명지"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0337&amp;date=20240110">CGV부산명지</a>
						</li>
						<li ><a title="CGV서면"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0005&amp;date=20240110">CGV서면</a>
						</li>
						<li ><a title="CGV서면삼정타워"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0285&amp;date=20240110">CGV서면삼정타워</a>
						</li>
						<li ><a title="CGV서면상상마당"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0303&amp;date=20240110">CGV서면상상마당</a>
						</li>
						<li ><a title="CGV센텀시티"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0089&amp;date=20240110">CGV센텀시티</a>
						</li>
						<li ><a title="CGV아시아드"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0160&amp;date=20240110">CGV아시아드</a>
						</li>
						<li ><a title="CGV울산동구"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0335&amp;date=20240110">CGV울산동구</a>
						</li>
						<li ><a title="CGV울산삼산"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0128&amp;date=20240110">CGV울산삼산</a>
						</li>
						<li ><a title="CGV울산신천"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0264&amp;date=20240110">CGV울산신천</a>
						</li>
						<li ><a title="CGV울산진장"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0246&amp;date=20240110">CGV울산진장</a>
						</li>
						<li ><a title="CGV정관"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0306&amp;date=20240110">CGV정관</a>
						</li>
						<li ><a title="CGV하단아트몰링"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0245&amp;date=20240110">CGV하단아트몰링</a>
						</li>
						<li ><a title="CGV해운대"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0318&amp;date=20240110">CGV해운대</a>
						</li>
						<li ><a title="CGV화명"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0159&amp;date=20240110">CGV화명</a>
						</li>
						<li ><a title="CINE de CHEF 센텀"
								href="/theaters/special/show-times.aspx?regioncode=103&amp;theatercode=0089">CINE de
								CHEF 센텀</a></li>
						<li ><a title="DRIVE IN 영도"
								href="/theaters/?areacode=05%2C207&amp;theaterCode=0367&amp;date=20240110">DRIVE IN
								영도</a></li>
					</ul>
				</div>
			</li>
			<li class="click"><a href="#">경상</a>
				<div class="area"  hidden="hidden">
					<ul id="uu">
						<li ><a title="CGV거제"
								href="/theaters/?areacode=204&amp;theaterCode=0263&amp;date=20240110">CGV거제</a></li>
						<li ><a title="CGV경산"
								href="/theaters/?areacode=204&amp;theaterCode=0330&amp;date=20240110">CGV경산</a></li>
						<li ><a title="CGV고성"
								href="/theaters/?areacode=204&amp;theaterCode=0323&amp;date=20240110">CGV고성</a></li>
						<li ><a title="CGV구미"
								href="/theaters/?areacode=204&amp;theaterCode=0053&amp;date=20240110">CGV구미</a></li>
						<li ><a title="CGV김천율곡"
								href="/theaters/?areacode=204&amp;theaterCode=0240&amp;date=20240110">CGV김천율곡</a></li>
						<li ><a title="CGV김해"
								href="/theaters/?areacode=204&amp;theaterCode=0028&amp;date=20240110">CGV김해</a></li>
						<li ><a title="CGV김해율하"
								href="/theaters/?areacode=204&amp;theaterCode=0311&amp;date=20240110">CGV김해율하</a></li>
						<li ><a title="CGV김해장유"
								href="/theaters/?areacode=204&amp;theaterCode=0239&amp;date=20240110">CGV김해장유</a></li>
						<li ><a title="CGV마산"
								href="/theaters/?areacode=204&amp;theaterCode=0033&amp;date=20240110">CGV마산</a></li>
						<li ><a title="CGV북포항"
								href="/theaters/?areacode=204&amp;theaterCode=0097&amp;date=20240110">CGV북포항</a></li>
						<li ><a title="CGV안동"
								href="/theaters/?areacode=204&amp;theaterCode=0272&amp;date=20240110">CGV안동</a></li>
						<li ><a title="CGV양산삼호"
								href="/theaters/?areacode=204&amp;theaterCode=0234&amp;date=20240110">CGV양산삼호</a></li>
						<li ><a title="CGV진주혁신"
								href="/theaters/?areacode=204&amp;theaterCode=0324&amp;date=20240110">CGV진주혁신</a></li>
						<li ><a title="CGV창원"
								href="/theaters/?areacode=204&amp;theaterCode=0023&amp;date=20240110">CGV창원</a></li>
						<li ><a title="CGV창원더시티"
								href="/theaters/?areacode=204&amp;theaterCode=0079&amp;date=20240110">CGV창원더시티</a></li>
						<li ><a title="CGV창원상남"
								href="/theaters/?areacode=204&amp;theaterCode=0283&amp;date=20240110">CGV창원상남</a></li>
						<li ><a title="CGV통영"
								href="/theaters/?areacode=204&amp;theaterCode=0156&amp;date=20240110">CGV통영</a></li>
					</ul>
				</div>
			</li>
			<li class="click"><a href="#">광주/전라/제주</a>
				<div class="area"  hidden="hidden">
					<ul id="uu">
						<li ><a title="CGV광양"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0220&amp;date=20240110">CGV광양</a>
						</li>
						<li ><a title="CGV광양 엘에프스퀘어"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0221&amp;date=20240110">CGV광양
								엘에프스퀘어</a></li>
						<li ><a title="CGV광주금남로"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0295&amp;date=20240110">CGV광주금남로</a>
						</li>
						<li ><a title="CGV광주상무"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0193&amp;date=20240110">CGV광주상무</a>
						</li>
						<li ><a title="CGV광주용봉"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0210&amp;date=20240110">CGV광주용봉</a>
						</li>
						<li ><a title="CGV광주첨단"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0218&amp;date=20240110">CGV광주첨단</a>
						</li>
						<li ><a title="CGV광주충장로"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0244&amp;date=20240110">CGV광주충장로</a>
						</li>
						<li ><a title="CGV광주터미널"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0090&amp;date=20240110">CGV광주터미널</a>
						</li>
						<li ><a title="CGV광주하남"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0215&amp;date=20240110">CGV광주하남</a>
						</li>
						<li ><a title="CGV나주"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0237&amp;date=20240110">CGV나주</a>
						</li>
						<li ><a title="CGV목포"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0289&amp;date=20240110">CGV목포</a>
						</li>
						<li ><a title="CGV목포평화광장"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0280&amp;date=20240110">CGV목포평화광장</a>
						</li>
						<li ><a title="CGV서전주"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0225&amp;date=20240110">CGV서전주</a>
						</li>
						<li ><a title="CGV순천"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0114&amp;date=20240110">CGV순천</a>
						</li>
						<li ><a title="CGV순천신대"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0268&amp;date=20240110">CGV순천신대</a>
						</li>
						<li ><a title="CGV여수웅천"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0315&amp;date=20240110">CGV여수웅천</a>
						</li>
						<li ><a title="CGV익산"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0020&amp;date=20240110">CGV익산</a>
						</li>
						<li ><a title="CGV전주고사"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0213&amp;date=20240110">CGV전주고사</a>
						</li>
						<li ><a title="CGV전주에코시티"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0336&amp;date=20240110">CGV전주에코시티</a>
						</li>
						<li ><a title="CGV전주효자"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0179&amp;date=20240110">CGV전주효자</a>
						</li>
						<li ><a title="CGV정읍"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0186&amp;date=20240110">CGV정읍</a>
						</li>
						<li ><a title="CGV제주"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0302&amp;date=20240110">CGV제주</a>
						</li>
						<li ><a title="CGV제주노형"
								href="/theaters/?areacode=206%2C04%2C06&amp;theaterCode=0259&amp;date=20240110">CGV제주노형</a>
						</li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	</div>
	<script>
		$(".click").on("click",function(){
			$(".area").hide();
			var thisis = $(this).find("div");
			thisis.show();
		});
		$("#uu>li").on("click",function(){
			event.preventDefault();
			var href = $(this).find("a").attr("href");
			var finalhref = "http://www.cgv.co.kr/"+href;
			window.location.href = finalhref;
		});
	</script>
</body>
</html>