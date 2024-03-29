<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="sign-box login-box">
	<div class="login-logo">
		<a href="signMain.do">회원가입</a>
	</div>
	<!-- /.login-logo -->
	<div class="card">
		<div class="card-body">
			<form id="signForm" method="post">
				<div class="form-group">
					<label for="email">이메일</label> <input type="email"
						class="form-control" id="bizEmail" name="bizEmail"
						placeholder="이메일" required>
				</div>
				<div class="form-group">
					<label for="password">비밀번호</label> <input type="password"
						class="form-control" id="password" name="password" placeholder="비밀번호"
						required>
				</div>
				<div class="form-group">
					<label for="userNm">이름</label> <input type="text"
						class="form-control" id="userNm" name="userNm"
						placeholder="이름" required>
				</div>
				<div class="form-group">
					<label for="bizNum">사업자 번호</label> <input type="text"
						class="form-control" id="bizNum" name="bizNum"
						placeholder="사업자번호" required>
				</div>
				<div class="form-group">
					<label for="bizNm">회사명</label> <input type="text"
						class="form-control" id="bizNm" name="bizNm"
						placeholder="회사명" required>
				</div>
				<div class="form-group">
					<label for="bizType">업태</label> <input type="text"
						class="form-control" id="bizType" name="bizType"
						placeholder="업태" required>
				</div>
				<div class="form-group">
					<label for="bizItem">업종</label> <input type="text"
						class="form-control" id="bizItem" name="bizItem"
						placeholder="업종" required>
				</div>
				<div class="form-group">
					<label for="bizTel">전화번호</label> <input type="text"
						class="form-control" id="bizTel" name="bizTel"
						placeholder="전화번호" required>
				</div>
				<button type="submit" class="btn btn-primary">완료</button>
			</form>
		</div>
		<!-- /.login-card-body -->
	</div>
</div>
<!-- /.login-box -->

<script>
	$(function() {
		$('#signForm').validate({
			submitHandler : function() {
				var form = document.querySelector("#signForm");
				form.action = 'signUp.do';
				form.submit();
			},
			rules : {
				password : {
					required : true,
					minlength : 5
				},
				userNm : {
					required : true
				},
				bizNum : {
					required : true
				},
				bizNm : {
					required : true
				},
				bizType : {
					required : true
				},
				bizItem : {
					required : true
				},
				bizEmail : {
					required : true,
					email : true,
				},
				bizTel : {
					required : true
				}
				
			},
			messages : {
				password : {
					required : "비밀번호를 입력해 주세요",
					minlength : "5자리 이상 입력해 주세요."
				},
				userNm : {
					required :  "이름을 입력해 주세요."
				},
				bizNum : {
					required :  "사업자 번호를 입력해 주세요."
				},
				bizNm : {
					required :  "회사명을 입력해 주세요."
				},
				bizType : {
					required :  "업태를 입력해 주세요."
				},
				bizItem : {
					required :  "업종를 입력해 주세요."
				},
				bizEmail : {
					required : "이메일을 입력해 주세요.",
					email : "이메일 규격이 아닙니다."
				},
				bizTel : {
					required : "전화번호를 입력해 주세요."
				}
			},
			errorElement : 'span',
			errorPlacement : function(error, element) {
				error.addClass('invalid-feedback');
				element.closest('.form-group').append(error);
			},
			highlight : function(element, errorClass,
					validClass) {
				$(element).addClass('is-invalid');
			},
			unhighlight : function(element, errorClass,
					validClass) {
				$(element).removeClass('is-invalid');
			}
		});
	});
</script>
