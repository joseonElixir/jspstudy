<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function namecheck(){
	var str = document.createFolder.foldername.value;
	if(str==null|| str=='null'){
		window.alert('폴더의 이름을 입력하세요.');
		return false;
	}else if(str.indexOf(' ')!=-1){
		window.alert('폴더명에 공백을 사용할 수 없습니다.');
		return false;		
	}
	
}
</script>
</head>
<body>
<form name="createFolder"  action="createFolder_ok.jsp" onsubmit="return namecheck();">
<fieldset>
	<legend>폴더 만들기</legend>
	<label> 폴더</label>
	<input type="text" name="foldername" required="required">
	<input type = "submit" value="폴더생성">
</fieldset>

</form>
</body>
</html>