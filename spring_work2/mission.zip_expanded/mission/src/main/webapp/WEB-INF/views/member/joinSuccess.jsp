<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 완료</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body { background-color: #f8f9fa; }
        .container { margin-top: 50px; max-width: 600px; }
        .result-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="result-container">
            <h1 class="text-success">회원가입 완료</h1>
            <p class="lead">${member.name}님, 환영합니다!</p>
            <a href="/member/login" class="btn btn-primary">로그인 페이지로 가기</a>
        </div>
    </div>
</body>
</html>
