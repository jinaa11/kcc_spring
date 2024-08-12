<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .login-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2 class="text-center">로그인</h2>
        <form action="/member/login" method="post">
            <div class="form-group">
                <label for="userId">아이디:</label>
                <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호:</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">로그인</button>
        </form>
    </div>

    <!-- 로그인 실패 시 모달창 -->
    <div class="modal fade" id="loginErrorModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">로그인 실패</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    아이디 혹은 비밀번호가 일치하지 않습니다.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- 모달 창 표시 스크립트 -->
    <script>
        $(document).ready(function() {
            // loginError 값을 JSP에서 직접 사용
            const loginError = "${loginError}";
           
            console.log("loginError:", loginError);
            
            // loginError가 true일 경우 모달 표시
            if (loginError.trim() === 'true') {
                console.log("모달창을 표시합니다.");
                $('#loginErrorModal').modal('show');
            }
        });
    </script>
</body>
</html>
