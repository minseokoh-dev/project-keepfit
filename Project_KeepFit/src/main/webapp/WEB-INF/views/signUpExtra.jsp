<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추가정보|KeepFit</title>
<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous">
	
</script>
<script src="resources/js/signUp.js" type="text/javascript"></script>
<!-- Bootstrap -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<script src="resources/js/bootstrap.js"></script>


</head>
<body>
	<div
		style="font-size: 30px; height: 150px; line-height: 150px; text-align: center;">
		추가 정보 입력 화면</div>
	<form class="form-group-lg" action="signup.do" method="get" style="">
		<input type="hidden" name="member_email" value="${member.member_email}"> 
		<input type="hidden" name="member_pass" value="${member.member_pass}">
		<input type="hidden" name="member_channel" value="${member.member_channel}">

		<div style="text-align: center">
			<input class="input-lg " name="member_nick" type="text"
				placeholder="닉네임을 입력해주세요" width="100%">
		</div>
		<div style="text-align: center; margin: 20px;">
			<label for="weight1">현재 몸무게 :</label> <input type="number"
				id="weight1" name="now_weight" min="10" max="200"> <b>&nbsp;
				~ &nbsp;</b> <label for="weight2">목표 몸무게 :</label> <input type="number"
				id="weight2" name="goal_weight" min="10" max="200">
		</div>
		<div style="text-align: center">
			<input class="input-lg " name="sport1" type="text"
				placeholder="운동 선택 1" width="100%">
		</div>
		<div style="text-align: center">
			<input class="input-lg " name="sport2" type="text"
				placeholder="운동 선택 2" width="100%">
		</div>
		<div style="text-align: center">
			<input class="input-lg " name="sport3" type="text"
				placeholder="운동 선택 3" width="100%">				
		</div>
		<div style="text-align: center">
			<input class="btn btn-lg btn-primary" type="submit" name="submit"
				value="가입 완료"><br>
		</div>

	</form>
</body>
</html>