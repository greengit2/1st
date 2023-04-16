<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="resources/memberin.css" rel="stylesheet" />
<script type="text/javascript">
function Validation(){
	
    var idRegex = /^[a-zA-Z0-9]{4,12}$/; //id와 pwassword 유효성 검사 정규식
    var nameRegex = /^[가-힣]{2,15}$/; //이름 유효성검사 정규식
    var objId = document.getElementById("id"); //아이디
    var objPwd = document.getElementById("pwd"); //비밀번호
    var objName = document.getElementById("name"); //이름
    
    // ================ ID 유효성검사 ================ //
    
    if(objId.value==''){
        alert("ID를 입력해주세요.");
        return false;
    }
    if(!idRegex.test(objId.value)){ //아이디 유효성검사
        alert("ID는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");        
        return false;
    }
    
    // ================ PASSWORD 유효성검사 ===============//
    if(objPwd.value==''){ // 비밀번호 입력여부 검사
        alert("Password를 입력해주세요.");
        return false;
    }
    if(!idRegex.test(objPwd.value)){ //패스워드 유효성검사
        alert("Password는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
        return false;
    }

    // ================ 이름 유효성검사 ================ //        
    if(objName.value ==''){
        alert("이름을 입력해주세요.");
        return false;
    }
    if(!nameRegex.test(objName.value)){
        alert("특수문자,영어,숫자는 사용할수 없습니다. 한글만 입력하여주세요.");
        return false;
    }
    

}
</script>
<head>
<meta charset="utf-8"> 
    <body>
      <form action="/member" method="post" onsubmit="return Validation();">
    	 <div class='bold-line'></div>
		<div class='container'>
 	 <div class='window'>
    <div class='overlay'></div>
    <div class='content'>
      <div class='welcome'>회원가입</div>
   <!--    <div class='subtitle'>We're almost done. Before using our services you need to create an account.</div> -->
      <div class='input-fields'>
        <input type='text' placeholder='Username' name="id" id="id"class='input-line full-width'></input>
          <input type='password' placeholder='Password' name="password"id="pwd" class='input-line full-width'></input>
        <input type='text' placeholder='Nickname' name="name" id="name" class='input-line full-width'></input>
      
      </div>
     <!--  <div class='spacing'>or continue with <span class='highlight'>Facebook</span></div> -->
      <div>
      <input type="submit" value="가입하기" class='ghost-round full-width' onclick= "Validation()">
      </div>
    </div>
  </div>
</div>
       
      </form> 
    </body>
</html>



