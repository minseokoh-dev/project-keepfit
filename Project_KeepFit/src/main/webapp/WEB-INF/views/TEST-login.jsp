<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>TEST-login</title>

<meta name="google-signin-client_id" content="772327138445-78pbueovgk0989d6mbrfeu2plpks2t96.apps.googleusercontent.com">
	
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>

<script type="text/javascript">

/* ���۰��� �α׾ƿ� */
function signOut() {
	var auth2 = gapi.auth2.getAuthInstance();
	auth2.signOut().then(function() {
		setTimeout(function(){
			location.href="http://localhost:8080/Project_KeepFit/index.jsp"
		},1000);
		console.log('�α׾ƿ� �Ǿ����ϴ�.');
		alert('�α׾ƿ� �Ǿ����ϴ�.');
	});
	auth2.disconnect();
}
</script>

</head>
<body>


<hr/><hr/><hr/><hr/>

<c:set var="logged" value="${logged}" />

<c:choose>
    <c:when test="${logged eq '1'}">
        <h1 align="center"> ${member.member_email} �� : �α��� TEST ����!! </h1>
        <a href='#' onclick="signOut();">���� �α׾ƿ�</a>
    </c:when>

    <c:when test="${logged eq '0'}">
         <h1 align="center"> ${member.member_email} �� : email �Ǵ� pw �� ��ġ���� �ʽ��ϴ�.. </h1>
    </c:when>
    <c:otherwise>
        ����� �����ϴ� �̤�
    </c:otherwise>
</c:choose>


<hr/><hr/><hr/><hr/>

</body>
</html>