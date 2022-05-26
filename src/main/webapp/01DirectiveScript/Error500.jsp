<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - errorPage, isErrorPage 속성</title>
</head>
<body>
<%
//첫 실행시에는 파라미터가 없는 상태이므로 NumberFormatException이 발생된다.
//실행 후 주소입력줄에서 파일명 뒤에 ?age=30 과 같이 작성하면 예외는 사라진다.
//에러가 발생하면 외부에 노출이 되므로 이 방식은 좋은 방식이 아니다.
int myAge = Integer.parseInt(request.getParameter("age")) + 10;
out.println("10년 후 당신의 나이는 "+ myAge + "입니다.");
%>
</body>
</html>	