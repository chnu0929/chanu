<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PC방 좌석 예약</title>
<style>
   * {
	margin: 0;
	padding: 0;
}

section {
	width: 100%;
	height: calc(100vh - 160px);
	background-color: lightgray;
}

section h2 {
	text-align: center;
	padding: 10px;
}

section div {
	padding: 10px;
}

section p {
	padding-bottom: 10px;
}

section b {
	display: block;
	padding-bottom: 10px;
}

form {
	display: flex;
	justify-content: center;
}

table td {
	text-align: center;
}
</style>
</head>
<body>
    <jsp:include page="header.jsp"/>
    <jsp:include page="nav.jsp"/>
    <section>
        <h2>PC방 좌석 예약 등록</h2>
        <form action="insertResv.jsp" method="post">
            <table border="1">
                <tr>
                    <td>예약번호</td>
                    <td><input type="text" name="resv_no"></td>
                    <td>예)20250001</td>
                </tr>
                <tr>
                    <td>이용자번호</td>
                    <td><input type="text" name="user_no"></td>
                    <td>예)1001</td>
                </tr>
                <tr>
                    <td>예약일자</td>
                    <td><input type="text" name="resv_date"></td>
                    <td>예)20250822</td>
                </tr>
                <tr>
                    <td>레인선택</td>
                    <td> 
                    <select name="lane">
                    <option value="">레인 선택</option>
                    <option value="1">1번 레인</option>
                    <option value="2">2번 레인</option>
                    <option value="3">3번 레인</option>
                    </select> 
                    </td>
                    <td>선택하시요</td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:center;">
                        <input type="submit" value="예약등록">
                        <input type="reset" value="다시쓰기">
                    </td>
                </tr>
            </table>
        </form>
    </section>
    <jsp:include page="footer.jsp"/>
</body>
</html>
