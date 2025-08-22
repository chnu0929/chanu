function checkResv() {
	if (document.frm.resv_no.value == '') {
		alert("예약번호가 입력되지 않았습니다.");
		document.frm.resv_no.focus();
	} else if (document.frm.cust_no.value == '') {
		alert("고객번호가 입력되지 않았습니다.");
		document.frm.cust_no.focus();
	} else if (document.frm.resv_date.value == '') {
		alert("예약일지가 입력되지 않았습니다.");
		document.frm.resv_date.focus();
	} else if (document.frm.court_no.value == '') {
		alert("코트번호가 입력되지 않았습니다.");
		document.frm.court_no.focus();
	} else{
		alert("코트예약정보가 등록되었습니다.");
		document.frm.submit();
	}
}

function checkRest() {
	alert("정보를 지우고 다시 입력합니다.")
	document.frm.reset();
}