create table tbl_cust_202301(
	cust_no char(4) not null primary key, --고객번호
	cust_name varchar2(14),	--고객이름
	cust_tele varchar2(11)	--전화번호
);

create table tbl_resv_202301(
	resv_no char(8) not null primary key,	--예약번호
	resv_date char(8),	--예약날짜
	lane_no char(4),	--레인번호
	cust_no char(4)	--고객번호
);

-------------------------------------------------------------------------------------------------

insert into TBL_CUST_202301 values('1001','김회원','01011112222');
insert into TBL_CUST_202301 values('1002','백회원','01011113333');
insert into TBL_CUST_202301 values('1003','채회원','01011114444');
insert into TBL_CUST_202301 values('1004','임회원','01011115555');
insert into TBL_CUST_202301 values('1005','한회원','01011116666');




insert into TBL_RESV_202301 values('20070001','20250101','s1','1005');
insert into TBL_RESV_202301 values('20070002','20250101','s2','1004');
insert into TBL_RESV_202301 values('20070003','20250101','s3','1003');
insert into TBL_RESV_202301 values('20070004','20250101','s4','1002');
insert into TBL_RESV_202301 values('20070005','20250101','s5','1001');

select * from TBL_RESV_202301;
drop table tbl_resv_202301;
drop table tnl_court_202301;
drop table tbl_cust_202301;


select c.cust_no, r.resv_date, r.lane_no, c.cust_name
from tbl_cust_202301 c
join tbl_resv_202301 r
on c.cust_no = r.cust_no
order by c.cust_no;