<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style>
	*{
		margin : 0;
		padding : 0;
	}
	
	
	section{
		width: 100%;
		height: calc(100vh - 160px);
		background-color: lightgray;
	}
	section h2{
		text-align: center;
		padding: 10px;
	}
	section div{
		padding: 10px;
	}
	section p{
		padding-bottom: 10px;
	}
	section b{
		display: block;
		padding-bottom: 10px;
	}

</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2> 과정평가형 자격 CBQ</h2>
		<div>
		<p>
			국가직무능력표준(NCS:National Copentency Standards)으로 설계된 교육·훈련 과정을 충실히 이수한 후 내,외부 평가를 거쳐 일정 합격 기준을 충족하는
			교육·훈련생에게 국가기술자격을 부여하는 제도 
		</p>
		<b>산업형장 중심의 교육 평가로 더 커지는 능력!</b>
		<b>알고 있는 것에 할 수 있는 것을 더하는</b>
		<b>과정평가형 자격은</b>
		<b>현장 중심형 인재육성을 지원합니다.</b>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>