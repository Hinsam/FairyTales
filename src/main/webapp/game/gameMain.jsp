<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8"> 
    <title>FairyTale</title>
    <link rel="stylesheet" href="style.css">
    <style>
    @font-face {
    font-family: 'TTHakgyoansimRikodeoR';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2402_keris@1.0/TTHakgyoansimRikodeoR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
	}
     body{ 
    	font-family: 'TTHakgyoansimRikodeoR';
     	background-image: url('bgImage.png');
        background-size: cover;
        background-position: center; 
        background-attachment: fixed;
        }
     }
     </style>
</head>
<body>
    <div>
        <!-- 사용자 ID 표시 -->
        <div style="position: fixed; top: 10px; right: 10px; color:#615B57;">
            <% String username = (String) session.getAttribute("username"); %>
            <p>어서오세요, <%= username %> 님.</p>
            <button class="transparent-button" style="float:left;
            padding: 8px 16px; font-size: 12px;" onclick="location.href='../main/main.jsp'">메인</button>
            <button class="transparent-button" style="float: right;
            padding: 8px 16px; font-size: 12px;" onclick="location.href='../main/logoutAction.jsp'" >로그아웃</button>
        </div>
    </div>
    
    <p style="color:#615B57; font-size:40px; font-weight:700;">FairyTale</p>
    
<div style="position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: rgba(255, 255, 255, 0.7); border-radius: 10px; padding: 20px; width: fit-content; text-align: center; display: flex; justify-content: space-between;">
   <button class="transparent-button" onclick="location.href='word.jsp'">
        <img src="word.png" alt="단어" style="width: 100px; height: 100px;">
        <p style="color:#026873; font-size:20px; font-weight:700;">단어 맞히기</p>
    </button>

    <button class="transparent-button" onclick="location.href='sentence.jsp'">
        <img src="sentence.png" alt="문장" style="width: 100px; height: 100px;">
        <p style="color:#026873; font-size:20px; font-weight:700;">문장 완성하기</p>
    </button>

    <button class="transparent-button" onclick="location.href='blank.jsp'">
        <img src="blank.png" alt="빈칸" style="width: 100px; height: 100px;">
        <p style="color:#026873; font-size:20px; font-weight:700;">속담 빈칸 채우기</p>
    </button>
</div>

    
    <%-- 세션이 없으면 로그인 페이지로 이동 --%>
    <% if(session.getAttribute("id") == null) { %>
        <script>
            alert("로그인이 필요합니다.");
            location.href='../main/login.jsp';
        </script>
    <% } %>
</body>
</html>
