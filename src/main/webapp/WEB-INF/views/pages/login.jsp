<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>로그인</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .flex-box {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background: #f1f1f1;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
            text-align: center;
            width: 500px;
            max-width: 100%;
        }
        .form-group {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        .form-group label {
            width: 120px; /* 라벨 크기 설정 */
            text-align: right; /* 오른쪽 정렬 */
            margin-right: 10px; /* 입력 필드와 간격 추가 */
        }


        .form-group input {
            flex: 1; /* 입력 필드가 남은 공간을 채우도록 설정 */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>
<body>

<% if (request.getAttribute("error") != null) { %>
<p style="color: red;"><%= request.getAttribute("error") %></p>
<% } %>
<div class="container flex-box">
    <form action="/login" method="post" class="border">
        <h2>로그인</h2>
        <div class="form-group">
            <label for="username">아이디:  </label>
            <input type="text" id="username" name="username" required/><br>
        </div>
        <div class="form-group">
            <label for="password">비밀번호:  </label>
            <input type="password" id="password" name="password" required/><br>
        </div>
        <button type="submit">로그인</button>
        <a href="/register">회원가입</a>
    </form>
</div>


</body>
</html>
