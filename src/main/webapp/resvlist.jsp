<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>resvlist</title>
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
		padding: 20px;
	}
	section form{
		display: flex;
		justify-content: center;
	}

</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2> 코트예약조회</h2>
		<form name="sfrm" method="post" action="list_action.jsp">
			<table border="1">
				<tr>
					<td>고객번호를 입력하시오.</td>
					<td><input type="text" name="cust_no"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center">
						<input type="button" value="코트예약조회" onclick="checkCust()">
						<input type="button" value="홈으로" onclick="window.location.href='index.jsp'">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>