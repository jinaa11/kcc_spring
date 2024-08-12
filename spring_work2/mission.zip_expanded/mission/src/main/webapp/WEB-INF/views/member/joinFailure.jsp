<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 실패</title>
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
            <h1 class="text-danger">회원가입 실패</h1>
            <p class="lead">다시 시도해 주세요.</p>
            <a href="/member/join" class="btn btn-danger">회원가입 다시 하기</a>
        </div>
    </div>
</body>
</html>
