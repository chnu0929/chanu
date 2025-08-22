<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>count</title>
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
	section div{
		display: flex;
		justify-content: center;
	}
	td{
		text-align:center;
	}

</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2> 사용일수집계</h2>
		<div>
			<table border="1">
				<tr>
					<td>고객번호</td>
					<td>예약날짜</td>
					<td>레인번호</td>
					<td>이름</td>
				</tr>
				<%
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					
					try{
						String sql = "select c.cust_no, r.resv_date, r.lane_no, c.cust_name " +
								"from tbl_cust_202301 c " +
								"join tbl_resv_202301 r " +
								"on c.cust_no = r.cust_no " +
								"order by c.cust_no";
						pstmt = con.prepareStatement(sql);
						rs = pstmt.executeQuery();
						while(rs.next()){
							%>
								<tr>
									<td><%=rs.getString(1) %></td>
									<td><%=rs.getString(2) %></td>
									<td><%=rs.getString(3) %></td>
									<td><%=rs.getString(4) %></td>
								</tr>
							<%
						}
					}catch(Exception e){
						e.printStackTrace();
					}
				
				%>
			</table>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>